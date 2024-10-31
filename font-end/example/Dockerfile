# Dockerfile สำหรับ Nuxt.js
FROM node:18

# ตั้งค่าทำงานในไดเรกทอรี /usr/src/app
WORKDIR /usr/src/app

# คัดลอกไฟล์ package.json และ package-lock.json เข้าไปใน container
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกโค้ดทั้งหมดของ Nuxt.js เข้า container
COPY . .

# สร้างโปรเจกต์ Nuxt.js
RUN npm run build

# เปิดพอร์ต 3000
EXPOSE 3000

# รัน Nuxt.js
CMD ["npm", "run", "dev"]
