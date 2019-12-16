import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/cats/eye.png',
            image_caption: 'Eye Drop',
          ),

          Category(
            image_location: 'assets/cats/diet.jpeg',
            image_caption: 'Diet & Weight Loss',
          ),

          Category(
            image_location: 'assets/cats/fungal.jpeg',
            image_caption: 'Anti-Allergy',
          ),

          Category(
            image_location: 'assets/cats/mos.png',
            image_caption: 'Anti-Malaria',
          ),

          Category(
            image_location: 'assets/cats/ulcer.jpeg',
            image_caption: 'Anti-Ulcer',
          ),

          Category(
            image_location: 'assets/cats/worm.jpeg',
            image_caption: 'Worm Expeller',
          ),

          Category(
            image_location: 'assets/cats/cough.jpeg',
            image_caption: 'Cough & Cold',
          ),
        ],
      ),
    );
  }
}

//varables
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  // constructors
  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 85.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 40.0,
              height: 25.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 11.0),),
            )
          ),
        ),
      ),
    );
  }
}
