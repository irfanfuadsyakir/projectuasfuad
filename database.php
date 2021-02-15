
 
<?php
// deklarasi parameter koneksi database
$hostname = "sql301.epizy.com";
$username = "epiz_27936949";
$password = "tOmrlJg7BG5h";
$database = "epiz_27936949_mahasiswa";

try {
	// buat koneksi database
	$pdo = new PDO("mysql:host=$hostname;dbname=$database",$username,$password);
	// set error mode
	$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
	// tampilkan kesalahan jika koneksi gagal
	echo "Koneksi Database Gagal! : ".$e->getMessage();
}
?>