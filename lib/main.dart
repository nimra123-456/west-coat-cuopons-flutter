import 'package:flutter/material.dart';
import 'package:westcoastcuopons/cuopon.dart';
import 'package:westcoastcuopons/product.dart';

import 'service/service.dart';








void main() {
runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
backgroundColor: Color.fromRGBO(234, 234, 234, 1),
appBar: PreferredSize(
preferredSize: Size.fromHeight(8.0), // here the desired height
child: AppBar(
elevation: 0,
backgroundColor: Colors.indigoAccent,
),
),
body: body(),
),
));
}

class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  void initState() {
  cuponData = Service.fetchCoupons();
    super.initState();
  }
   late Future<List<Cuopon>>  cuponData;

List icons = [
'assets/images/accessories_icon.png',
'assets/images/entertainment.png',
'assets/images/financial.png',
'assets/images/hair.png',
'assets/images/electronics.png',
'assets/images/home_service.png',
'assets/images/home.png',
'assets/images/motoring.png',
'assets/images/baby.png',
'assets/images/fitness.png'
];

List title=[
'Accessories',
'Entertainment & Arts',
'Financial Services',
'Hair & Beauty',
'Electronics',
'HomeServices',
'Home and Garden',
'Motoring',
'Baby and Toddler',
'Fitness and Health'

];

@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.only(top: 8.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Stack(
children: [
ClipPath(
clipper: CustomClipPath(),
child: Container(
width: double.infinity,
height: 200,
decoration:const  BoxDecoration(
gradient:  LinearGradient(
colors: [Colors.deepPurple, Colors.blue]),
),
child: Padding(
padding: const EdgeInsets.all(30.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: const [
Padding(
padding:  EdgeInsets.only(top: 5.0),
child: Text(
"Explore",
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 30,
letterSpacing: 2),
),
),
Padding(
padding:  EdgeInsets.only(top: 8.0),
child: Text(
"Latest deals and discunts",
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 20,
letterSpacing: 1),
),
),
],
),
),
),
),
Container(
padding: const EdgeInsets.only(top: 110, left: 30, right: 30),
child: Image.asset('assets/images/banner.png'),
 )
],
),
const Padding(
padding:  EdgeInsets.only(top: 10.0, left: 30),
child: Text(
"Categories",
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 28,
),
),
),
Padding(
padding: const EdgeInsets.only(top:30.0,left:30,right:30),
child: SizedBox(
height: 237,
child: Container(
child: FutureBuilder(
  future: cuponData,
  builder: ((context, AsyncSnapshot<List<Cuopon>> snapshot) {
  if(snapshot.hasData){
    return ListView.separated(
itemCount: 7,
itemBuilder: (BuildContext context, int item) {
return GestureDetector(
  onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => ProductScreen()))),
  child:   ListTile(
  
  tileColor: Colors.white,
  
  shape: RoundedRectangleBorder(
  
  borderRadius: BorderRadius.circular(15.0),
  
  side: BorderSide(
  
  color: Colors.blueGrey,
  
  width: 1.0,
  
  ),
  
  ),
  
  leading: Container(
  
    width:40,
  
    child:   Image.asset(icons[item],
  
    
  
    height: 40,
  
    
  
    width: 40,),
  
  ),
  
  title: Text(title[item], style: TextStyle(
  
  fontWeight: FontWeight.bold,
  
  fontSize: 20,
  
  letterSpacing: 0.5),),
  
  ),
);
},
separatorBuilder: (BuildContext context, int item) {
return Divider(
height: 15,
color: Colors.transparent,
);
},
);

  }else if(snapshot.hasError){
    return Text("Snapshot Error");
  }
  return Center(child: CircularProgressIndicator());
}))
),
),
)
],
),
);
}
}


class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}