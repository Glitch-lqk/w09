# 1. Chọn Base Image: Node.js bản nhẹ
FROM node:18-alpine

# 2. Tạo thư mục làm việc
WORKDIR /app

# 3. Copy file thư viện trước
COPY package*.json ./

# 4. Cài thư viện
RUN npm install --production

# 5. Copy toàn bộ code vào
COPY . .

# 6. Khai báo port (chỉ để document)
EXPOSE 3000

# 7. Lệnh chạy app
CMD ["npm", "start"]
