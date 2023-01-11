import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  String url;

  Future getData() async{
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200){
      String data = response.body;

      double temperature = jsonDecode(data)['main']['temp'];
      int weather = jsonDecode(data)['weather'][0]['id'];
      String city = jsonDecode(data)['name'];


      print(jsonDecode(data));
      return jsonDecode(data);

    }else{
      print(response.statusCode);
    }

  }

}