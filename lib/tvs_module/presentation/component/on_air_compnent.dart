import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnAirComponent extends StatelessWidget {
  const OnAirComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 1.0,
          onPageChanged: (int index, reason) {},
          scrollDirection: Axis.horizontal,
          height: 400.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Stack(
          children: [
            ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      // fromLTRB
                      Colors.transparent,
                      Colors.black,
                      Colors.black,
                      Colors.transparent,
                    ],
                    stops: [0, 0.3, 0.5, 1],
                  ).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset("images/raya.jpg",fit: BoxFit.cover,height: 400,)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.circle,color: Colors.red,size: 15),
                  Text("on the Air".toUpperCase()),
                ],
              ),
            ),

          ],
        );
      }).toList(),
    );
  }
}
