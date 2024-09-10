import 'dart:convert';

import '../models/Products.dart';
import '../models/ProductsRespMain.dart';
import 'package:http/http.dart' as http;
class Apiservice{
  Future<List<Products>?> fetchdata() async {
    var response=await http.get(Uri.parse("https://dummyjson.com/products"));
    var jsonn=jsonDecode(response.body);
    var mainresp=ProductsRespMain.fromJson(jsonn);
    var list=mainresp.products;
    return  list;
  }
}