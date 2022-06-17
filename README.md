# Database

1. Jalankan web server seperti XAMPP/MAMP/LAMP/WAMP
2. Pada XAMPP jalankan apache dan MySQL Database
3. Jika menggunakan XAMPP buka url http://localhost/phpmyadmin
4. Buat database dengan nama article
5. Lalu import file sql yang terlampir

# Back-End

1. Install NodeJS
2. Sesuaikan konfigurasi database di /library/database.js, sesuai konfigurasi database di XAMPP
3. Jalankan terminal/cmd di direktory penyimpanan folder article
4. Jalankan perintah npm run start

# Front-End

1. Persiapkan web server seperti XAMPP/MAMP/LAMP/WAMP (jika belum)
2. Salin folder article-front ke dalam directori C://xampp/htdocs/
3. Jalankan web server apache dan MySQL Database (jika belum)
4. Sesuaikan base url, jika menggunakan xampp secara default maka base url nya adalah http://localhost/article
5. Sesuai base api url yang merupakan url back-end di /application/helpers/article_helper.php pada fungsi apiURL, seharusnya adalah http://localhost:3000/article
6. Buka url http://localhost/article-front
