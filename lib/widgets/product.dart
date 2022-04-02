import 'package:flutter/material.dart';

import '../../widgets/projects.dart';


class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list= [
    {
      "name":"ALHAZAM",
      "picture":"assets/product/product1",
      "price":1.200,
    },
    {
      "name":"ALHAZAM",
      "picture":"assets/product/product2",
      "price":1.200,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
        itemBuilder: (BuildContext  context, int index){
          return Single_prod(
            product_name: product_list[index]['name'],
            product_pricture: product_list[index]['picture'],
            product_price: product_list[index]['price'],
          );
        } );
  }
}


class Single_prod extends StatelessWidget {
  final product_name;
  final product_pricture;
  final product_price;

  Single_prod({
    this.product_name,
    this.product_pricture,
    this.product_price,

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(


              child : Text("test" ,

                style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,

              ),)

          ),

    );


  }
}

