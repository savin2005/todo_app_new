import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_app_new/model/components/button.dart';
import 'package:todo_app_new/model/components/textfiled.dart';
import 'package:todo_app_new/model/utils/appcolor.dart';
import 'package:todo_app_new/model/utils/appicons.dart';
import 'package:todo_app_new/model/utils/appservices.dart';
import 'package:todo_app_new/view/auth/signup_screen.dart';
import 'package:todo_app_new/view/screen/homescreen.dart';

class LoginScreenView extends StatefulWidget {
  LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
                  "Welcome Back!",
                  style: AppServices.fs20white,
                ),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  child: CustomTextFormField(
                      hintstyle: AppServices.fs13white,
                      prefixIcon: Icon(Icons.perm_contact_cal_outlined,
                          color: AppColor.white),
                      radius: 1,
                      controller: email,
                      hintText: "fazzzil72@gmail.com"),
                ),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  child: CustomTextFormField(
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
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 400,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: AppServices.fs16secondary,
                    ),
                  ),
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
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomescreenScreenView(),
                      ));
                    },
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
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignupScreenView(),
                    ));
                  },
                  child: Align(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Don’t have an account? ",
                          style: AppServices.fs13secondary),
                      TextSpan(text: "Sign Up", style: AppServices.fs13primary)
                    ])),
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
