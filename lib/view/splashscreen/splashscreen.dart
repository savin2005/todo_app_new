import 'package:flutter/material.dart';
import 'package:todo_app_new/model/components/button.dart';
import 'package:todo_app_new/model/utils/appcolor.dart';
import 'package:todo_app_new/model/utils/appicons.dart';
import 'package:todo_app_new/model/utils/appservices.dart';

import 'package:todo_app_new/view/auth/login_screen.dart';

class SplashscreenView extends StatelessWidget {
  const SplashscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        AppIcons.Applogo,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 100,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: "Day", style: AppServices.fs16white),
                        TextSpan(text: "Task", style: AppServices.fs16primary)
                      ])),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 10,
                ),
                Container(
                  color: AppColor.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Image.asset(
                      AppIcons.chairsittingmen,
                    ),
                  ),
                ),
                Text(
                  "Manage\nyour\nTask\nwith",
                  style: AppServices.fs35white,
                ),
                Text(
                  "DayTask",
                  style: AppServices.fs35primary,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                    borderRadius: 0,
                    textColor: AppColor.black,
                    color: AppColor.primarycolor,
                    text: Text(
                      "Let's Start",
                      style: AppServices.fs16boldblack,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginScreenView(),
                      ));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
