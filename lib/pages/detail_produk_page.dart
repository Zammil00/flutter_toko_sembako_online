import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko_sembako_online/models/data/data.dart';

class DetailProduk extends StatelessWidget {
  const DetailProduk({super.key, required this.produk});

  final Produk produk;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Detail",
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      // BODY
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            produk.nama,
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
          Center(
            child: Hero(
              tag: produk.gambar,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(produk.gambar), fit: BoxFit.contain)),
              ),
            ),
          ),
          Container(
            color: Colors.grey[400],
            padding: EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Row(
              children: [
                Text(
                  "Rp. " + produk.harga,
                  style: GoogleFonts.lato(
                    color: Colors.deepOrange,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[400],
              padding: EdgeInsets.all(20),
              child: Text(
                produk.deskripsi,
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        "1",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          25,
                        ),
                      ),
                      color: Colors.deepOrange,
                    ),
                    child: Center(
                      child: Text(
                        "Pesan",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
