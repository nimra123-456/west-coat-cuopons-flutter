 import 'dart:convert';


 import 'package:http/http.dart' as http;

import '../cuopon.dart';
class Service{

 
 static Future<List<Cuopon>> fetchCoupons() async{


   
 var url =  Uri.parse("https://westcoastcoupons.co.uk/fetch-coupons/");
 var response = await  http.get(url);
 if(response.statusCode == 200){

 List res =  jsonDecode(response.body);
   return res.map((data) => Cuopon.fromJson(data)).toList();

  
 }
 else{
  throw  Exception("Unexpected Error");
 }


 }
}