import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko_sembako_online/models/data/data.dart';
import 'package:toko_sembako_online/widget/produk_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.deepOrange,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            "SEMBAKO LABIL",
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.search,
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 3,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(
                          child: Text(
                            "2",
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        body: ListProduk());
  }
}

class ListProduk extends StatefulWidget {
  const ListProduk({super.key});

  @override
  State<ListProduk> createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemCount: produkList.length, // Tambahkan itemCount
          itemBuilder: (context, index) {
            return ItemWidget(produk: produkList[index]);
          },
        ),
      ),
    );
  }
}
