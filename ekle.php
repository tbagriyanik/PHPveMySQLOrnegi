<!DOCTYPE HTML>
<html>

<head>
	<title>Siber Güvenlik Atölyesi - Örnek Proje</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="single is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<h1><a href="index.php">Siber Güvenlik Atölyesi - Örnek Proje</a></h1>
			<nav class="links">
				<ul>
					<li><a href="index.php">Listele</a></li>
					<li><a href="ekle.php">Ekle</a></li>
					<li><a href="guncelle.php">Güncelle</a></li>
					<li><a href="sil.php">Sil</a></li>
					<li><a href="admin">Yönetim</a></li>
				</ul>
			</nav>
			<nav class="main">
				<ul>
					<li class="search">
						<a class="fa-search" href="#search">Ara</a>
						<form id="search" method="get" action="index.php">
							<input type="text" name="ara" placeholder="Ara" />
						</form>
					</li>
					<li class="menu">
						<a class="fa-bars" href="#menu">Menü</a>
					</li>
				</ul>
			</nav>
		</header>

		<!-- Menu -->
		<section id="menu">

			<!-- Search -->
			<section>
				<form class="search" method="get" action="index.php">
					<input type="text" name="ara" placeholder="Ara" />
				</form>
			</section>

			<!-- Links -->
			<section>
				<ul class="links">
					<li>
						<a href="index.php">
							<h3>Tatil Listesi</h3>
							<p>Veri Listeleme</p>
						</a>
					</li>
					<li>
						<a href="ekle.php">
							<h3>Ekleme</h3>
							<p>Veri ekleme</p>
						</a>
					</li>
					<li>
						<a href="guncelle.php">
							<h3>Güncelleme</h3>
							<p>Veri güncelleme</p>
						</a>
					</li>
					<li>
						<a href="sil.php">
							<h3>Silme</h3>
							<p>Kimlik ile kayıt silme</p>
						</a>
					</li>
				</ul>
			</section>

			<!-- Actions -->
			<section>
				<ul class="actions stacked">
					<li><a href="#" class="button large fit">Yönetim Girişi</a></li>
				</ul>
			</section>

		</section>

		<!-- Main -->
		<div id="main">
			<?php
			$baglan = mysqli_connect("localhost", "root", "", "sibervt");
			if (!$baglan) {
				die("" . mysqli_connect_error());
			}

			if ($_POST) {

				$kampanyaAdi = mysqli_real_escape_string($baglan, $_POST["kampanyaAdi"]);
				$fiyat = mysqli_real_escape_string($baglan, $_POST["fiyat"]);
				$hedef = mysqli_real_escape_string($baglan, $_POST["hedef"]);
				$tarih = mysqli_real_escape_string($baglan, $_POST["tarih"]);
				$resim = mysqli_real_escape_string($baglan, $_POST["resim"]);
				$icerik = mysqli_real_escape_string($baglan, $_POST["icerik"]);

				$sorgu = mysqli_query($baglan, "INSERT INTO tatilkampanyalar (kampanyaAdi, fiyat, tarih, hedef, resim, icerik) VALUES ('$kampanyaAdi', '$fiyat', '$tarih', '$hedef', '$resim', '$icerik' )");

				echo "Kampanya Eklendi";
			}

			?>
			<!-- Post -->
			<article class="post">

				<h2>Tatil Ekleme Formu </h2>

				<form action="" method="post">
					Kampanya Adı <br>
					<input type="text" name="kampanyaAdi" id=""><br>
					Fiyat <br>
					<input type="number" name="fiyat" id="" value="0"> ₺ <br>
					Tarih <br>
					<input type="datetime-local" name="tarih" id="" value="<?php echo date("Y-m-d H:i") ?>"><br>
					Hedef <br>
					<input type="text" name="hedef" id=""><br>
					Resim<br>
					<input type="text" name="resim" id=""><br>
					İçerik <br>
					<textarea name="icerik" id="" cols="30" rows="10"></textarea><br>
					<input type="submit" value="Ekle">
				</form>

			</article>

		</div>

		<!-- Footer -->
		<section id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="#" class="icon solid fa-rss"><span class="label">RSS</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
			</ul>
			<p class="copyright">&copy; Siber Güvenlik Atölyesi - Design: <a href="http://html5up.net">HTML5 UP</a>.
				Images: <a href="http://unsplash.com">Unsplash</a>.</p>
		</section>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>