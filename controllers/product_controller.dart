import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class DataBaseHelper {

  var status; 

  Future<List> getData() async {
    var url = 'http://192.168.1.40:3000/products';
    String myUrl = "$url";
    http.Response response =
        await http.get(myUrl, headers: {'Accept': 'application/json'});
    return json.decode(response.body);
    // print(response.body);
  }


  //function for register products
  void addDataProducto(String _nameController, String _priceController, String _stockController) async {  
  
   // String myUrl = "$serverUrl/api";
   String myUrl = "http://192.168.1.40:3000/products";
   final response = await  http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {
          "name":       "$_nameController",
          "price":      "$_priceController",        
          "stock":      "$_stockController"
        } ) ;
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if(status){
      print('data');
    }else{
      print('data');     
    }
  }


  //function for update or put
  void editarProduct(String _id, String name, String price, String stock) async {
    // final prefs = await SharedPreferences.getInstance();
    // final key = 'token';
    // final value = prefs.get(key ) ?? 0;

    String myUrl = "http://192.168.1.40:3000/product/$_id";
    http.put(myUrl,
        body: {
         "name":       "$name",
         "price":       "$price",
         "stock":      "$stock"
        }).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }


  //function for delete
  Future<void> removeRegister(String _id) async {

  String myUrl = "http://192.168.1.40:3000/product/$_id";

  Response res = await http.delete("$myUrl");

  if (res.statusCode == 200) {
    print("DELETED");
  } else {
    throw "Can't delete post.";
  }
}


}


