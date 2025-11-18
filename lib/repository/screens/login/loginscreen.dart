import 'package:blinkit_clone/repository/screens/bottomnav/bottomnavbar.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: Text("Login Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Uihelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
          10.verticalSpace,
          Uihelper.CustomImage(img: "image 10.png"),
          10.verticalSpace,
          Uihelper.CustomText(
            text: "India's last minute app",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontsize: 20,
            fontfamily: "bold",
          ),
          10.verticalSpace,
          Center(
            child: SizedBox(
              width: 350,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      20.verticalSpace,
                      Uihelper.CustomText(
                        text: "Harpreet singh",
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontsize: 14,
                      ),
                      5.verticalSpace,

                      Uihelper.CustomText(
                        text: "76652XXXXX",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.bold,
                        fontsize: 14,
                      ),
                      5.verticalSpace,

                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Bottomnavbar(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Uihelper.CustomText(
                                text: "Login  with",
                                color: Color(0XFFFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontsize: 14,
                                fontfamily: "bold",
                              ),
                              5.horizontalSpace,
                              Uihelper.CustomImage(img: "image 9.png"),
                            ],
                          ),
                        ),
                      ),
                      5.verticalSpace,
                      Uihelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.normal,
                        fontsize: 10,
                      ),
                      5.verticalSpace,
                      Uihelper.CustomText(
                        text: "or login with phone number",
                        color: Color(0XFF269237),
                        fontWeight: FontWeight.bold,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
