import 'package:flutter/material.dart';
import 'package:weddinghub/repsonsive/desktop_layout.dart';
import 'package:weddinghub/repsonsive/mobile_layout.dart';
import 'package:weddinghub/splash_screen.dart';

class ResponsivLayout extends StatefulWidget {
  ResponsivLayout({required this.mobile,required this.desktop});
  final Widget mobile;
  final Widget desktop;

  @override
  State<ResponsivLayout> createState() => _ResponsivLayoutState();
}

class _ResponsivLayoutState extends State<ResponsivLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,Constraints){
      if(Constraints.maxWidth > 904){
        return DesktopPage();
      }
      else{
        return MobilePage();
      }
    });
  }
}