import 'package:flutter/material.dart';
import 'package:movies_app/tvs_module/presentation/screens/details_screen.dart';

class PopularItemComponent extends StatelessWidget {
  const PopularItemComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return const DetailsScreen(); }));
      },
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xff303030),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset("images/raya.jpg", fit: BoxFit.fill),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Raya and the last dragon",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 140,
                      child: Row(

                        children: [
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.red,
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
                          const Text("3,4")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Five hundred years ago, the peaceful and prosperous sub-continent of Kumandra is ravaged by the Druun,",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
