import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko_sembako_online/models/data/data.dart';
import 'package:toko_sembako_online/pages/detail_produk_page.dart';

class ItemWidget extends StatelessWidget {
  final Produk produk;
  const ItemWidget({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailProduk(
            produk: produk,
          );
        }));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.lightGreen,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: produk.gambar,
              child: SizedBox(
                width: 150,
                child: Image.asset(produk.gambar),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Rp ${produk.harga}",
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              produk.nama,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              produk.jumlah,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Divider(
              height: 2,
              color: Colors.deepOrangeAccent,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20,
                      color: Colors.deepOrangeAccent,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Beli",
                      style: GoogleFonts.lato(
                        color: Colors.deepOrangeAccent,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.remove_circle_outline,
                          size: 18,
                          color: Colors.deepOrangeAccent,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          child: Text("0"),
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          size: 18,
                          color: Colors.deepOrangeAccent,
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
