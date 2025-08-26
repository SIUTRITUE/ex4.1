FROM tomcat:10.1-jdk17

# Xóa app mẫu của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR đã build vào ROOT.war (chạy ở path "/")
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Port Tomcat bên trong container
EXPOSE 8080

# Mặc định image tomcat đã có CMD start catalina rồi
