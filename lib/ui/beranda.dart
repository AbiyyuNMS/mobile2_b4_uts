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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/lofi2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/fotogueh.jpg"),
                  ),
                  accountName: Text("Abiyyu Nong Maulana Soge"),
                  accountEmail: Text("abiyyuperfect@gmail.com")),
              // Container(
              //   width: double.infinity,
              //   height: 105,
              //   color: const Color(0xff074173),
              //   alignment: Alignment.bottomLeft,
              //   padding: const EdgeInsets.only(left: 10, bottom: 7),
              //   child: const Text(
              //     "Menu",
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 20,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                leading: Icon(Icons.home, size: 25),
                title: Text("Home", style: TextStyle(fontSize: 17)),
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 25),
                title: Text("Settings", style: TextStyle(fontSize: 17)),
              ),
              ListTile(
                leading: Icon(Icons.star, size: 25),
                title: Text("Favourites", style: TextStyle(fontSize: 17)),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffE3FEF7),
        appBar: AppBar(
          title: const Text(
            "HomePage",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff074173),
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
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173)),
                  child: const Text(
                    'Halaman MyContainer',
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyLayout1.nameRoute);
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173)),
                  child: const Text(
                    'Halaman MyLayout01',
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyBio.nameRoute);
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173)),
                  child: const Text(
                    'Halaman DataDiri',
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, StopwatchApp.nameRoute);
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff074173)),
                  child: const Text(
                    'Halaman Stopwatch',
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
