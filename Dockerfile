FROM node:12

# Buat direktori aplikasi didalam docker
WORKDIR /usr/src/app

# Menyalin dependencies aplikasi kedalam docker
COPY package*.json ./

# Instalasi dependencies
RUN npm install

# Menyalin file aplikasinya
COPY . .

# define port
EXPOSE 2000

# menjalankan aplikasi kita
CMD [ "node","index.js" ]