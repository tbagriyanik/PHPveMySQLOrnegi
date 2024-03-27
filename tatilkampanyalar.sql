-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Mar 2024, 16:32:59
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sibervt`
--
CREATE DATABASE IF NOT EXISTS `sibervt` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `sibervt`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tatilkampanyalar`
--

CREATE TABLE `tatilkampanyalar` (
  `id` int(11) NOT NULL,
  `kampanyaAdi` varchar(50) NOT NULL,
  `fiyat` float NOT NULL,
  `tarih` datetime NOT NULL,
  `hedef` varchar(50) NOT NULL,
  `resim` varchar(100) NOT NULL,
  `icerik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tatilkampanyalar`
--

INSERT INTO `tatilkampanyalar` (`id`, `kampanyaAdi`, `fiyat`, `tarih`, `hedef`, `resim`, `icerik`) VALUES
(1, 'Maldivler', 2222, '2024-03-27 11:49:00', 'Güney asya', 'resim1.jpg', 'Maldivler (Maldivce: ދިވެހިރާއްޖެ, Dhivehi Raajje) ya da resmî adıyla Maldivler Cumhuriyeti,[5] Hint Okyanusu\'nda 1.200 adadan oluşan bir devlettir.[6] Hindistan\'ın güneyinde ve Sri Lanka\'nın yaklaşık 750 kilometre (435 mil) güneybatısında yer alır.[6] Küresel iklim değişiklikleri yüzünden yüz yıl içerisinde sular altında kalacağı öngörülmektedir.  1.200 adanın sadece 281\'inde insan yaşamaktadır.[6] 1.000 civarında ada hâlen boştur. Yerleşim bulunan 281 adadan 195\'inde Maldivliler, 86 ada ise \"otel ada\" şeklinde kullanılmaktadır. Maldivliler adada yer alan tek etnik gruptur ve Hint-Aryan kökenli bir halktır. Halk Maldivce konuşmakta olup, %97\'si Müslümandır. Devlet başkanlık tipi cumhuriyet ile yönetilmektedir.'),
(2, 'Doğu ekspresi', 1000, '2024-03-30 13:52:08', 'Kars-van', 'resim2.jpg', 'Doğu Ekspresi, TCDD Taşımacılık tarafından Ankara – Kars güzergâhında her gün karşılıklı bir sefer işletilen anahat trenidir.[1] Trenler yataklı, kuşetli ve yemekli vagonlardan oluşmaktadır.  Tren, Ankara - Kars güzergâhındaki seferini 25 saat 30 dakikada tamamlamakta; Kars - Ankara güzergâhında ise seferini 25 saatte tamamlamaktadır.[10]  Doğu Ekspresi, Ankara – Kars demiryolu\'nun inşasına paralel olarak ilk seferini 1936 yılında Haydarpaşa – Çetinkaya arasında yaptı. 1939\'da hattın Erzurum\'a ulaşmasıyla trenin güzergahı Erzurum\'a uzadı. O dönemler Erzurum – Kars arasının Rus hat açıklığında olması sebebiyle yolcular Kars\'a varmak için Erzurum\'da tren değiştirmek zorundaydılar. 1962\'de hattın standart hat açıklığına değiştirilmesiyle Haydarpaşa-Kars arasında kesintisiz seferler başlamıştır. 2012\'de Ankara – İstanbul YHD projesinin inşası sebebiyle hat kısaltılmış ve seyahat başlangıç noktası Ankara olmuştur.'),
(3, 'Hac ve Umre', 3000, '2024-03-27 11:52:34', 'Mekke', 'resim3.gif', 'Umre, Müslümanların Kâbe\'yi hac mevsimi dışında ziyaret etmelerine denir. Umre ziyaret demektir. Fıkhî tanımı, hac gibi bir zamana bağlı olmadan ihrama girerek Kâbe\'yi tavaf, sa\'y etmek, tıraş olmaktır.  Umre kelimesi Kur\'an ve hadiste geçer. Kur\'an\'da: \"Haccı ve umreyi Allah için tam yapın\" şeklinde olan ifade, hadiste: \"İki umre, arasındaki küçük günahların keffaretidir\" şeklindedir.[kaynak belirtilmeli] Umre yapmak, Hanefî ve Mâlikî mezheplerinde sünnet, Şâfiî ve Hanbelî mezheplerinde farzdır. Yaşamın herhangi bir anında yapılabilir. Hac ve umreyi peş peşe yapmak tavsiye edilmiştir.'),
(7, '1', 2, '2024-03-27 16:08:00', '3', '4', '5');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tatilkampanyalar`
--
ALTER TABLE `tatilkampanyalar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tatilkampanyalar`
--
ALTER TABLE `tatilkampanyalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
