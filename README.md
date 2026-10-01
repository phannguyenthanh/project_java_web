# Dự Án Website Thương Mại Điện Tử Xe Phân Khối Lớn (PKL)

> Website thương mại điện tử chuyên kinh doanh xe máy phân khối lớn (Moto PKL) xây dựng trên nền tảng Java Web (JSP, Servlet, JDBC, MVC).

---

## 📌 Giới thiệu dự án

Dự án là một hệ sinh thái thương mại điện tử trực tuyến chuyên về **kinh doanh xe máy phân khối lớn (Moto PKL)**. Hệ thống cho phép khách hàng tra cứu, xem thông số kỹ thuật xe chi tiết, đặt mua xe trực tuyến; đồng thời cung cấp giao diện quản trị viên (Admin) đầy đủ tính năng để quản lý sản phẩm, danh mục hãng xe, phân loại xe, đơn đặt hàng và người dùng.

---

## 🚀 Công nghệ sử dụng

* **Ngôn ngữ lập trình:** Java (JDK 1.8 / Java SE 8)
* **Kiến trúc ứng dụng:** MVC (Model - View - Controller)
* **Web Framework / Nền tảng:** Java Servlet 3.x, JSP (JavaServer Pages)
* **Cơ sở dữ liệu:** MySQL / MariaDB (Database name: `xe_pkl`)
* **Thư viện kết nối CSDL:** JDBC (`com.mysql.jdbc.Driver`)
* **Frontend:** HTML5, CSS3, JavaScript, Bootstrap, jQuery, Font Awesome, Owl Carousel
* **Xử lý upload ảnh:** Apache Commons FileUpload (`commons-fileupload-1.4.jar`), Apache Commons IO (`commons-io-2.6.jar`)
* **Web Server:** Apache Tomcat 7.x / 8.x / 9.x
* **Công cụ xây dựng & IDE:** NetBeans IDE, Apache Ant

---

## 📂 Cấu trúc thư mục

```text
project_java_web/
├── build.xml                           # Kịch bản build Ant
├── nbproject/                          # Cấu hình dự án NetBeans
├── xe_pkl.sql                          # File CSDL MySQL
├── src/
│   ├── conf/                           # File cấu hình bổ sung
│   └── java/
│       ├── CSDL/
│       │   └── DB.java                 # Kết nối CSDL MySQL qua JDBC
│       ├── Models/                     # Các lớp thực thể (Entity Models)
│       │   ├── Products.java           # Xe PKL
│       │   ├── Brands.java             # Hãng xe (Yamaha, Honda, Ducati...)
│       │   ├── Types.java              # Loại xe (Sportbike, Nakedbike...)
│       │   ├── Bills.java              # Đơn hàng
│       │   ├── Bill_Detail.java        # Chi tiết đơn hàng
│       │   ├── Carts.java              # Giỏ hàng
│       │   └── Users.java              # Người dùng
│       ├── Controller/                 # Các hàm xử lý truy vấn dữ liệu
│       │   ├── products.java
│       │   ├── brands.java
│       │   ├── types.java
│       │   ├── bills.java
│       │   └── users.java
│       └── CRUD/                       # Các Servlet tiếp nhận và xử lý request HTTP
│           ├── login.java, logout.java
│           ├── products_add.java, products_edit.java, products_delete.java
│           ├── carts_add.java, carts_delete.java, carts_transport.java
│           └── ...
└── web/
    ├── WEB-INF/
    │   └── lib/                        # Thư viện JAR (commons-fileupload, commons-io)
    ├── asset/                          # Giao diện phía Khách hàng (Client)
    │   ├── index.jsp                   # Trang chủ
    │   ├── product.jsp                 # Danh sách xe
    │   ├── product-details.jsp         # Chi tiết sản phẩm
    │   ├── cart.jsp                    # Giỏ hàng
    │   ├── payment.jsp                 # Đặt hàng & thanh toán
    │   ├── login.jsp, register.jsp     # Đăng nhập, đăng ký
    │   └── ...
    ├── admin/                          # Giao diện phía Quản trị viên (Admin)
    │   ├── index.jsp                   # Bảng điều khiển (Dashboard)
    │   ├── products.jsp                # Quản lý sản phẩm
    │   ├── brand.jsp                   # Quản lý hãng xe
    │   ├── type.jsp                    # Quản lý phân loại xe
    │   ├── carts.jsp                   # Quản lý đơn hàng
    │   ├── users.jsp                   # Quản lý tài khoản
    │   └── ...
    ├── imager/                         # Thư mục lưu ảnh sản phẩm
    └── imager_user/                    # Thư mục lưu ảnh đại diện người dùng
```

---

## 🛠️ Hướng dẫn cài đặt & Khởi chạy

### 1. Chuẩn bị môi trường
* **JDK:** Java Development Kit 8 (JDK 1.8).
* **IDE:** NetBeans IDE 8.2 trở lên (hoặc Eclipse / IntelliJ có hỗ trợ Ant & Tomcat).
* **Database:** XAMPP, WampServer hoặc MySQL Server cục bộ.
* **Server:** Apache Tomcat 8.x hoặc 9.x.

### 2. Cài đặt Cơ sở dữ liệu (MySQL)
1. Mở phpMyAdmin (ví dụ: `http://localhost/phpmyadmin`) hoặc MySQL Workbench.
2. Tạo cơ sở dữ liệu mới với tên: `xe_pkl` (Collation: `utf8mb4_unicode_ci`).
3. Import file [`xe_pkl.sql`](file:///Users/thanh/Downloads/java/project_java_web/xe_pkl.sql) vào cơ sở dữ liệu vừa tạo.
4. Kiểm tra cấu hình kết nối trong file [`src/java/CSDL/DB.java`](file:///Users/thanh/Downloads/java/project_java_web/src/java/CSDL/DB.java):
   ```java
   static String user = "root";
   static String pass = ""; // Nhập mật khẩu MySQL của bạn nếu có
   static String url  = "jdbc:mysql://localhost:3306/xe_pkl?useUnicode=true&characterEncoding=utf8";
   ```

### 3. Mở và Chạy dự án trong NetBeans
1. Mở **NetBeans IDE** -> chọn **File** -> **Open Project...** -> chọn thư mục `project_java_web`.
2. Chuột phải vào project -> chọn **Properties**:
   * Mục **Run**: Kiểm tra Server đã chọn Apache Tomcat và Java EE Version.
   * Mục **Libraries**: Đảm bảo đã có MySQL JDBC Driver và các file trong `web/WEB-INF/lib/`.
3. Nhấn **Clean and Build** để biên dịch dự án.
4. Nhấn **Run** (F6) để deploy và khởi chạy trên Tomcat.

---

## 🔑 Tài khoản mẫu (Mặc định trong DB)

| Quyền hạn | Email | Mật khẩu | Ghi chú |
| :--- | :--- | :--- | :--- |
| **Quản trị viên (Admin)** | `admin@gmail.com` | `123456` | Toàn quyền quản trị hệ thống |
| **Khách hàng** | `kunze.caleb@corkery.com` | `123456` | Khách hàng mẫu |
