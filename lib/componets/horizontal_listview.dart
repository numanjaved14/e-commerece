import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location:'assets/icons/bag.png',
              image_caption: 'Bag'),
          Category(
              image_location:'assets/icons/gift.png',
              image_caption: 'Gift'),
          Category(
              image_location:'assets/icons/cake.png',
              image_caption: 'Cake'),
          Category(
              image_location:'assets/icons/coffee.png',
              image_caption: 'Coffee'),
          Category(
              image_location:'assets/icons/honey.png',
              image_caption: 'Honey'),
          Category(
              image_location:'assets/icons/shoes.png',
              image_caption: 'Shoes'),
          Category(
              image_location:'assets/icons/ring.png',
              image_caption: 'Accessories'),
          Category(
              image_location:'assets/icons/donut.png',
              image_caption: 'Donut'),
          Category(
              image_location:'assets/icons/makeup1.png',
              image_caption: 'Makeup'),
          Category(
              image_location:'assets/icons/henna.png',
              image_caption: 'Henna'),
          Category(
              image_location:'assets/icons/t-shirt.png',
              image_caption: 't-shirt'),
          Category(
              image_location:'assets/icons/dress.png',
              image_caption: 'Dress'),
          Category(
              image_location:'assets/icons/perfume.png',
              image_caption: 'Perfume'),









        ],
      ),

    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    required this.image_location,
    required this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
        child: Container(width: 100.0,
          child: ListTile(
              title: Image.asset(image_location ,width: 100.0 ,height: 80.0 ,) ,
              subtitle: Container(alignment: Alignment.topCenter,child: Text(image_caption ,style: const TextStyle(fontSize: 12.0),),)
          ),
        ) ,
      ),
    );




  }
}



