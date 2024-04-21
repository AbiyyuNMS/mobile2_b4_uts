import 'package:flutter/material.dart';
import 'package:pertemuan2_abiyyu223/ui/container.dart';
import 'package:pertemuan2_abiyyu223/ui/layout01.dart';
import 'package:pertemuan2_abiyyu223/ui/stopwatch.dart';
import 'package:pertemuan2_abiyyu223/ui/mybio.dart';

class EppBar extends StatelessWidget {
  static const nameRoute = '/homepage';
  const EppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
      home: Scaffold(
        backgroundColor: const Color(0xffE3FEF7),
        appBar: AppBar(
          title: const Text(
            "HomePage",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff074173),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, const Pertemuan2().toString());
            },
            icon: const Icon(
              Icons.list_rounded,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Home Page',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Pertemuan2.nameRoute);
                  },
                  child: const Text(
                    'Halaman MyContainer',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173))),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyLayout1.nameRoute);
                  },
                  child: const Text(
                    'Halaman MyLayout01',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173))),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyBio.nameRoute);
                  },
                  child: const Text(
                    'Halaman DataDiri',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173))),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, StopwatchApp.nameRoute);
                  },
                  child: const Text(
                    'Halaman Stopwatch',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173))),
            ],
          ),
        ),
      ),
    );
  }
}
