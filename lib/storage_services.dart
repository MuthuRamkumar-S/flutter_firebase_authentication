// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
//
// class Storage{
//   final firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
//   var url;
//   Future uploadFile(
//        filePath,
//        fileName,
//       )async{
//     File file = File(filePath);
//
//     try{
//       await storage.ref('images/$fileName').putFile(file);
//       url = await storage.ref('images/$fileName').getDownloadURL();
//       print(url);
//     } catch(e) {print(e);}
//   }
//
