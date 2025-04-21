# Sử dụng image Python chính thức
FROM python:3.9-slim

# Đặt thư mục làm việc trong container
WORKDIR /app

# Sao chép file requirements.txt vào container
COPY requirements.txt .

# Cài đặt các thư viện Python từ requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép mã nguồn của ứng dụng vào container
COPY app.py .

# Mở cổng 5000 cho ứng dụng
EXPOSE 5005

# Lệnh để chạy ứng dụng Flask
CMD ["python", "app.py"]

