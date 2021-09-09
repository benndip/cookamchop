import 'package:flutter/material.dart';
import 'package:cookamchop/widgets/banner_items.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> bannerItems = [];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.6,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: size.width * 0.75,
                        height: size.width * 0.75,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.amberAccent,
                          ),
                          borderRadius: BorderRadius.circular(
                            (size.width * 0.75) / 2,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: size.width * 0.55,
                        height: size.width * 0.55,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(37, 39, 40, 1),
                          borderRadius: BorderRadius.circular(
                            (size.width * 0.55) / 2,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: BannerItems(
                        topImagePath: 'assets/images/chefCook.png',
                        bottomImagePath: 'assets/images/chefCook.png',
                        rotationAngle: 0,
                      ),
                    ),
                    Center(
                      child: BannerItems(
                        topImagePath: 'assets/images/chefCook.png',
                        bottomImagePath: 'assets/images/chefCook.png',
                        rotationAngle: math.pi / 3,
                      ),
                    ),
                    Center(
                      child: BannerItems(
                        topImagePath: 'assets/images/chefCook.png',
                        bottomImagePath: 'assets/images/chefCook.png',
                        rotationAngle: 2 * (math.pi / 3),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.75,
                child: Column(
                  children: [
                    Text(
                      'Wanna Cook',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(37, 39, 40, 1),
                        fontSize: 25,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'something'),
                          TextSpan(
                            text: ' Delicious',
                            style: TextStyle(
                              color: Color.fromRGBO(232, 142, 52, 1),
                            ),
                          ),
                          TextSpan(text: ' ?'),
                        ],
                      ),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(37, 39, 40, 1),
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: size.width * 0.65,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(37, 39, 40, 1),
                      side: BorderSide(
                        style: BorderStyle.solid,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
