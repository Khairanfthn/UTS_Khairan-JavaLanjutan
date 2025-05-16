<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FutureTicket XXI</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #eaf5f7;
        }

        /* Navbar */
        .navbar {
            background: white;
            padding: 12px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .navbar .logo {
            font-size: 1.5em;
            font-weight: bold;
            color: goldenrod;
        }

        .navbar .location {
            display: flex;
            align-items: center;
            font-weight: bold;
            background: #f2f2f2;
            padding: 5px 15px;
            border-radius: 20px;
        }

        .navbar .location i {
            margin-right: 8px;
        }

        .navbar .search-bar {
            flex-grow: 1;
            margin: 0 30px;
        }

        .search-bar input {
            width: 100%;
            padding: 8px 15px;
            border-radius: 20px;
            border: 1px solid #ccc;
        }

        .navbar .menu {
            display: flex;
            gap: 20px;
        }

        .navbar .menu a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        .navbar .btn {
            padding: 8px 16px;
            background: #00a99d;
            color: white;
            border-radius: 20px;
            text-decoration: none;
            font-weight: bold;
        }

        /* Icon Menu */
        .icon-menu {
            display: flex;
            justify-content: center;
            margin: 30px 0;
            gap: 40px;
        }

        .icon-menu .icon-item {
            text-align: center;
            color: #444;
        }

        .icon-item i {
            font-size: 28px;
            background: #f0f0f0;
            padding: 15px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .banner {
            display: flex;
            overflow-x: auto;
            gap: 20px;
            padding: 0 40px;
            margin-bottom: 30px;
        }

        .banner img {
            border-radius: 15px;
            height: 150px;
        }

        .now-playing {
            padding: 0 40px 40px;
        }

        .now-playing h2 {
            margin-bottom: 20px;
        }

        .movies {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .movie-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            width: 200px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .movie-card:hover{
            background: goldenrod;
        }

        .movie-card img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .movie-card .title {
            padding: 10px;
            font-weight: bold;
            color: black;
            text-decoration: none;
        }
         .pesan-btn {
        background-color: black;
        color: white;
        padding: 12px 24px;
        font-size: 18px;
        font-weight: bold;
        border-radius: 30px;
        text-decoration: none;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        transition: background-color 0.3s ease, transform 0.2s ease;
        display: inline-block;
    }

    .pesan-btn:hover {
        background-color: white;
        color: black;
        transform: scale(1.05);
    }
        @keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Link Back */
a {
    color: black;
    text-decoration: none;
}

a:hover {
    color: goldenrod;
    text-decoration: none;
}
        
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">MovieID</div>
        <div class="location">
            <i class="fas fa-map-marker-alt"></i> Bandung
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search movies or cinemas" id="searchInput">
        </div>
       
    </div>

    <!-- Icon Menu -->
 
    <!-- Banner Carousel -->


    <!-- Now Playing -->
    <div class="now-playing">
        <h2>Pesan Tiketmu Disini</h2>
        <div class="movies">
<div class="movie-card">
    <img src="avengers.png">
    <div class="title"> <a href="pesanan.jsp?film=Avengers">Avengers: Endgame</a></div>
</div>
<div class="movie-card">
    <img src="spiderman.png">
    <div class="title"><a href="pesanan.jsp?film=Spiderman">Spider-Man: AMAZING</a></div>
</div>
<div class="movie-card">
    <img src="deadpool3.png">
    <div class="title"><a href="pesanan.jsp?film=Deadpool">Deadpool 3</a></div>
</div>

        </div>
    </div>
 <!-- Tombol Pesan Tiket -->
<div style="text-align: center; margin-bottom: 40px;">
    <a class="pesan-btn" href="pesanan.jsp">
        PESAN TIKET SEKARANG
    </a>
</div>

    <div class="title movie-title">
        
</div>
    <script>
    document.getElementById('searchInput').addEventListener('keyup', function () {
        const input = this.value.toLowerCase();
        const movies = document.querySelectorAll('.movie-card');

        movies.forEach(movie => {
            const title = movie.querySelector('.title').textContent.toLowerCase();
            if (title.includes(input)) {
                movie.style.display = "block";
            } else {
                movie.style.display = "none";
            }
        });
    });
</script>


</body>
</html>
