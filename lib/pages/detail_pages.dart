// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:folk_songs_apps/models/province.dart';

class DetailPages extends StatefulWidget {
  final Province province;
  const DetailPages({
    super.key,
    required this.province,
  });

  @override
  State<DetailPages> createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.province.nama,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        elevation: 2,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              widget.province.laguDaerah,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '${widget.province.nama} - ${widget.province.ibuKota}',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            Image.network(widget.province.photo),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 236, 191, 191),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Text(widget.province.lirikLaguDaerah),
            ),
          ],
        ),
      ),
    );
  }
}
