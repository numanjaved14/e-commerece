import 'package:flutter/material.dart';

import '../../screen/screen/detail.dart';

class ProductDetails extends StatefulWidget {
  var snap;
  ProductDetails({Key? key, required this.snap}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Detail(snap: widget.snap),
      )),
      child: Card(
        child: ListTile(
          title: Text(widget.snap['productName']),
          leading: SizedBox(
            width: 50,
            height: 50,
            child: Image.network(widget.snap['imageUrls']),
          ),
        ),
      ),
    );
  }
}
