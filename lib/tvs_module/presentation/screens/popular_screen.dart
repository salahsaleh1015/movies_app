import 'package:flutter/material.dart';
import 'package:movies_app/tvs_module/presentation/component/popular_item_component.dart';
import 'package:movies_app/tvs_module/presentation/screens/details_screen.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 25,
        ),
        centerTitle: true,
        title: const Text("Popular Tvs",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            )),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, i) => const PopularItemComponent(),
        separatorBuilder: (context, i) => const SizedBox(
          height: 10,
        ),
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
