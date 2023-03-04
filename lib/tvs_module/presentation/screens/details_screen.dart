import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset("images/raya.jpg"),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Raya and the last dragon",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff424242),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          "2022",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("3,4"),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("1 seasons 24 min"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Five hundred years ago, the peaceful and prosperous sub-continent of Kumandra is ravaged by the Druun, mindless purple-and-black-colored spirits that turn every living thing in their path to stone. Sisu, the last surviving dragon, is given her siblings' magic which was placed in a gem. She concentrates her magic into the gem and blasts the Druun away, reviving Kumandra's people but not its dragons. A power struggle for the gem divides Kumandra's people into five separate chiefdoms called Fang, Heart, Spine, Talon, and Tail, corresponding to their placement along a gigantic dragon-shaped river.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 111,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
