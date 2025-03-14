# Sử dụng Python 3.7 (hoặc bản phù hợp với dự án)
FROM python:3.7

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy toàn bộ dự án vào container
COPY . /app

# Cài đặt thư viện từ requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Mở cổng 8000 để Django chạy trên đó
EXPOSE 8000

# Chạy lệnh để khởi động Django khi container start
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
