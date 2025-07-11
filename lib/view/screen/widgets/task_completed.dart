import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_new/model/task_projects.dart';
import 'package:todo_app_new/model/utils/appcolor.dart';
import 'package:todo_app_new/model/utils/appicons.dart';
import 'package:todo_app_new/model/utils/appservices.dart';
import 'package:todo_app_new/viewmodel/controller/controlers.dart';

class TaskCompletedScreenView extends StatelessWidget {
  TaskProjects data;
  int index;
  TaskCompletedScreenView({super.key, required this.data, required this.index});
  Controlers getxcontloer = Get.put(Controlers())
  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 10,
      color: index == 0 ? AppColor.primarycolor : AppColor.secondarycolor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data.title!,
                style:
                    index == 0 ? AppServices.fs20black : AppServices.fs20white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.subtitle!,
                    style: index == 0
                        ? AppServices.fs11black
                        : AppServices.fs11white),
                Row(
                  children: [
                    Image.asset(AppIcons.profilephoto,
                        width: MediaQuery.of(context).size.width / 40),
                    Image.asset(AppIcons.profilephoto,
                        width: MediaQuery.of(context).size.width / 40),
                    Image.asset(AppIcons.profilephoto,
                        width: MediaQuery.of(context).size.width / 40),
                  ],
                )
              ],
            ),
            Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Complete",
                    style: index == 0
                        ? AppServices.fs11black
                        : AppServices.fs11white),
                Text("100%",
                    style: index == 0
                        ? AppServices.fs11black
                        : AppServices.fs11white),
              ],
            ),
            Slider(value: getxcontloer.qpacity.value , onChanged: (value) {

            },)
          ],
        ),
      ),
    );
  }
}
