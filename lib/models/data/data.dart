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
    "Telur hasil peternakan Kampung Aceh yang dipelihara secara alami tanpa bahan kimia. Telur ini memiliki kualitas tinggi dengan cangkang yang kuat dan kuning telur yang kaya nutrisi, sangat baik untuk kebutuhan gizi keluarga dan cocok digunakan dalam berbagai olahan masakan, mulai dari telur dadar, kue, hingga makanan bergizi lainnya.",
  ),
  Produk(
    "Beras",
    "50.000",
    "Kg",
    "assets/images/g3.jpg",
    "Beras premium hasil panen terbaik dari sawah pilihan dengan proses penggilingan modern, sehingga menghasilkan beras putih bersih tanpa campuran. Memiliki tekstur pulen, aroma wangi, dan kandungan nutrisi yang tinggi, membuatnya cocok untuk hidangan sehari-hari yang lezat dan bergizi.",
  ),
  Produk(
    "Gula",
    "15.000",
    "Kg",
    "assets/images/g4.jpg",
    "Gula pasir berkualitas tinggi yang dihasilkan dari tebu pilihan melalui proses pemurnian yang higienis. Gula ini memiliki tekstur yang halus, mudah larut dalam air, dan memberikan rasa manis alami yang cocok digunakan untuk minuman, kue, dan masakan sehari-hari tanpa mengurangi kualitas rasa.",
  ),
  Produk(
    "Minyak Goreng",
    "20.000",
    "Liter",
    "assets/images/g5.jpg",
    "Minyak goreng sehat untuk keluarga yang terbuat dari kelapa sawit pilihan melalui proses penyaringan modern. Memiliki kadar lemak jenuh yang rendah, minyak ini cocok digunakan untuk menggoreng, menumis, dan memasak berbagai hidangan tanpa meninggalkan rasa pahit atau bau tengik, sehingga menjaga cita rasa makanan tetap lezat dan sehat.",
  ),
  Produk(
    "Susu",
    "25.000",
    "Kotak",
    "assets/images/g6.jpg",
    "Susu murni dari sapi pilihan yang diolah dengan teknologi pasteurisasi untuk menjaga kesegarannya. Mengandung kalsium, protein, dan vitamin yang baik untuk pertumbuhan dan kesehatan tulang. Susu ini cocok dikonsumsi langsung ataupun digunakan sebagai bahan dasar dalam pembuatan kue dan minuman sehat lainnya.",
  ),
  Produk(
    "Kopi",
    "30.000",
    "Bungkus",
    "assets/images/g7.jpg",
    "Kopi robusta asli Aceh dengan cita rasa khas yang kuat dan aroma harum yang menggoda. Ditanam di dataran tinggi dengan iklim sejuk, biji kopi ini diproses secara alami untuk menghasilkan rasa yang pekat, sedikit pahit, dan memiliki sentuhan rasa coklat yang nikmat. Cocok untuk pecinta kopi sejati.",
  ),
  Produk(
    "Tepung Terigu",
    "12.000",
    "Kg",
    "assets/images/g8.jpg",
    "Tepung terigu berkualitas tinggi yang dibuat dari gandum pilihan dengan kadar protein sedang. Cocok untuk berbagai kebutuhan memasak seperti membuat roti, kue, dan gorengan. Dengan tekstur yang lembut dan mudah diolah, tepung ini akan menghasilkan adonan yang sempurna untuk setiap kreasi masakan Anda.",
  ),
];
