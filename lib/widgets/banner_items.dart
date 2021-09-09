import 'package:flutter/material.dart';

class BannerItems extends StatelessWidget {
  final String topImagePath;
  final String bottomImagePath;
  final double rotationAngle;

  BannerItems({this.topImagePath, this.bottomImagePath, this.rotationAngle});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizeOfBox = 80.0;

    return Transform.rotate(
      angle: rotationAngle,
      child: Container(
        width: sizeOfBox,
        height: (size.width * 0.75) + sizeOfBox,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: sizeOfBox / 2,
              height: sizeOfBox / 2,
              child: Center(
                child: Image.asset(
                  topImagePath,
                  width: sizeOfBox / 2,
                  height: sizeOfBox / 2,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(sizeOfBox / 2),
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: (size.width * 0.75) - sizeOfBox / 2,
            ),
            Container(
              width: sizeOfBox / 2,
              height: sizeOfBox / 2,
              child: Center(
                child: Image.asset(
                  bottomImagePath,
                  width: sizeOfBox / 2,
                  height: sizeOfBox / 2,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(sizeOfBox / 2),
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
