import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commereceapp/authmethods/widgets/product_list.dart';
import 'package:e_commereceapp/screen/screen/add_products_page.dart';
import 'package:e_commereceapp/screen/screen/detail.dart';
import 'package:flutter/material.dart';

import '../../widgets/projects.dart';

class ProjectDetail extends StatefulWidget {
  @override
  State<ProjectDetail> createState() => _ProjectDetailState();
}

class _ProjectDetailState extends State<ProjectDetail> {
  // final Project project;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddProducts(),
                  )),
              icon: const Icon(Icons.add))
        ],
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('products').snapshots(),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductDetails(snap: snapshot.data!.docs[index].data());
              },
            );
          }),
    );
  }
}
