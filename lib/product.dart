import 'package:flutter/material.dart';

import 'cuopon.dart';
import 'product_detail_screen.dart';
import 'service/service.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
        elevation: 0,
        title: navbar(),
//centerTitle: true,
      ),
      body: BodyWidget(),
    );
  }
}

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => {Navigator.of(context)},
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Electronics",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
   void initState() {
  cuponData = Service.fetchCoupons();
    super.initState();
  }
   late Future<List<Cuopon>>  cuponData;
  List list = [1, 2, 3, 4, 5, 6, 7];

  List images = [
    'https://images-na.ssl-images-amazon.com/images/I/31SVp4zggpL._AC_SR300,300.jpg',
    'https://m.media-amazon.com/images/I/31Rlc8qeGiL._AC_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/31SVp4zggpL._AC_SR300,300.jpg',
    'https://m.media-amazon.com/images/I/31Rlc8qeGiL._AC_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/31SVp4zggpL._AC_SR300,300.jpg',
    'https://m.media-amazon.com/images/I/31Rlc8qeGiL._AC_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/31SVp4zggpL._AC_SR300,300.jpg',
  ];

  List title = [
    'Accessories',
    'Accessories',
    'Accessories',
    'In Person',
    'Accessories',
    'Accessories',
    'Accessories',
  ];

  List description = [
    'Electronics Products ',
    'Money advice for free',
    'Free Financial advice',
    'Free Compute Mot',
    'Free mobile phone reset',
    'Free TV check',
    'Free baby wipes',
  ];

  List date = [
    'jan 25, 2022',
    'feb 25, 2022',
    'March 25, 2022',
    'May 25, 2022',
    'April 25, 2022',
    'December 25, 2022',
    'November 25, 2022',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Found 7 coupons",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
              child:  ListView.separated(
                  separatorBuilder: (BuildContext context, int item) {
                    return Divider(
                      height: 25,
                      color: Colors.transparent,
                    );
                  },
                  itemCount: title.length,
                  itemBuilder: (BuildContext context, int item) {
                    return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(),
                            )),
                        child: ListTile(
                            selectedTileColor: Colors.grey,
                            tileColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(
                                color: Color.fromARGB(255, 185, 188, 189),
                                width: 2.0,
                              ),
                            ),
                            title: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Image.network(images[item]),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            title[item],
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              description[item],
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    date[item],
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Online Sales",
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ))));
                  }
              )
          )
          ]
          )
          );

                
  }
}
                
              
              
              
                  
        
  

