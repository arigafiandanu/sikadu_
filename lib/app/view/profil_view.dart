import 'package:flutter/material.dart';

class profilView extends StatelessWidget {
  const profilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Profil Siswa"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("profil"),
          ],
        ),
      ),
    );
  }
}
