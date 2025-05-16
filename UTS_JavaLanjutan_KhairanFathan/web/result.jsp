<%@ page import="java.util.*" %>
<%
    String nama = request.getParameter("nama");
    String film = request.getParameter("film");
    String jam = request.getParameter("jam");
    int jumlah = Integer.parseInt(request.getParameter("jumlah"));
    int hargaPerTiket = 50000;
    int total = jumlah * hargaPerTiket;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Struk Pemesanan - FutureTicket</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* Global Style */
body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(145deg, #1a1a1a, #222);
    color: #f0f0f0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

/* Navbar */
.navbar {
    background: #111;
    padding: 15px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 8px rgba(0,0,0,0.5);
    position: sticky;
    top: 0;
    z-index: 1000;
}

.navbar .logo {
    font-size: 1.8em;
    font-weight: bold;
    color: #ffffff;
    letter-spacing: 1px;
}

.navbar .menu a {
    color: #bbb;
    text-decoration: none;
    margin-left: 20px;
    font-size: 1em;
    transition: 0.3s;
}

.navbar .menu a:hover {
    color: #ffffff;
    border-bottom: 2px solid #00bcd4;
}

/* Container for Form and Result */
.container {
    max-width: 600px;
    margin: 40px auto;
    background: #1e1e1e;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 0 25px rgba(0,0,0,0.3), inset 0 0 10px rgba(255,255,255,0.02);
    animation: fadeIn 0.8s ease-in-out;
}

/* Form */
form {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 6px;
    margin-top: 14px;
    font-weight: 500;
}

input[type="text"],
input[type="number"],
select {
    padding: 10px;
    border-radius: 6px;
    border: 1px solid #555;
    background: #2c2c2c;
    color: #fff;
    font-size: 1em;
    transition: border-color 0.3s;
}

input[type="text"]:focus,
input[type="number"]:focus,
select:focus {
    outline: none;
    border-color: #00bcd4;
}

/* Submit Button */
input[type="submit"] {
    margin-top: 20px;
    padding: 12px;
    background: #00bcd4;
    color: #111;
    font-weight: bold;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background 0.3s;
}

input[type="submit"]:hover {
    background: #0097a7;
}

/* Fade in animation */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Link Back */
a {
    color: #00bcd4;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

    </style>
</head>
<body class="mono">

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">MovieID</div>
        <div class="location">
            <i class="fas fa-map-marker-alt"></i> Bandung
        </div>

    <!-- Struk Container -->
    <div class="container">
        <h2>Struk Pemesanan</h2>
        <p><strong>Nama Pemesan:</strong> <%= nama %></p>
        <p><strong>Film yang Dipilih:</strong> <%= film %></p>
        <p><strong>Jam Tayang:</strong> <%= jam %></p>
        <p><strong>Jumlah Tiket:</strong> <%= jumlah %> tiket</p>
        <p><strong>Total Harga:</strong> Rp <%= total %></p>

        <br/>
        <a href="index.jsp" style="color: #90caf9; text-decoration: underline;">&#8592; Pesan Tiket Lagi</a>
    </div>

</body>
</html>
