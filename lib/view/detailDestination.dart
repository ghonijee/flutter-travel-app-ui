import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/components/cardActivity.dart';
import 'package:travel_app/model/destinationModel.dart';
import 'package:travel_app/styles/colorStyle.dart';
import 'package:travel_app/styles/textStyle.dart';

class DetailDestination extends StatelessWidget {
  final int idDestination;

  const DetailDestination({Key key, this.idDestination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 247, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 6/4,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(destinations[idDestination].image),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25)
                          )
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25)
                            )
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          destinations[idDestination].name,
                          style: nameCountry
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.place,
                              color: Colors.red,
                              size: 18,
                            ),
                            Text(
                              destinations[idDestination].country,
                              style: placeDetailDestination,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 32,
                      color: textName,
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(right: 15, left: 15),
                height: MediaQuery.of(context).size.height * (0.6),
                child: ListView(
                scrollDirection: Axis.vertical,
                  children: act.asMap().entries.map((data){
                    return CardActivity(data: act[data.key]);
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
