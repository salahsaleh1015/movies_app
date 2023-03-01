import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/tvs_module/presentation/component/on_air_compnent.dart';
import 'package:movies_app/tvs_module/presentation/component/tv_popular_component.dart';
import 'package:movies_app/tvs_module/presentation/component/tv_top_rated_module.dart';

class MainTvScreen extends StatelessWidget {
  const MainTvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [

            OnAirComponent(),
            SizedBox(
              height: 20,
            ),
            TvPopularComponent(),
            TvTopRatedComponent(),
          ],
        ),
      ),
    );
  }
}
