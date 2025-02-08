import 'package:flutter/material.dart';
import 'package:toko_sembako_online/models/data/data.dart';
import 'package:toko_sembako_online/widget/produk_item_widget.dart';

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
