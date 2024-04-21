import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class MyBio extends StatelessWidget {
  static const nameRoute = '/mybio';
  const MyBio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: GoogleFonts.jetBrainsMono().fontFamily),
      home: Scaffold(
        backgroundColor: const Color(0xff074173),
        appBar: AppBar(
          centerTitle: true,
          title: (const Text(
            "MyBio",
            style: TextStyle(color: Color(0xffFEFDED)),
          )),
          backgroundColor: const Color(0xff0E46A3),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "MY BIODATA",
                  style: TextStyle(fontSize: 20, color: Color(0xffFEFDED)),
                ),
                const SizedBox(height: 35),
                AvatarGlow(
                    glowColor: Colors.blueAccent,
                    child: Container(
                      height: 270,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(200),
                          image: const DecorationImage(
                              image: AssetImage("images/fotogueh.jpg"))),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    title: Text("Nama : Abiyyu Nong Maulana Soge"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.key,
                      color: Colors.blue,
                    ),
                    title: Text("NIM : 2301010223"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.handshake_outlined,
                      color: Colors.blue,
                    ),
                    title: Text("Prodi : S1 Ilmu Komputer"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Kembali Ke Home'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xffFEFDED))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
