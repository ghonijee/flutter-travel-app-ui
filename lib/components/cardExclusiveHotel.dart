import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/styles/colorStyle.dart';
import 'package:travel_app/styles/textStyle.dart';

class ExclusiveHotel extends StatelessWidget {
  String imageUrl;
  String name;
  String address;
  int price;

  ExclusiveHotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10, bottom: 5),
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3/2,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover
                      ),
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: titleCardDes,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$"+price.toString()+"/Night",
                    style: priceTextHotel,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
