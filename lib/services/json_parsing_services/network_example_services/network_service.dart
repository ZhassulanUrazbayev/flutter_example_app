import 'package:flutter_example_app/models/json_parsing_models/network_example_models/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';

String url = 'https://jsonplaceholder.typicode.com/posts';

Future<List<Post>> getAllPosts() async {
  final response = await http.get(url);
  return allPostsFromJson(response.body);
}

Future<Post> getPost() async {
  final response = await http
      .get('$url/3'); // the number is the id of the item being accessed
  return postFromJson(response.body);
}

Future<http.Response> createPost(Post post) async {
  final response = await http.post('$url',
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      body: postToJson(post));

  return response;
}

createPostAPI(){
  Post post = Post(
      body: 'Testing Post100',
      title: 'Flutter jam6',
      userId: 100
  ); // creating a new Post object to send it to API

  createPost(post).then((response){
    if(response.statusCode > 200)
      print(response.body);
    else
      print(response.statusCode);
  }).catchError((error){
    print('error : $error');
  });

}
