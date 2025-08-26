FROM tomcat:10.1-jdk17
# Xóa app mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Chỉ copy thư mục web (nguyên vẹn cấu trúc bạn đang có) lên ROOT/
COPY web/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
