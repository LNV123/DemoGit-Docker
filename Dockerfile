# Sử dụng image Nginx siêu nhẹ chạy trên Alpine Linux
FROM nginx:alpine

# Copy toàn bộ nội dung trong thư mục hiện tại vào thư mục phục vụ web của Nginx
COPY . /usr/share/nginx/html

# Mở cổng 80 cho các yêu cầu HTTP bên ngoài
EXPOSE 80

# Khởi chạy Nginx ở chế độ foreground (bắt buộc trong Docker container)
CMD ["nginx", "-g", "daemon off;"]
