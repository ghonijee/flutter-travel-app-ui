import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_app/components/FadeAnimation.dart';
import 'package:travel_app/components/cardExclusiveHotel.dart';
import 'package:travel_app/components/cardTopDestination.dart';
import 'package:travel_app/components/iconTrans.dart';
import 'package:travel_app/model/destinationModel.dart';
import 'package:travel_app/model/hotelModel.dart';
import 'package:travel_app/styles/colorStyle.dart';
import 'package:travel_app/styles/textStyle.dart';

import 'detailDestination.dart';

class Home extends StatelessWidget {
  var _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 247, 1),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeIn(0.75, Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                "What you would like \nto find?",
                style: headingText,
              ),
            )),
            FadeIn(1, Container(
              margin: EdgeInsets.only(bottom: 30.0),
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return icons[index];
                },
              ),
            )),
            FadeIn(0.5, Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Top Destinations",
                    style: subHeadingText,
                  ),
                  Text(
                    "See All",
                    style: textAction,
                  )
                ],
              ),
            )),
            Divider(
              height: 10,
            ),
            FadeIn(0.8, Container(
              margin: EdgeInsets.only(top: 15),
              height: 250,
              child: FadeIn(.251,ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: DetailDestination(idDestination: index)));
                    },
                    child: CardTopDestination(
                      name: destinations[index].name,
                      country: destinations[index].country,
                      image: destinations[index].image,
                      desc: destinations[index].desc,
                      act: destinations[index].activites,
                    ),
                  );
                },
              )),
            )),
            FadeIn(0.5, Padding(
              padding: const EdgeInsets.only(right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Exclusif Hotels",
                    style: subHeadingText,
                  ),
                  Text(
                    "See All",
                    style: textAction,
                  )
                ],
              ),
            )),
            Divider(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 250,
              child: FadeIn(1.5, ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (context, key){
                  return ExclusiveHotel(
                    name: hotels[key].name,
                    imageUrl: hotels[key].imageUrl,
                    price: hotels[key].price,
                    address: hotels[key].address,
                  );
                },
              )),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.search,
                size: 20,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.hamburger, size: 20),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userCircle, size: 20),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
