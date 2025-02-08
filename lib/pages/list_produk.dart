import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko_sembako_online/models/data/data.dart';

class ListProduk extends StatefulWidget {
  const ListProduk({super.key});

  @override
  State<ListProduk> createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
    final dataCard = Produk(
    "Telur",
    "10.000",
    "Butir",
    "assets/images/g2.jpg",
    "Telur Hasil Peternakan Kampung Aceh",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          children: [
            Card(
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
                    tag: dataCard.gambar,
                    child: SizedBox(
                      width: 150,
                      child: Image.asset(dataCard.gambar),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Rp " + dataCard.harga,
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
                    dataCard.nama,
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
                    dataCard.jumlah,
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
            Card(),
          ],
        ),
      ),
    );
  }
}
