import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotifyclone/common/widgets/button/basic_app_button.dart';
import 'package:spotifyclone/core/configs/assets/app_images.dart';
import 'package:spotifyclone/core/configs/assets/app_vector.dart';
import 'package:spotifyclone/core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.ChooseModeBg),
              ),
            ),
          ),
          Container(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVector.logo),
                ),
                Spacer(),
                Text(
                  "Choose mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff30393C).withOpacity(0.5),
                              shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset(
                              AppVector.moonLogo,
                              fit: BoxFit.none,
                            ),
                          )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Dark Mode",style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold),)
                      ],
        
                    ),
                    SizedBox(width: 40,),
                    Column(
                      children: [
                       ClipOval(
                        child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff30393C).withOpacity(0.5),
                            shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset(
                            AppVector.sunLogo,
                            fit: BoxFit.none,
                          ),
                        ),
                        ),
                      ),
                      SizedBox(height: 15,),
                        Text("Light Mode",style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold),)
                      ]
                    )
                  ],
                ),
                SizedBox(height: 50),
                // page route
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ChooseModePage(),
                      ),
                    );
                  },
                  title: "Continue",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
