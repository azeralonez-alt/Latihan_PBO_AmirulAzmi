<?php
class Database {
    private $host = "localhost";
    private $db_name = "DB_SIMULASI_PBO_KELAS_NamaLengkap"; // Sesuaikan NamaLengkap Anda
    private $username = "root";
    private $password = "";
    public $conn;

    // Mengambil koneksi database
    public function getConnection() {
        $this->conn = null;
        try {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name, 
                $this->username, 
                $this->password
            );
            // Mengatur error mode ke Exception untuk mempermudah debugging
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            // Mengatur default fetch mode ke object agar sesuai prinsip OOP
            $this->conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
        } catch(PDOException $exception) {
            echo "Koneksi database bermasalah: " . $exception->getMessage();
        }
        return $this->conn;
    }
}
?>