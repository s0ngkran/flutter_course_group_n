import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/clip_image_widget.dart';
import 'widgets/docker_app_bar_widget.dart';
import 'widgets/gradiant_text_widget.dart';
import 'widgets/hackathon_widget.dart';

class DockerScr extends StatelessWidget {
  const DockerScr({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isOpen = false.obs;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('hello', 'hihihihihih');
        },
        child: Text('hello'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Hackathon(
                  title: 'hackathon',
                  message: 'Eu dolor deserunt nulla voluptate in.',
                ),
                Obx(() {
                  isOpen.value;
                  return DockerAppBar(
                    isOpen: isOpen.value,
                    onTap: () {
                      isOpen.value = !isOpen.value;
                    },
                  );
                }),
                GradientText(
                  text: 'Make better, secure',
                  firstColor: Color.fromARGB(255, 32, 86, 34),
                  secondColor: Colors.green,
                  fontSize: 30,
                ),
                GradientText(
                  text: 'software from the start',
                  firstColor: Color.fromARGB(255, 32, 86, 34),
                  secondColor: Colors.green,
                  fontSize: 30,
                ),
                SizedBox(height: 30),
                Text(
                  'Announcing Docker Scout general availability.',
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Get.snackbar('hello', 'hihihihihih');
                  },
                  child: Text(
                    'Learn about Docker Scout',
                  ),
                  // green color
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                // url image https://www.docker.com/wp-content/uploads/2023/10/home-hero-scout.png.webp

                // CachedNetworkImage(
                //   imageUrl: "https://www.docker.com/wp-content/uploads/2023/10/home-hero-scout.png.webp",
                //   progressIndicatorBuilder: (context, url, downloadProgress) =>
                //       CircularProgressIndicator(value: downloadProgress.progress),
                //   errorWidget: (context, url, error) => const Icon(Icons.error),
                // ),

                // image from assets

                InkWell(
                  onTap: () {},
                  child: ClipPath(
                    clipper: BottomCurvedClipper(),
                    child: Image.asset(
                      'my_images/docker_image.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
                for (int i = 0; i < 10; i++)
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://www.docker.com/sites/default/files/d8/styles/logo_ribbon/public/2021-08/Docker-Logo-White-RGB_Vertical.png?itok=v1j2rXr0',
                        ),
                      ),
                      title: Text('hello-> ***${i}***'),
                      onTap: () {
                        Get.snackbar('hello', 'hihihihihih');
                      },
                      trailing: Icon(Icons.ac_unit),
                    ),
                  ),
              ],
            ),
            Positioned(
              top: 140,
              left: 200,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 80,
              left: 170,
              child: InkWell(
                onTap: () {
                  Get.snackbar('hello', 'hihihihihih');
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
