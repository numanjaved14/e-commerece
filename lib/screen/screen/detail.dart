import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  var snap;
  Detail({Key? key, required this.snap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          snap['productName'],
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Center(child: Image.network(snap['imageUrls'])),
            // Center(child: Image.asset('assets/icons/honey.png')),
            SizedBox(height: 15),
            Text('Product detail'),
            SizedBox(height: 15),
            Text(snap['detail']),
            SizedBox(height: 15),
            Text(snap[' shop ']),
            SizedBox(height: 15),
            Text(snap['price'])
          ],
        ),
      ),
    ));
  }
}
