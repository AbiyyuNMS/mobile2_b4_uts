import 'package:flutter/material.dart';

class Pertemuan2 extends StatelessWidget {
  static const nameRoute = '/Page01';
  const Pertemuan2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan banner debug show check
      home: Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.home)),
          ],
          title: const Text(
            "Container",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey, //warna bekground appbar
        ),
        // backgroundColor: Colors.transparent, //warna kanvas
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
                child: const Text(
                    "Eu do pariatur iAliquip ad elit deserunt ut. Lorem elit eu dolore labore adipisicing nostrud eiusmod. Voluptate est sunt est laborum enim anim. Duis pariatur occaecat adipisicing nostrud consequat qui excepteur pariatur ea.ncididunt pariatur ad dolore pariatur."),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.black,
                child: const Icon(
                  Icons.access_alarms,
                  size: 250,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.black,
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
