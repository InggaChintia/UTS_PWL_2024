<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cintisari Bakery</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f7f7f7;
            background-image: url('/dist/img/toko.jpeg'); /* Menambahkan gambar sebagai background */
            background-position: center; /* Menempatkan gambar di tengah */
        }


        /* Header Styling */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #000;
            color: white;
            position: fixed; /* Membuat header tetap berada di atas */
            top: 0; /* Pastikan berada di atas */
            width: 100%; /* Lebarnya sesuai dengan layar */
            z-index: 1000; /* Supaya berada di depan elemen lainnya */
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px; /* Jarak antara logo dan teks */
            margin-left: 5%;
        }

        .logo img {
            width: 50px; /* Sesuaikan ukuran logo */
            height: 50px; /* Sesuaikan ukuran logo */
            object-fit: contain;
            border-radius: 50%;
        }

        .logo-text {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-links {
            display: flex;
            gap: 30px;
            margin-left: 60%;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #ffcc00;
        }

        .login-btn {
            padding: 10px 25px;
            margin-right: 5%;
            background-color: #ffcc00;
            color: white;
            border-radius: 10px;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #e6b800;
        }

        /* Hero Section Styling */
        .hero {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('/images/bakery.jpg') no-repeat center center/cover;
            position: relative;
            margin-top: 80px; /* Sesuaikan nilai ini sesuai dengan tinggi header */
        }

        .hero-text {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px 40px;
            text-align: center;
            border-radius: 10px;
        }

        .hero h1 {
            font-size: 48px;
            color: #ffcc00;
        }

        .hero p {
            font-size: 18px;
            color: #333;
            margin-top: 10px;
        }

        .hero a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 30px;
            background-color: #ffcc00;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .hero a:hover {
            background-color: #e6b800;
        }

        /* Product Section Styling */
        
        .product-grid {
            display: flex;
            justify-content: space-around;
            padding: 0 10%;
            background-color: white;
            padding-top: 300px;
            padding-bottom: 150px;
        }

        .product-card {
            background-color: #f0f0f0;
            padding: 20px;
            border-radius: 12px;
            text-align: center;
            width: 23%;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-10px);
        }

        .product-card h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .product-card p {
            font-size: 16px;
            color: #555;
        }

        .product-card a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #ffcc00;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .product-card a:hover {
            background-color: #e6b800;
        }

        .product-image {
            height: 450px;
            overflow: hidden;
            border-radius: 12px 12px 0 0;
            margin: -20px -20px 20px -20px;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.1);
        }

        /* Footer Styling */
        footer {
            background-color: black;
            padding: 40px 0;
            color: white;
            font-size: 14px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .footer-container {
            width: 80%;
            display: flex;
            justify-content: space-between;
        }

        .footer-left h2 {
            font-size: 24px;
            margin-bottom: 15px;
            font-weight: bold;
        }

        .footer-left p {
            margin-bottom: 25px;
            line-height: 1.5;
        }

        .footer-left a {
            display: inline-block;
            padding: 10px 25px;
            background-color: white;
            color: #e6b800;
            text-decoration: none;
            border-radius: 25px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .footer-left a:hover {
            background-color: #e6e6fa;
        }

        .social-icons a {
            margin-left: 10px;
            color: white;
            font-size: 18px;
            text-decoration: none;
        }

        .footer-bottom {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
        }

        .footer-bottom a {
            color: white;
            margin-left: 15px;
            text-decoration: none;
        }

        .footer-bottom a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navigation -->
    <nav>
        <div class="logo">
            <img src="/dist/img/logo_toko.jpeg" alt="Cintisari Logo">
            <div class="logo">CINTISARI-BAKERY</div>
        </div>
        <a href="{{ url('/login') }}" class="login-btn">Login</a>
    </nav>

    <!-- Hero Section -->
    <section id="about" class="hero">
        <div class="hero-text">
            <h1>WELCOME TO CINTISARI-BAKERY</h1>
            <p>Cintisari-Bakery menyajikan kelezatan dalam setiap gigitan. 
                Kue-kue kami dibuat dengan penuh kasih sayang menggunakan bahan-bahan segar pilihan, 
                menghasilkan cita rasa yang autentik dan tekstur yang lembut. 
                Setiap kue adalah hasil karya tangan terampil para pastry chef kami, 
                siap memanjakan lidah Anda.</p>
        </div>
    </section>

    <!-- Product Section -->
    <section id="gallery" class="product-grid">
        <div class="product-card">
            <div class="product-image">
                <img src="/dist/img/cromboloni.jpg" alt="Chocolate Cake">
            </div>
            <h2>Cromboloni</h2>
            <p>"Nikmati kelezatan donat Italia yang legendaris! 
                Cromboloni kami dibuat dengan adonan lembut dan diisi 
                krim kental yang kaya rasa. Cocok untuk menemani waktu santai Anda."</p>
        </div>

        <div class="product-card">
            <div class="product-image">
                <img src="/dist/img/donat.jpg" alt="Vanilla Delight">
            </div>
            <h2>Donat</h2>
            <p>"Donat klasik yang tak pernah gagal membuat siapapun bahagia. 
                Dengan lapisan gula yang manis dan lembut, donat ini adalah 
                teman terbaik untuk segala suasana."</p>
        </div>

        <div class="product-card">
            <div class="product-image">
                <img src="/dist/img/gelato.jpg" alt="Strawberry Cheesecake">
            </div>
            <h2>Gelato</h2>
            <p>"Perpaduan sempurna antara gelato vanilla dan cokelat chip. 
                Setiap suapan adalah kejutan yang menyenangkan."</p>
        </div>
        
        <div class="product-card">
            <div class="product-image">
                <img src="/dist/img/kue.jpg" alt="Rainbow Cake">
            </div>
            <h2>Cake</h2>
            <p>"Rayakan hari istimewa Anda dengan kue ulang tahun custom dari kami. 
                Desain unik dan rasa yang lezat, pasti akan membuat acara Anda lebih meriah."</p>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-bottom">
            <p>&copy; Cintisari-Bakery 2024.</p>
        </div>
    </footer>

</body>
</html>
