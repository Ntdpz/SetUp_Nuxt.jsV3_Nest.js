# Dockerfile สำหรับ Nest.js
FROM node:18

# ตั้งค่าทำงานในไดเรกทอรี /usr/src/app
WORKDIR /usr/src/app

# คัดลอกไฟล์ package.json และ package-lock.json เข้าไปใน container
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกโค้ดทั้งหมดของ Nest.js เข้า container
COPY . .

# สร้างโปรเจกต์ Nest.js 
RUN npm run build

# เปิดพอร์ต 4000
EXPOSE 4000

# รัน Nest.js
CMD ["npm", "run", "start:dev"]
