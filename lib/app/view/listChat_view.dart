import 'package:flutter/material.dart';

class listChat extends StatelessWidget {
  const listChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Pesan Masuk"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("List Chat"),
          ],
        ),
      ),
    );
  }
}
