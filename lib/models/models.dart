import 'package:cloud_firestore/cloud_firestore.dart';

import '../authmethods/storage_method.dart';

class ProductsItem {
  String? productName;
  String? detail;
  double? price;
  String? shop;
  var imageUrls;

  ProductsItem(
      {required this.productName,
      required this.detail,
      required this.price,
      required this.imageUrls,
      required this.shop});

  static Future<void> addProducts(ProductsItem products) async {
    CollectionReference db = FirebaseFirestore.instance.collection('products');
    String photoUrl = await StorageMethods()
        .uploadImageToStorage('profilePics', products.imageUrls, false);
    Map<String, dynamic> data = {
      "productName": products.productName,
      "detail": products.detail,
      "price": products.price,
      "imageUrls": photoUrl,
      "brand": products.shop,
    };

    await db.add(data);
  }

  static Future<void> updateProducts(
      String id, ProductsItem updateProducts) async {
    CollectionReference db = FirebaseFirestore.instance.collection('products');
    Map<String, dynamic> data = {
      "productName": updateProducts.productName,
      "detail": updateProducts.detail,
      "price": updateProducts.price,
      "imageUrls": updateProducts.imageUrls,
      "isFavourite": updateProducts.shop,
    };

    await db.doc(id).update(data);
  }

  static Future<void> deleteProducts(String id) async {
    CollectionReference db = FirebaseFirestore.instance.collection('products');
    await db.doc(id).delete();
  }
}
