import 'package:flutter/material.dart';


class ProductDetailScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
theme:
ThemeData(primaryColor: Colors.purple, backgroundColor: Colors.white),
home: Scaffold(
appBar: AppBar(
backgroundColor: Colors.transparent,
elevation: 0,
title: Row(
children: [
IconButton(
icon: Icon(Icons.arrow_back, color: Colors.black),
onPressed: () => {Navigator.of(context).pop()},
), Image.asset('assets/images/watch.jpg',
fit: BoxFit.contain,
height: 30,
),
Padding(
padding: const EdgeInsets.all(8.0),
child: Text(
"Amazon",
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.w700,
color: Colors.black),
),
),
],
), //centerTitle: true,
),
body: Padding(
padding: const EdgeInsets.all(32.0),
child: Material(
child: Column(
children: [
Container(
alignment: Alignment.centerLeft,
child: Text(
"Amazon Coupon",
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.w700,
color: Colors.black,
),
),
),
Padding(
padding: const EdgeInsets.only(top: 8.0),
child: Text(
"This is the Coupon for all Ali Express Store!",
style: TextStyle(fontSize: 18, color: Colors.blueGrey),
),
),
Padding(
padding: const EdgeInsets.only(top: 5.0),
child: Row(
children: [
Expanded(
child: Text(
"Jan 22, 2022",
textAlign: TextAlign.left,
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.w700,
color: Colors.black,
),
),
),
Expanded(
child: Text(
"Online Sales",
textAlign: TextAlign.right,
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.w700,
color: Colors.black,
),
),
),
],
),
),
Center(
child: Padding(
padding: const EdgeInsets.all(13.0),
child: Image.asset('assets/images/watch.jpg'),
),
),
Padding(
padding: const EdgeInsets.only(top: 5.0),
child: Text(
textAlign: TextAlign.left,
"Amazon.com, Inc. is an American multinational technology company which focuses on e-commerce, cloud computing, digital streaming.",
style: TextStyle(fontSize: 16, color: Colors.blueGrey),
),
),
Padding(
padding: const EdgeInsets.only(top: 10.0),
child: Row(
children: [
Icon(
Icons.pin_drop,
),
Text(
" Karachi",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.w700,
color: Colors.blueGrey,
),
),
],
),
),
Padding(
padding: const EdgeInsets.only(top: 10.0),
child: Row(
children: [
Icon(
Icons.phone_android_sharp,
),
Text(
" +92-980-3452",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.w700,
color: Colors.blueGrey,
),
),
],
),
)
],
),
),
),
),
);
}
}
