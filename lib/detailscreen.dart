import 'package:flutter/material.dart';
import 'package:plantapp/colors.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const DetailScreen({super.key, required this.name, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            bottomParts(context),
            Positioned(
                top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(200)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top,
                            right: 16,
                            left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 30,
                              ),
                            ),
                            Image.asset(
                              "images/ff.png",
                              height: 25,
                              width: 25,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Text(
                          name,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              height: 1.01),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 42),
                        child: Stack(
                          children: [
                            Image.asset(
                              image,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 250),
                              child: Container(
                                height: 22,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 275),
                              child: Container(
                                height: 10,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.pink[100]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 290),
                              child: Container(
                                height: 10,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.pink[100]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 305),
                              child: Container(
                                height: 10,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.pink[100]),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
                top: 270,
                left  : 32,
                child: Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )),
            Positioned(
                top: 140,
                right: 40,
                child: Icon(
                  Icons.favorite_border,
                  size: 32,
                  color: primaryColor,
                )),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: primaryColor),
                height: 70,
                width: 70,
                child: Icon(
                  Icons.add_circle,
                  color: secondaryColor,
                  size: 50,
                ),
              ),
              top: 430,
              right: 0,
            )
          ],
        ),
      ),
    );
  }

  Positioned bottomParts(BuildContext context) {
    return Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                color: primaryColor,
                child: Padding(
                  padding: EdgeInsets.only(top: 800, left: 24),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "40cm - 50cm",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white),
                          ),

                        ],
                      ),
                      SizedBox(width: 25,),
                      Column(
                        children: [
                          Text(
                            "Pot",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "self watering pot",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text(
                            "Temperatre",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "18C - 25C",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ));
  }
}
