# dio2curl - 
Converts dio requests to curl format 


## Usage 
```dart
import 'dart:convert';
import 'package:dio2curl/dio2curl.dart';
import 'package:dio/dio.dart';

void main() async{
  var dio = Dio();

  final data = {
    "title": "voluptate et itaque vero tempora molestiae",
    "body": "eveniet quo quis laborum totam consequatur non dolor ut et est repudiandae est voluptatem vel debitis et magnam"
  };
    

  dio.post(
    "https://jsonplaceholder.typicode.com/posts", 
    data: json.encode(data),
    options: Options(
      responseType: ResponseType.json,
      headers: {
        'Authorization': 'Bearer asdkfjalskdfjSomebullshit',
      },
    
  )).then((response) {
    print(dio2curl(response.request));
  });
  

}
```



