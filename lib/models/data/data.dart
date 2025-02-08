class Produk {
  final String nama;
  final String harga;
  final String jumlah;
  final String gambar;
  final String deskripsi;

  Produk(
    this.nama,
    this.harga,
    this.jumlah,
    this.gambar,
    this.deskripsi,
  );
}

final List<Produk> produkList = [
  Produk(
    "Telur",
    "10.000",
    "Butir",
    "assets/images/g2.jpg",
    "Telur Hasil Peternakan Kampung Aceh",
  ),
  Produk(
    "Beras",
    "50.000",
    "Kg",
    "assets/images/g3.jpg",
    "Beras premium hasil panen terbaik",
  ),
  Produk(
    "Gula",
    "15.000",
    "Kg",
    "assets/images/g4.jpg",
    "Gula pasir berkualitas tinggi",
  ),
  Produk(
    "Minyak Goreng",
    "20.000",
    "Liter",
    "assets/images/g5.jpg",
    "Minyak goreng sehat untuk keluarga",
  ),
  Produk(
    "Susu",
    "25.000",
    "Kotak",
    "assets/images/g6.jpg",
    "Susu murni dari sapi pilihan",
  ),
  Produk(
    "Kopi",
    "30.000",
    "Bungkus",
    "assets/images/g7.jpg",
    "Kopi robusta asli Aceh",
  ),
  Produk(
    "Tepung Terigu",
    "12.000",
    "Kg",
    "assets/images/g8.jpg",
    "Tepung terigu berkualitas tinggi",
  ),
];
