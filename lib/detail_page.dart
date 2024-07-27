import 'package:flutter/cupertino.dart';
import 'package:plantapp/product.dart';

import 'detailscreen.dart';

class DetailPage1 extends StatelessWidget {
   DetailPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(tag: "flower1",
      child: DetailScreen(
          name: "House Shape \n ClosePlant",
          price: "\$45",
          image: "images/img_3.png"),
    );
  }
}
class DetailPage2 extends StatelessWidget {
   DetailPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(tag: "flower2",
      child: DetailScreen(
          name: "Glass Water",
          price: "\$60",
          image: "images/img_5.png"),
    );
  }
}

