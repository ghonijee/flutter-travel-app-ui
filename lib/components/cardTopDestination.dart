import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/styles/colorStyle.dart';
import 'package:travel_app/styles/textStyle.dart';

class CardTopDestination extends StatelessWidget {
  final String name;
  final String country;
  final String image;
  final String desc;
  final List act;

  const CardTopDestination({Key key, this.name, this.country, this.image, this.desc, this.act}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10, bottom: 5),
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(image,
                        height: 135, fit: BoxFit.cover)),
                Container(
                  height: 135,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: nameDestination,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.place,
                            color: Colors.red,
                            size: 12,
                          ),
                          Text(
                            country,
                            style: placeDestination,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    act.length.toString() + " Activtites",
                    style: titleCardDes,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    desc,
                    style: descCardDest,
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
