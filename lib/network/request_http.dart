import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:providernetwork/model/post.dart';

class RequestHttp {
  Future<Post?> getHttpPost() async {
    final response = await http.get(
        Uri.parse('https://my-json-server.typicode.com/typicode/demo/profile'));

    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}

/* 
void main() {
   
  var a = RequestHttp();
  
  var alfa = a.getHttpPost() ;
  alfa.then((data)=>print(data.name)); ;
} */
