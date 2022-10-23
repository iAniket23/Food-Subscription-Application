import 'package:flutter/material.dart';
import '/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  
  
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  // constructor
  const ResponsiveLayout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < webScreenSize) {
          return mobileScreenLayout;
        } else {
          return webScreenLayout;
        }
      },
    
    );
  }
}