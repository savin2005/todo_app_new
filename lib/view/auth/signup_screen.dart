import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:todo_app_new/model/components/button.dart';
import 'package:todo_app_new/model/components/textfiled.dart';
import 'package:todo_app_new/model/utils/appcolor.dart';
import 'package:todo_app_new/model/utils/appicons.dart';
import 'package:todo_app_new/model/utils/appservices.dart';
import 'package:todo_app_new/viewmodel/controller/cheekbox.dart';

class SignupScreenView extends StatefulWidget {
  SignupScreenView({super.key});

  @override
  State<SignupScreenView> createState() => _SignupScreenViewState();
}

class _SignupScreenViewState extends State<SignupScreenView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final CheckboxController checkboxController = Get.put(CheckboxController());
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 50,
                      ),
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
                  height: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  "Create your account",
                  style: AppServices.fs20white,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  "Full Name",
                  style: AppServices.fs16secondary,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 40,
                ),
                CustomTextFormField(
                    hintstyle: AppServices.fs13white,
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      color: AppColor.white,
                    ),
                    radius: 1,
                    controller: email,
                    hintText: "Fazil Laghari"),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  "Email Address",
                  style: AppServices.fs16secondary,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 40,
                ),
                CustomTextFormField(
                    hintstyle: AppServices.fs13white,
                    prefixIcon: Icon(Icons.perm_contact_cal_outlined,
                        color: AppColor.white),
                    radius: 1,
                    controller: email,
                    hintText: "fazzzil72@gmail.com"),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  "Password",
                  style: AppServices.fs16secondary,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 40,
                ),
                CustomTextFormField(
                    obscureText: isvisible,
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        icon: Icon(isvisible == false
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    hintstyle: AppServices.fs13white,
                    prefixIcon:
                        Icon(Icons.lock_outlined, color: AppColor.white),
                    radius: 1,
                    controller: password,
                    hintText: "********"),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 400,
                ),
                Row(
                  children: [
                    Obx(() => Checkbox(
                          value: checkboxController.isChecked.value,
                          onChanged: checkboxController.toggleCheckbox,
                          checkColor: AppColor.primarycolor,
                          // ignore: deprecated_member_use
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (states) {
                            // ignore: deprecated_member_use
                            if (states.contains(MaterialState.selected)) {
                              return AppColor.primarycolor;
                            } else {
                              return Colors.transparent;
                            }
                          }),
                          side: BorderSide(
                              color: AppColor.primarycolor, width: 2),
                        ))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                    borderRadius: 0,
                    textColor: AppColor.black,
                    color: AppColor.primarycolor,
                    text: Text(
                      "Login",
                      style: AppServices.fs16boldblack,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColor.secondarycolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Or continue with",
                        style: AppServices.fs13secondary,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColor.secondarycolor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomTextButton(
                    borderSide: BorderSide(color: AppColor.white),
                    borderRadius: 0,
                    textColor: AppColor.black,
                    text: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 13,
                          FontAwesomeIcons.google,
                          color: AppColor.white,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        Text(
                          "Google",
                          style: AppServices.fs16white,
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 15,
                ),
                Align(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Don’t have an account? ",
                        style: AppServices.fs13secondary),
                    TextSpan(text: "Sign Up", style: AppServices.fs13primary)
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
