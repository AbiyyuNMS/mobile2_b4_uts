import 'package:flutter/material.dart';
import 'package:pertemuan2_abiyyu223/ui/beranda.dart';

class MyLayout1 extends StatelessWidget {
  static const nameRoute = '/Page02';
  const MyLayout1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "MyLayoutPage1",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.amberAccent,
                height: 100,
                child: const Center(
                  child: Text(
                    "Header....",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blueAccent,
                        height: 100,
                        child: const Center(
                          child: Text(
                            "Left",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )),
                  const SizedBox(height: 20),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.brown,
                        height: 100,
                        child: const Center(
                          child: Text(
                            "Right",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                  child: Container(
                color: Colors.indigo,
                // height: 100,
                child: const Center(
                  child: Text(
                    "Content",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.greenAccent,
                // height: 100,
                child: const Center(
                  child: Text(
                    "Footer",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(EppBar.nameRoute);
                  },
                  child: const Text("Kembali To HOME"))
            ],
          ),
        ),
      ),
    );
  }
}
