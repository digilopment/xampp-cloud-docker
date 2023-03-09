FROM mysql:5
#FROM mysql:latest

# Copy custom configuration file to container
COPY my.cnf /etc/mysql/conf.d/

# Expose port 3306 for MySQL
EXPOSE 3306

# Start MySQL server
CMD ["mysqld"]

