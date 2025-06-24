import 'package:flutter/material.dart';
import 'package:todo_app_new/model/components/textfiled.dart';
import 'package:todo_app_new/model/task_projects.dart';
import 'package:todo_app_new/model/utils/appcolor.dart';
import 'package:todo_app_new/model/utils/appicons.dart';
import 'package:todo_app_new/model/utils/appservices.dart';
import 'package:todo_app_new/model/utils/gap.dart';
import 'package:todo_app_new/view/screen/widgets/task_completed.dart';

class HomescreenScreenView extends StatelessWidget {
  HomescreenScreenView({super.key});
  TextEditingController searchitems = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back!",
              style: AppServices.fs13primary,
            ),
            Text(
              "Fazil Laghari",
              style: AppServices.fs20white,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(AppIcons.profilephoto),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 13,
                    child: CustomTextFormField(
                        hintstyle: AppServices.fs13grey,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: AppColor.grey,
                          size: 14,
                        ),
                        radius: 1,
                        controller: searchitems,
                        hintText: "Seach tasks"),
                  ),
                ),
                Gap.horizontal(MediaQuery.of(context).size.width / 40),
                IconButton(
                    style: IconButton.styleFrom(
                        backgroundColor: AppColor.primarycolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    onPressed: () {},
                    icon: Icon(
                      Icons.format_list_bulleted_sharp,
                      color: AppColor.black,
                    ))
              ],
            ),
            Gap.vartical(MediaQuery.of(context).size.height / 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Completed Tasks",
                  style: AppServices.fs16white,
                ),
                Text(
                  "See All",
                  style: AppServices.fs16primary,
                )
              ],
            ),Gap.vartical(MediaQuery.of(context).size.height / 40),

            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Gap.horizontal(MediaQuery.of(context).size.width / 20);
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: TaskProjects.projectslist.length,
                itemBuilder: (context, index) {
                  return TaskCompletedScreenView(
                    index: index,
                    data: TaskProjects.projectslist[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
