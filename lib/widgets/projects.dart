import 'package:flutter/material.dart';

class Project {
  late String title;
  late String prodectname;
  late String description;
  late String image1;
  late String image;

  static var length;

  Project({
    required this.title,
    required this.prodectname,
    required this.description,
    required this.image1,
    required this.image,

  });
}
  List<Project>ListViewProject=[

    Project(
        title:'ALHAZAM',
        description: "Homemade Omani spices",
        image:"assets/projects/project1.png",
        prodectname: 'alhazam',
        image1:"assets/product/Product1.jpg",




    ),

    Project(
      title:'Najala Boutiqe',
      description: "Makeup Artist",
      image:"assets/projects/project2.png",
      prodectname: 'he1',
      image1:"assets/product/Product2.jpg",
    ),
    Project(
      title:'Dahy Sohar',
      description: "printing, henna stickers and various gifts",
      image:"assets/projects/project3.png",
      prodectname: 'he2',
      image1:"assets/product/Product3.jpg",

    ),
    Project(
      title:'Yummy Sweet',
      description: "Cake and Donat",
      image:"assets/projects/project4.png",
      prodectname: 'he3',
      image1:"assets/product/Product2.jpg",

    ),
    Project(
      title:'Sohar Sweet',
      description: "Cake and Donat ",
      image:"assets/projects/project5.png",
      prodectname: 'he',
      image1:"assets/product/Product1.jpg",

    ),
    Project(
      title:'Alfatina Beauty',
      description: "Natural Products",
      image:"assets/projects/project6.png",
      prodectname: 'he',
      image1:"assets/product/Product1.jpg",


    ),
    Project(
      title:'Alyaqeen',
      description: "Thermal printing ",
      image:"assets/projects/project7.png",
      prodectname: 'he',
      image1:"assets/product/Product1.jpg",

    ),
    Project(
      title:'Sewar',
      description: "Accessories",
      image:"assets/projects/project8.png",
      prodectname: 'he',
      image1:"assets/product/Product1.jpg",

    ),

    Project(
      title:'Rose Meem',
      description: "Gifts and Flowers",
      image:"assets/projects/project9.png",
      prodectname: 'he',
      image1:"assets/product/Product1.jpg",

    ),

    Project(
      title:'kasrt Dkhon',
      description: "incense",
      image:"assets/projects/project10.png",
      prodectname: 'he',
      image1:"assets/product/product1",


    ),

    Project(
      title:'Sultana Perfumes',
      description: "Perfumes",
      image:"assets/projects/project12.png",
      prodectname: 'he',
      image1:"assets/product/product1",



    ),
    Project(
      title:'Baby Clothes',
      description: "Clothes",
      image:"assets/projects/project13.png",
      prodectname: 'he',
      image1:"assets/product/product1",

    ),
    Project(
      title:'Honey ',
      description: "Honey",
      image:"assets/projects/project14.png",
      prodectname: 'he',
      image1:"assets/product/product1",

    ),Project(
      title:'Aynur Store',
      description: "Shoes and Bags",
      image:"assets/projects/project15.png",
      prodectname: 'he',
      image1:"assets/product/product1",

    ),Project(
      title:'Maruld Store',
      description: "Shoes and Bags",
      image:"assets/projects/project16.png",
      prodectname: 'he',
      image1:"assets/product/product1",

    ),Project(
      title:'Elegent Dress',
      description: "Clothes",
      image:"assets/projects/project17.png",
      prodectname: 'he',
      image1:"assets/product/product1",

    ),Project(
      title:'Cafe H',
      description: "Coffee",
      image:"assets/projects/project18.png",
      prodectname: 'he',
      image1:"assets/product/product1",

    ),


  ];

class Product1 {
  late String productName;
  late String productimage;

  static var length;

   Product1({
    required this.productName,
    required this.productimage,

  });
}

 List<String> productName =[

   "assets/product/product1",


 ];