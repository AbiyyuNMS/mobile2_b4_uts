import 'package:flutter/material.dart';
// import 'package:pertemuan2_abiyyu223/ui/container.dart';
import 'package:pertemuan2_abiyyu223/ui/beranda.dart';
import 'package:pertemuan2_abiyyu223/ui/container.dart';
import 'package:pertemuan2_abiyyu223/ui/layout01.dart';
import 'package:pertemuan2_abiyyu223/ui/stopwatch.dart';
import 'package:pertemuan2_abiyyu223/ui/mybio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material",
      initialRoute: EppBar.nameRoute,
      routes: {
        EppBar.nameRoute: (context) => const EppBar(),
        Pertemuan2.nameRoute: (context) => const Pertemuan2(),
        MyLayout1.nameRoute: (context) => const MyLayout1(),
        MyBio.nameRoute: (context) => const MyBio(),
        StopwatchApp.nameRoute: (context) =>  StopwatchApp(),
        // '/Page02': (context) => const MyLayout1()
      },
    );
  }
}
