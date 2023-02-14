import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 110),
                Container(
                  height: 189,
                  width: 171,
                  child: Image.asset(
                    "assets/images/cloud.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 20, color: Color(0xFF22215B)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Dirbbox",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF22215B)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 245,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data \n\n\nJoin For Free",
                    style: TextStyle(
                      color: Color(0xFF7B7F9E),
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/sidikjari.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Smart ID",
                            style: TextStyle(color: Color(0xFF567DF4)),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFEEF7FE),
                        fixedSize: Size(
                          150,
                          50,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Smart ID",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset("assets/images/panah.png"),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF567DF4),
                          fixedSize: Size(
                            150,
                            50,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Center(child: Text("Use Social Login")),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/ig.png"),
                    SizedBox(width: 50),
                    Image.asset("assets/images/tw.png"),
                    SizedBox(width: 50),
                    Image.asset("assets/images/fb.png"),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Center(child: Text("Create an account")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
