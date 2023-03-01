import 'package:flutter/material.dart';
import 'package:movies_app/tvs_module/presentation/screens/top_rated_screen.dart';

class TvTopRatedComponent extends StatelessWidget {
  const TvTopRatedComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text("Top Rated",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const TopRatedScreen()));
                },
                child: const Text("see more",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15)),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              )
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("images/raya.jpg"),
                        fit: BoxFit.cover)),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
