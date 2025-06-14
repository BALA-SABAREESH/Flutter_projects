import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Google photos
                    //ReachText why use means give colors for each letter it is easy method
                    RichText(
                      text: const TextSpan(
                        text: "G",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                        children: [
                          TextSpan(
                            text: "o",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: "o",
                            style: TextStyle(
                              color: Color(0xfff9d906),
                            ),
                          ),
                          TextSpan(
                            text: "g",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          TextSpan(
                            text: "l",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          TextSpan(
                              text: "e",
                              style: TextStyle(
                                color: Colors.red,
                              )),
                          TextSpan(
                            text: " Photos",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    //profile Image
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU_zg-V2qrU6uIC9wk3SDN6Wc5QhhJu4_tK2Dxp2-1BNMWX7JJ8WjcOjVIJ8kcbMLo5Cs&usqp=CAU"),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 330,
                //color: Colors.red,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  //Left to Right Image
                  child: Row(
                    children: [
                      buildContainer_top("1 Year ago",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNw2JmJF0bbq6DN2sMUL6RdSbG2xE-yqZNfw&s"),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer_top("Similar Photo",
                          "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2020/01/Pongal-Harvest-Celebrations-in-South-India.jpg?fit=1024%2C700&ssl=1"),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer_top("Family Photo",
                          "https://static.vecteezy.com/system/resources/previews/029/152/696/non_2x/rear-view-of-happy-family-father-mother-daughter-and-son-enjoying-beautiful-landscape-and-running-in-a-field-at-sunset-generative-ai-illustration-photo.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer_top("2 Years ago",
                          "https://i.pinimg.com/736x/d0/d2/36/d0d236718ee188ca9c3c8999504d2250.jpg"),
                    ],
                  ),
                ),
              ),
              //Date with Location and icon
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    //Date + Loation
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sat 18 Jan",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Bhavani",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 185,
                    ),
                    Icon(
                      Icons.check_circle_outline_outlined,
                      size: 30,
                    ),
                  ],
                ),
              ),
              //bottom image

              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 190,
                    width: 95,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 95,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/thumbnails/050/056/176/small_2x/a-baby-with-blue-eyes-is-laying-on-a-white-blanket-photo.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 60,
                          width: 95,
                          //color: Colors.green,
                          child: Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Friends_.jpg/1280px-Friends_.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 60,
                          width: 95,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://wellbeloved.com/cdn/shop/articles/JWB-5-Image-1.jpg?v=1716214755"),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 190,
                    width: 140,
                    //color: Colors.red,
                    child: Image(
                      image: NetworkImage(
                          "https://cdn.lazyshop.com/files/d7d7bfe9-0dea-44e3-99e2-9679978ef202/product/0d08c3414c6785cfa6a0b0374bdec20a.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 190,
                    width: 95,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 95,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?cs=srgb&dl=pexels-pixabay-206359.jpg&fm=jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 60,
                          width: 95,
                          //color: Colors.green,
                          child: Image(
                            image: NetworkImage(
                                "https://thumbs.dreamstime.com/b/ai-generated-image-d-vibrant-colorful-peacock-tail-feathers-details-bird-pattern-nature-concept-background-339090548.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 60,
                          width: 95,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://cdn.bikedekho.com/processedimages/royal-enfield/classic350/source/classic35066d56de6e0911.jpg"),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 342,
                    //color: Colors.black,
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 114,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://play-lh.googleusercontent.com/2l1DrdflgaIHCRDKUog01Y_-bMBpvOjVRHBDJt8G0tdYJtCdndcxXAOdfEjJ02ogZg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 100,
                          width: 109,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://www.flamingotravels.co.in/_next/image?url=https%3A%2F%2Fimgcdn.flamingotravels.co.in%2FImages%2FCountry%2Frussia-best-time-to-visit.jpg&w=1080&q=75"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 100,
                          width: 109,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://t3.ftcdn.net/jpg/06/33/00/42/360_F_633004264_b6ZuRQZYAsZIEYfWdY15EAOiaG4ZJIbn.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 190,
                    width: 120,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 120,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://i.pinimg.com/236x/b4/69/37/b4693779ab0502d41b662c6d65bd4176.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 60,
                          width: 120,
                          //color: Colors.green,
                          child: Image(
                            image: NetworkImage(
                                "https://png.pngtree.com/png-clipart/20240725/original/pngtree-watercolor-of-cute-brother-and-sister-in-school-uniform-png-image_15631197.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 60,
                          width: 120,
                          //color: Colors.blue,
                          child: Image(
                            image: NetworkImage(
                                "https://t4.ftcdn.net/jpg/08/97/69/51/360_F_897695187_zneBRBPCCS1bDp8Ruj6XFiBO7nVwWaU8.jpg"),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 190,
                    width: 214,
                    //color: Colors.red,
                    child: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/21/7a/b1/217ab1dca793384d0b97fddee49225e9.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer_top(txt, img) {
    return Container(
      height: 200,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                txt,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      //color: Colors.black,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
    );
  }
}
