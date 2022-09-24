import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sikadu_ortu/app/routes/routes_name.dart';
import 'package:sikadu_ortu/app/style/text_style.dart';
import 'package:sikadu_ortu/app/widget/custom_widget.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text(
      //     "Homepage",
      //     style: TextStyle(
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        // physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Hallo, iraaa",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Bagaimana kabar .... hari ini???",
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        ClipOval(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColors.biruTerang,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Lottie.asset(
                              "assets/lottie/avatar.json",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Get.height * 0.75,
              width: Get.width,
              child: GridView.count(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                padding: const EdgeInsets.all(15),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  cardhomepage(
                    ontap: () {
                      Get.toNamed(RoutesName.pengumuman);
                    },
                    warnaTerang: AppColors.grayshade,
                    warna: AppColors.lightblue,
                    icon: Icon(
                      Icons.speaker_notes,
                      size: 35,
                    ),
                    kategori: "Pengumuman",
                  ),
                  cardhomepage(
                    ontap: () {
                      Get.toNamed(RoutesName.absensi);
                    },
                    warnaTerang: AppColors.grayshade,
                    warna: AppColors.blue,
                    icon: Icon(
                      Icons.person_pin_circle,
                      size: 35,
                    ),
                    kategori: "Absensi",
                  ),
                  cardhomepage(
                    ontap: () {
                      Get.toNamed(RoutesName.rekapNilai);
                    },
                    warnaTerang: AppColors.grayshade,
                    warna: AppColors.blue,
                    icon: Icon(
                      Icons.countertops,
                      size: 35,
                    ),
                    kategori: "Rekap Nilai",
                  ),
                  cardhomepage(
                    ontap: () {
                      Get.toNamed(RoutesName.jadwal);
                    },
                    warnaTerang: AppColors.grayshade,
                    warna: AppColors.blue,
                    icon: Icon(
                      Icons.schedule,
                      size: 35,
                    ),
                    kategori: "Jadwal",
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: Get.height / 3,
              color: Colors.grey[100],
              child: Center(
                child: Text("Pengumuman"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
