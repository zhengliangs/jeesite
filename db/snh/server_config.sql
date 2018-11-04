/* 服务器配置安装过程  */

fdisk -l 
fdisk /dev/xvdb              #n，p，1，两次回车，wq
fdisk -l 
mkfs.ext3 /dev/xvdb1
echo /dev/xvdb1 /mnt ext4 defaults 0 0 >> /etc/fstab
mount /dev/xvdb1 /mnt
df -h 

vi /etc/fstab
tmpfs  /dev/shm  tmpfs  defaults,size=2G  0 0

umount /dev/shm/
mount
df -Th /dev/shm/ 
  
/* 查看Linux自带的JDK是否已安装 */
java –version

/* 查看jdk信息 */
rpm -qa|grep java

/* 卸载OpenJDK */
rpm -e --nodeps tzdata-java-2012c-1.el6.noarch
rpm -e --nodeps java-1.7.0-openjdk-1.7.0.45-1.45.1.11.1.el6.x86_64

/* 新建java安装目录 */
mkdir /usr/java
tar -zxvf  jdk-7u71-linux-i586.tar.gz

/* 加入java环境变量 */
vi /etc/profile
export JAVA_HOME=/usr/java/jdk1.7.0_71
export CLASSPATH=.:%JAVA_HOME%/lib/dt.jar:%JAVA_HOME%/lib/tools.jar
export PATH=$PATH:$JAVA_HOME/bin

/* 使文件立即生效 */
source /etc/profile


/* 检测是否安装成功 */
java -version

/* 将下载好的tomcat.tar.gz上传到/var/local下面 */
tar -zxvf  apache-tomcat-7.0.57.tar.gz


/* 将上传的tomcat移到一个目录下并改名称 */
mv apache-tomcat-7.0.57 /
mv apache-tomcat-7.0.57 tomcat7

/* 启动tomcat */
./startup.sh 


/* 无法访问时，关闭防火墙 */
service iptables stop

/* 设置开机自启动 */
vi /etc/rs.local 
JAVA_HOME=/usr/java/jdk1.7.0_71
export JAVA_HOME
/tomcat7/bin/startup.sh

/* 修改机器名 */
vi /etc/sysconfig/network
/etc/hosts

/* free命令查看：*/
free -m

/* 使用dd命令创建一个swap分区 */
dd if=/dev/zero of=/home/swap bs=1024 count=1048576


/* 格式化swap分区 */
mkswap /home/swap

/* 把格式化后的文件分区设置为swap分区 */
swapon /home/swap

/* swap分区自动挂载 */
vi /etc/fstab
echo /home/swap swap swap default 0 0 >> /etc/fstab

/* 安装Oracle所需的依赖包 */
yum -y install  gcc gcc-c++ make binutils compat-libstdc++-33 glibc glibc-devel libaio libaio-devel libgcc libstdc++ libstdc++-devel unixODBC unixODBC-devel sysstat ksh

/* 创建用户和组 */
groupadd -g 200 oinstall  #添加oinstall组，组的id为200
groupadd -g 201 dba       #添加dba组，组的id为201
useradd -u 440 -g oinstall -G dba oracle #添加用户oracle,并specified它的id为440.
passwd oracle             #输入oracle用户的密码
id oracle                 #查看用户id和所属组

/* 关闭SELINUX( */
vim /etc/selinux/config
setenforce 0              #立即关闭SELINUX

/* 解压 */
su - u oracle
把下面两个文件上传到CentOS7-64bits服务器的/home/oracle目录下
linux.x64_11gR2_database_1of2.zip
linux.x64_11gR2_database_2of2.zip
解压缩到oracle目录下
unzip linux.x64_11gR2_database_1of2.zip -d /home/oracle
unzip linux.x64_11gR2_database_2of2.zip -d /home/oracle

/* 修改db_install.rsp文件 */
vi db_install.rsp


/* 安装 */
./runInstaller -silent -responseFile /home/oracle/database/response/db_install.rsp

/* 出现[FATAL] [INS-32012] Unable to create directory.错误提示 */
chown oracle /opt

/* 再运行出现[FATAL] [INS-13013] Target environment do not meet some mandatory requirements. */
./runInstaller -silent -ignorePrereq -ignoreSysPrereqs -responseFile /home/oracle/database/response/db_install.rsp

/* 按照提示以root身份登录CentOS7系统 */
/opt/oraInventory/orainstRoot.sh
/opt/oracle/product/11.2.0/db_1/root.sh

/* oracle身份登录CentOS7系统，设置环境变量 */
vi ~/.bash_profile
追加下面的配置信息
export PATH
export ORACLE_BASE=/opt/oracle
export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/db_1
export PATH=$PATH:$ORACLE_HOME/bin
export ORACLE_SID=orcl11g

export TNS_ADMIN=$ORACLE_HOME/network/admin
使用下面命令使环境变量生效
source ~/.bash_profile

/* tnsnames.ora */
vi tnsnames.ora

/* 建库 */
dbca -silent -createDatabase -templateName General_Purpose.dbc -gdbname ilearn -sid ilearn -responseFile NO_VALUE -characterSet ZHS16GBK -memoryPercentage 30 -emConfiguration LOCAL -datafileDestination /mnt/oracledb -sysPassword fDqz3poAIm -systemPassword fDqz3poAIm -dbsnmpPassword fDqz3poAIm


/* 验证Oracle安装是否成功 */
su - u oracle
sqlplus "/as sysdba"  
select * from tabs;

/* listener.ora */
vi listener.ora
lsnrctl reload

/* 附录 */
yum search  command-name  #查找命令所在的包
yum install package-name  #安装包
