======================== Đối với database ==========================
    - Import file cơ sở dữ liệu "database/xdptpm_nhom8" vào MySQL (có thể sử dụng XAMPP)


======================== Đối với backend ==========================
1.Cài đặt Node.js >= 18: https://nodejs.org/
    - Tải và cài đặt từ trang web của Node.js
    - Kiểm tra Node.js đã được cài: Chạy câu lệnh terminal "node --version" kết quả "v**.**.*"

2.Thiết lập file config kết nối backend với database
    - Chạy XAMPP localhost start apache và mysql
. Chỉnh sửa thông số kết nối với host server MySQL ở "backend/src/config/config.js"

3.Triển khai backend
    - Sử dụng VS code mở folder "server/backend" rồi sử dụng terminal ( phím tắt: Ctrl + `)
    - Chạy câu lệnh terminal "npm install" và đợi tải về hoàn tất các thư viện 
    - Triển khai backend chạy câu lệnh terminal "npm start"

4.Test hoạt động: http://localhost:4444/
    - Xuất hiện: {code: 200, message: "ok"} là server backend đang được triển khai