## Use to run mysql db docker image, optional if you're not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
#Create Databases
CREATE DATABASE sfrs_dev;
CREATE DATABASE sfrs_prod;

#Create database service accounts
CREATE USER 'sfrs_dev_user'@'localhost' IDENTIFIED BY 'ravi';
CREATE USER 'sfrs_prod_user'@'localhost' IDENTIFIED BY 'ravi';
CREATE USER 'sfrs_dev_user'@'%' IDENTIFIED BY 'ravi';
CREATE USER 'sfrs_prod_user'@'%' IDENTIFIED BY 'ravi';

#Database grants
GRANT CREATE ON sfrs_dev.* to 'sfrs_dev_user'@'localhost';
GRANT SELECT ON sfrs_dev.* to 'sfrs_dev_user'@'localhost';
GRANT INSERT ON sfrs_dev.* to 'sfrs_dev_user'@'localhost';
GRANT DELETE ON sfrs_dev.* to 'sfrs_dev_user'@'localhost';
GRANT UPDATE ON sfrs_dev.* to 'sfrs_dev_user'@'localhost';
GRANT CREATE ON sfrs_prod.* to 'sfrs_prd_user'@'localhost';
GRANT SELECT ON sfrs_prod.* to 'sfrs_prod_user'@'localhost';
GRANT INSERT ON sfrs_prod.* to 'sfrs_prod_user'@'localhost';
GRANT DELETE ON sfrs_prod.* to 'sfrs_prod_user'@'localhost';
GRANT UPDATE ON sfrs_prod.* to 'sfrs_prod_user'@'localhost';
GRANT SELECT ON sfrs_dev.* to 'sfrs_dev_user'@'%';
GRANT INSERT ON sfrs_dev.* to 'sfrs_dev_user'@'%';
GRANT DELETE ON sfrs_dev.* to 'sfrs_dev_user'@'%';
GRANT UPDATE ON sfrs_dev.* to 'sfrs_dev_user'@'%';
GRANT SELECT ON sfrs_prod.* to 'sfrs_prod_user'@'%';
GRANT INSERT ON sfrs_prod.* to 'sfrs_prod_user'@'%';
GRANT DELETE ON sfrs_prod.* to 'sfrs_prod_user'@'%';
GRANT UPDATE ON sfrs_prod.* to 'sfrs_prod_user'@'%';