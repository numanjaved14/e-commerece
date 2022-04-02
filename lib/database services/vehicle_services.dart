// import 'dart:typed_data';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:e_commereceapp/models/models.dart';
// import 'package:e_commereceapp/storage%20methods/storagemethods.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:uuid/uuid.dart';

// class NewVehicleServices {
//   FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   Future<String> addVecihleInfo(
//       {
//       required String? vechileName,
//       required String? vechileType,
//       required String? vechilRegistration,
//       Uint8List? file,
//       required String? uid,
//       String res = "Some Error Occured"}) async {
//     try {
//       if (vechileName!.isNotEmpty || vechilRegistration!.isNotEmpty) {
//         // saving profile image

//         String documentUrl = await StorageMethods()
//             .uploadImageToStorage('Vehicle Document', file!);
//         String postId = Uuid().v1();

//         NewVehicleModel newVehicleModel = NewVehicleModel(
//           uid: uid,
//           vehicleName: vechileName,
//           vehiclRegistration: vechilRegistration,
//           vehicleType: vechileType,
//           file: documentUrl,
//           postId: postId,
//         );
//         await _firestore
//             .collection('Vehiclesinfo')
//             .doc(postId)
//             .set(newVehicleModel.toJSon());
//         // await _firestore.collection('users').add({}).set(
//         //       user.toJSon(),
//         // );
//         return res = 'added successfully';
//       }
//     } catch (e) {
//       return res = e.toString();
//     }
//     return res;

//     // _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password)
//   }
// }
