import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/activityModel.dart';
import 'package:travel_app/model/destinationModel.dart';
import 'package:travel_app/styles/colorStyle.dart';
import 'package:travel_app/styles/textStyle.dart';

import 'StarActivity.dart';

class CardActivity extends StatelessWidget {
  final Activities data;

  const CardActivity({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(left: 15, bottom: 5),
      child: AspectRatio(
          aspectRatio: 5 / 2,
          child: Row(
              children: <Widget>[
            Transform.translate(
              offset: Offset(-15, 0),
              child: AspectRatio(
                aspectRatio: 4 / 6,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(data.image), fit: BoxFit.cover)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(data.name,textAlign: TextAlign.left, style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textPrimary
                            ),),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text("\$"+ data.price.toString(), style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: textPrimary,
                                fontSize: 24
                            ),textAlign: TextAlign.right,),
                            Text("per pax", style: TextStyle(fontSize: 14, color: textSecondary),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(data.subname, style: TextStyle(color: Colors.grey[500], fontSize: 13,),),
                    SizedBox(height: 2,),
                    StarRate(rate: data.star,),
                    SizedBox(height: 5,),
                    Row(
                      children: data.time.map((n){
                        return Container(
                          margin: EdgeInsets.only(right: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: iconActiveColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text(n),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
