import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_new/model/utils/appcolor.dart';

class AppServices {
  static TextStyle fs13white =
      GoogleFonts.playfair(fontSize: 13, color: AppColor.white);
  static TextStyle fs16 = GoogleFonts.playfair(fontSize: 15);
  static TextStyle fs16white =
      GoogleFonts.playfair(fontSize: 15, color: AppColor.white);
  static TextStyle fs16boldblack = GoogleFonts.playfair(
      fontSize: 16, color: AppColor.black, fontWeight: FontWeight.bold);
  static TextStyle fs16secondary =
      GoogleFonts.playfair(color: AppColor.secondarycolor, fontSize: 16);
  static TextStyle fs13secondary =
      GoogleFonts.playfair(color: AppColor.secondarycolor, fontSize: 13);
  static TextStyle fs13primary =
      GoogleFonts.playfair(color: AppColor.primarycolor, fontSize: 13);
  static TextStyle fs20white =
      GoogleFonts.playfair(fontSize: 20, color: AppColor.white);
  static TextStyle fs16primary =
      GoogleFonts.playfair(fontSize: 15, color: AppColor.primarycolor);
  static TextStyle fs35primary =
      GoogleFonts.playfair(fontSize: 35, color: AppColor.primarycolor);
  static TextStyle fs35white =
      GoogleFonts.playfair(fontSize: 35, color: AppColor.white);
}
