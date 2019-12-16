import 'package:flutter/material.dart';
import 'package:smart_medix/scr/models/places.dart';

import 'image_card.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
List<Place> places = [
  Place(place: 'Clinic', image: 'assets/clinic1.jpg', days: 7),
  Place(place: 'Laboratory', image: 'assets/lab.jpeg', days: 7),
  Place(place: 'Counselling', image: 'assets/pscy.jpg', days: 7),
  Place(place: 'Pharmacy', image: 'assets/logopharm.PNG', days: 7),
  Place(place: 'X-ray Unit', image: 'assets/lab.jpeg', days: 7),
];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (_, index) {
          return ImageCard(
            place: places[index],
            name: places[index].place,
            days: places[index].days,
            picture: places[index].image,
          );
        }
      ),
    );
  }
}