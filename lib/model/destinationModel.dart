import 'package:travel_app/model/activityModel.dart';

class Destination{
  String name;
  String country;
  String desc;
  String image;
  List<Activities> activites;

  Destination({this.image, this.name, this.activites, this.desc, this.country});
}

List<Activities> act = [
  Activities(
    image: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    subname: 'Sightseeing Tour',
    time: ['9:00 am', '11:00 am'],
    star: 5,
    price: 30,
  ),
  Activities(
    image: 'assets/images/murano.jpg',
    name: 'Murano Yoku Tour',
    subname: 'Miane Tour',
    time: ['12:30 pm', '2:00 pm'],
    star: 5,
    price: 99,
  ),
  Activities(
    image: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    subname: 'Sightseeing Tour',
    time: ['11:00 pm', '1:00 pm'],
    star: 4,
    price: 210,
  ),
  Activities(
    image: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    subname: 'Sightseeing Tour',
    time: ['12:30 pm', '2:00 pm'],
    star: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    image: 'assets/images/venice.jpg',
    name: 'Venice',
    country: 'Italy',
    desc: 'Visit Venice for an amazing and unforgettable adventure.',
    activites: act,
  ),
  Destination(
    image: 'assets/images/paris.jpg',
    name: 'Paris',
    country: 'France',
    desc: 'Visit Paris for an amazing and unforgettable adventure.',
    activites: act,
  ),
  Destination(
    image: 'assets/images/newdelhi.jpg',
    name: 'New Delhi',
    country: 'India',
    desc: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activites: act,
  ),
  Destination(
    image: 'assets/images/saopaulo.jpg',
    name: 'Sao Paulo',
    country: 'Brazil',
    desc: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activites: act,
  ),
  Destination(
    image: 'assets/images/newyork.jpg',
    name: 'New York City',
    country: 'United States',
    desc: 'Visit New York for an amazing and unforgettable adventure.',
    activites: act,
  ),
];