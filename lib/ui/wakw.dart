// ignore_for_file: avoid_print

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ChatLayout extends StatelessWidget {
  static const nameRoute = '/chat';
  final Faker faker = Faker();
  ChatLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layout Chat',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff074173),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Dismissible(
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Confirm"),
                    content: const Text('Are you sure want to delete?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text("NO"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text("YES"),
                      ),
                    ],
                  );
                },
              );
            },
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.redAccent,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 15),
              child: const Icon(Icons.delete_forever_outlined),
            ),
            key: Key(index.toString()),
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network("https://picsum.photos/id/$index/200",
                    fit: BoxFit.fill),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}
