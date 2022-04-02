// ignore_for_file: prefer_const_constructors

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commereceapp/models/models.dart';
import 'package:e_commereceapp/screen/screen/project_detail.dart';
import 'package:e_commereceapp/utils/utils.dart';
import 'package:e_commereceapp/widgets.dart';
import 'package:e_commereceapp/widgets/product.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  final TextEditingController detailC = TextEditingController();
  final TextEditingController shopC = TextEditingController();
  final TextEditingController nameC = TextEditingController();
  final TextEditingController priceC = TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    detailC.dispose();
    shopC.dispose();
    nameC.dispose();
    priceC.dispose();
  }

  // call pick image method inside select image

  selectImage() async {
    Uint8List im = await pickeImage();
    setState(() {
      _image = im;
    });
  }

  save() async {
    setState(() {
      // isSaving = true;
    });
    // await uploadImage();

    ProductsItem.addProducts(ProductsItem(
      productName: priceC.text,
      detail: detailC.text,
      price: double.parse(priceC.text),
      imageUrls: _image,
      shop: shopC.text,
    )).whenComplete(() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProjectDetail(),
      ));
      // print(productNameC.text);
      // print(detailC.text);

      // print(double.parse(priceC.text));

      // print(double.parse(discountPriceC.text));

      // print(imageUrls);

      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Added Successfully'),
          ),
        );
      });
    });

    // void signUpuser() async {
    //   setState(() {
    //     _isLoading = true;
    //   });
    //   String res = await AuthMethods().signUpUser(
    //     email: emailC.text,
    //     password: passwordC.text,
    //     username: usernameC.text,
    //     bio: bioC.text,
    //     file: _image!,
    //   );
    //   //  print(_image);
    //   //  print('password' + passwordC.text);
    //   //   print('bio:' + bioC.text);
    //   //    print('username:' + usernameC.text);
    //            print(res);
    //   setState(() {
    //     _isLoading = false;
    //   });
    //   if (res != 'success') {
    //     showsnackBar(res, context);
    //   }else{
    //     Navigator.of(context)
    //         .push(MaterialPageRoute(builder: (contxt) =>
    //     const ResponsiveLayout(
    //       mobileScrLayout: MobileScr(),
    //       webScrLayout: WebScr())
    //       )
    //       );
    //   }
    // }
    // void navigateToLogin() {
    //     Navigator.of(context)
    //         .push(MaterialPageRoute(builder: (contxt) => const LoginScr()));
    //   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Flexible(child: Container(),
                  // flex: 2,),

                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      // ignore: prefer_const_constructors
                      _image != null
                          ? CircleAvatar(
                              radius: 64, backgroundImage: MemoryImage(_image!))
                          : CircleAvatar(
                              radius: 68,
                              backgroundColor: Colors.blueGrey.shade100,
                              child: CircleAvatar(
                                radius: 64,
                                backgroundImage: NetworkImage(
                                    'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg'),
                              ),
                            ),
                      Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                            onPressed: () {
                              selectImage();
                            },
                            icon: const Icon(Icons.add_a_photo)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // username field
                  MyTextInputField(
                      textEditingController: nameC,
                      hintText: 'Product Name',
                      textInputType: TextInputType.text),
                  const SizedBox(
                    height: 24,
                  ),
                  MyTextInputField(
                    textEditingController: detailC,
                    hintText: 'Detail of Product',
                    textInputType: TextInputType.text,
                    // isPassed: true,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  MyTextInputField(
                    textEditingController: shopC,
                    hintText: 'Shop',
                    textInputType: TextInputType.text,
                    // isPassed: true,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  MyTextInputField(
                      textEditingController: priceC,
                      hintText: 'Price',
                      textInputType: TextInputType.text),
                  const SizedBox(
                    height: 24,
                  ),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     String res = await AuthMethods.signUpUser(
                  //       email: emailC.text,
                  //       username: usernameC.text,
                  //       password: passwordC.text,
                  //       bio: bioC.text,
                  //     );
                  //     print(res);
                  //   },
                  //   child: const Text("SignUp"),
                  // ),

                  InkWell(
                    onTap: save,
                    // onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => ProjectDetail(),
                    // )),
                    child: Container(
                      alignment: Alignment.center,
                      // ignore: prefer_const_constructors
                      decoration: ShapeDecoration(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        color: Colors.deepPurple,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      width: double.infinity,
                      child: _isLoading
                          ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : Text("Add Product"),
                    ),
                  ),
                  //   Flexible(child: Container(),
                  // flex: 2,),
                ]),
          ),
        ],
      ),
    );
  }
}
