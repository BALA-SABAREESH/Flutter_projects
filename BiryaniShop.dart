import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

String mainimg =
    "https://i.pinimg.com/736x/ac/95/7b/ac957bd5463b9464d059cfd8cc35ef18.jpg";

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            //logo
            Center(
              child: Image(
                  image: NetworkImage(
                      "data:image/png;base64,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")),
            ),
            //menu
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //types of biryani
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer("Kolkata biryani"),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer("Ambur biryani"),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer("Dindigul Biryani"),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer("Dindigul Biryani"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 397,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 397,
                    width: 160,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      //biryani image
                      child: Column(children: [
                        //SizedBox(height: 10,),
                        buildGestureDetector(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8u1fVvAHEUSYdFBExgPf1RUz0UnmgoXv0yCjaUYDdRbuEZRimLfkEwXwlLUHBln4QJjo&usqp=CAU"),
                        SizedBox(
                          height: 15,
                        ),
                        buildGestureDetector(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPLVLIb6gPJ16_Kj0lCTJYecK2OAuZGzoUOo5Wwi7Kr1Yn1EHfkA0tRFRRrXEjpJFW2kI&usqp=CAU"),
                        SizedBox(
                          height: 15,
                        ),
                        buildGestureDetector(
                            "https://img1.exportersindia.com/product_images/bc-small/2022/1/9362162/ready-to-eat-veg-biryani-1643090144-6172215.jpeg"),
                        SizedBox(
                          height: 15,
                        ),
                        buildGestureDetector(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNh4S0cJ6vGTb8IWNt8jKjx4XbTg4VcKQFOXRtBIdytF--tz9Y"),
                      ]),
                    ),
                  ),
                  //main menu

                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(mainimg),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(9, 9),
                                color: Colors.black,
                                blurRadius: 6,
                              )
                            ]),
                      ),
                      //ingredients
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Ingredients",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff5c00fc)),
                      ),
                      Container(
                        width: 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              buildCircleAvatar(
                                  "https://media.istockphoto.com/id/545343756/photo/chickens-on-traditional-free-range-poultry-farm.jpg?s=612x612&w=0&k=20&c=AXGb-A4jCpeTsoZEHQYTS43jHxMGkm-_yDVgx9J0uqc="),
                              SizedBox(
                                width: 5,
                              ),
                              buildCircleAvatar(
                                  "https://www.fruits365.shop/cdn/shop/products/puja-coconut_grande.jpg?v=1672228187"),
                              SizedBox(
                                width: 5,
                              ),
                              buildCircleAvatar(
                                  "https://cdn.tarladalal.com/members/9306/big/big_cooked_biryani_rice-12734.jpg"),
                              SizedBox(
                                width: 5,
                              ),
                              buildCircleAvatar(
                                  "data:image/jpeg;base64,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"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Kolkata biryani",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffc30745)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "₹.200",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xffc30745)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(img) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.black,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(img),
        radius: 30,
      ),
    );
  }

  GestureDetector buildGestureDetector(img) {
    return GestureDetector(
      onTap: () {
        print("Type 1");
        //setState(() {
        //mainimg = img;
        //});
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                offset: Offset(9, 9),
                color: Colors.black,
                blurRadius: 6,
              )
            ]),
      ),
    );
  }

  Container buildContainer(txt) {
    return Container(
      height: 30,
      width: 150,
      color: Colors.black,
      child: Center(
        child: Text(
          txt,
          //textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
