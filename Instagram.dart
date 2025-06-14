import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              //color: Colors.black,
              child: const Row(children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                SizedBox(
                  width: 105,
                ),
                Center(
                  child: Text(
                    "♡",
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.message_rounded,
                  color: Colors.black,
                  size: 27,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              height: 130,
              //color: Colors.black,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    buildContainer_top(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReay38JwGODjNp6W0w9eoEI-RBjRwjTTOvErLBX12X4UIv2i33LOZsTSw1FMqwAPMh95s&usqp=CAU",
                        "Sabareesh"),
                    buildContainer_top(
                        "https://static.vecteezy.com/system/resources/previews/035/162/538/large_2x/ai-generated-3d-baby-girl-beautifull-photo.jpg",
                        "Shree"),
                    buildContainer_top(
                        "https://i.pinimg.com/236x/af/61/44/af61446d324fa0b1e6b611ed23881bbe.jpg",
                        "Mani"),
                    buildContainer_top(
                        "https://img.freepik.com/premium-photo/baby-gbaby-god-ayyappa-swami-with-tiger-od-ayyappa-swami-with-tiger_1128161-16.jpg",
                        "Ayyappan"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 70,
              //color: Colors.white70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xffef0da4),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://www.shutterstock.com/shutterstock/photos/2177992851/display_1500/stock-photo-god-ayapana-swami-drawing-manikanta-swamy-drawing-sabarimala-swami-ayyappan-sketch-2177992851.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Ayyappa",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 310,
              //color: Colors.black,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://tirupatibalajitravels.co.in/wp-content/uploads/2024/11/Sabarimala-Ayyappan-Temple-Trip-from-Chennai.jpg"),
                      fit: BoxFit.cover)),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "♡",
                  style: TextStyle(color: Colors.black, fontSize: 37),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "242.2k",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.comment),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "2.2k",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.share),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "2.2k",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(Icons.save_alt),
              ],
            ),
            Container(
              width: double.infinity,
              height: 70,
              //color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xffef0da4),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://m.media-amazon.com/images/M/MV5BNWFlNmJkN2YtNGRiZS00NjExLTlmNmEtYzdiMTdiZmMzYzAwXkEyXkFqcGc@._V1_.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "BlueLock Anime",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 340,
              child: Row(
                children: [
                  Container(
                      height: 340,
                      width: 170,
                      color: Colors.black,
                      child: Image(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx680cG6ZrKAiLb3XhDqdvSQGRsOCwJC6omkHlg063-L35lK06vOTqDkhauE4lBraDldg&usqp=CAU"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                      height: 340,
                      width: 190,
                      color: Colors.black,
                      child: Image(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/M/MV5BOGRhNDQ3NTgtMmU3YS00OWI0LTgyMmUtNGQwODk0MDg2YTYzXkEyXkFqcGc@._V1_.jpg"),
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "♡",
                  style: TextStyle(color: Colors.black, fontSize: 37),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "24.2k",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.comment),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "2.4k",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.share),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "1.7k",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(Icons.save_alt),
              ],
            )
          ],
        ),
      )),
    );
  }

  Container buildContainer_top(img, txt) {
    return Container(
      width: 100,
      height: 130,
      //color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: Color(0xff0ad211),
            child: CircleAvatar(
              radius: 41,
              backgroundImage: NetworkImage(img),
            ),
          ),
          Text(
            txt,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
