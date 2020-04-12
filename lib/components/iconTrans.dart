import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/styles/colorStyle.dart';

class IconsTransport extends StatelessWidget {

  final IconData icon;
  final bool actived;

  const IconsTransport({Key key, this.icon, this.actived}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      width: 60,
      decoration: BoxDecoration(
          color: (actived)? bgIconColor: bgIconColor, 
          borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: FaIcon(
        icon,
        color: (actived)? iconActiveColor: textSecondary,
      )),
    );
  }
}

List<IconsTransport> icons = [
  IconsTransport(
    icon: FontAwesomeIcons.plane,
    actived: true,
  ),
  IconsTransport(
    icon: FontAwesomeIcons.car,
    actived: false,
  ),
  IconsTransport(
    icon: FontAwesomeIcons.motorcycle,
    actived: false,
  ),
  IconsTransport(
    icon: FontAwesomeIcons.train,
    actived: false,
  ),
  IconsTransport(
    icon: FontAwesomeIcons.walking,
    actived: false,
  ),
  IconsTransport(
    icon: FontAwesomeIcons.ship,
    actived: false,
  ),
];
