import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7FBFD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF7FBFD),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
        title: Center(
          child: Text(
            "My Profile",
            style: TextStyle(color: Color(0xFF22215B)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Color(0xFF22215B),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 51,
                        width: 51,
                        child: Image.asset(
                          "assets/images/profile.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Alfi Filsafalasafi",
                        style: TextStyle(
                            color: Color(0xFF22215B),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Software Develop",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF22215B)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consecture adipiscing elit, Orname pretium",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(
                            0xFF22215B,
                          ).withOpacity(0.6),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/add.png"),
                      Image.asset("assets/images/settings.png"),
                      Image.asset("assets/images/nganan.png"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                createFolder(
                  folder: Image.asset("assets/images/folder_biru.png"),
                  more: Image.asset("assets/images/more_biru.png"),
                  bg: Color(0xFFEEF7FE),
                  textColor: Color(0xFF415EB6),
                  title: "Mobile Apps",
                  date: "April 09.2022",
                ),
                createFolder(
                  folder: Image.asset("assets/images/folder_kuning.png"),
                  more: Image.asset("assets/images/more_kuning.png"),
                  bg: Color(0xFFFFFBEC),
                  textColor: Color(0xFFFFB110),
                  title: "SVG Icons",
                  date: "Mei 10.2022",
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                createFolder(
                  folder: Image.asset("assets/images/folder_merah.png"),
                  more: Image.asset("assets/images/more_merah.png"),
                  bg: Color(0xFFFEEEEE),
                  textColor: Color(0xFFAC4040),
                  title: "Prototype",
                  date: "September 29.2022",
                ),
                createFolder(
                  folder: Image.asset("assets/images/folder_birumuda.png"),
                  more: Image.asset("assets/images/more_birumuda.png"),
                  bg: Color(0xFFF0FFFF),
                  textColor: Color(0xFF23B0B0),
                  title: "Avatars",
                  date: "November 10.2022",
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Image.asset("assets/images/sort.png"),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Container(
                height: 45,
                width: 45,
                child: Image.asset(
                  "assets/images/word.png",
                  fit: BoxFit.cover,
                ),
              ),
              title: Text("Asistensi Mengajar.docx"),
              subtitle: Text("November 21.2022"),
              trailing: Text("467kb"),
            )
          ],
        ),
      ),
    );
  }
}

class createFolder extends StatelessWidget {
  const createFolder({
    required this.folder,
    required this.more,
    required this.bg,
    required this.textColor,
    required this.title,
    required this.date,
    Key? key,
  }) : super(key: key);

  final Image folder;
  final Image more;
  final Color bg;
  final Color textColor;
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              folder,
              more,
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: textColor),
          ),
          Text(
            date,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
