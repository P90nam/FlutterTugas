import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/list_produk_controller.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            children: [
              TextSpan(
                text: 'M',
                style: TextStyle(color: Color(0xFFE53238)),
              ),
              TextSpan(
                text: 'A',
                style: TextStyle(color: Color(0xFF0064D2)),
              ),
              TextSpan(
                text: 'N',
                style: TextStyle(color: Color(0xFFF5AF02)),
              ),
              TextSpan(
                text: 'N',
                style: TextStyle(color: Color(0xFF86B817)),
              ),
              TextSpan(
                text: ' CO.',
                style: TextStyle(color: Color(0xFF555555)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Text(
              'WE SELL STUFF AND GET INTO FIGHT',
              style: TextStyle(color: Color(0xFF767676), fontSize: 12),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: controller.produkList.length,
              itemBuilder: (context, index) {
                final produk = controller.produkList[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Color(0xFFE5E5E5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            width: 80,
                            height: 80,
                            color: const Color(0xFFF3F3F3),
                            child: Image.network(
                              produk.imageUrl,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                    Icons.inventory_2_outlined,
                                    color: Color(0xFF767676),
                                  ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                produk.namaProduk,
                                style: const TextStyle(
                                  color: Color(0xFF222222),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                produk.deskripsi,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color(0xFF767676),
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                produk.harga,
                                style: const TextStyle(
                                  color: Color(0xFF222222),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
