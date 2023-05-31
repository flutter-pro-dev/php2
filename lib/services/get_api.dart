import 'dart:convert';

import 'package:http/http.dart ' as http;
import 'package:society/forms/admin/admin_s_create.dart';
import 'package:society/services/models/city_models.dart';

import 'package:society/services/models/state_models.dart';

const String baseUrl = 'https://esociety.in/Api/getState.php';

class ApiServices {
  var client = http.Client();
  String endpoint = 'https://esociety.in/Api/getState.php';
  Future<GetStateModels> getStates() async {
    final response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      return GetStateModels.fromJson(result);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  // Future<dynamic> getUsers() async {
  //   var url = Uri.parse(baseUrl);
  //   // var _headers = {
  //   //   'Authorization': 'Bearer sfie328370428387=',
  //   //   'api_key': 'ief873fj38uf38uf83u839898989',
  //   // };

  //   var response = await client.get(
  //     url,
  //   );
  //   if (response.statusCode == 200) {
  //     return response.body;
  //   } else {
  //     //throw exception and catch it in UI
  //   }
  // }

  Future<dynamic> putAPI(String id, dynamic object) async {
    var url = Uri.parse(baseUrl + id);
    var _payload = json.encode(object);
    var _headers = {
      'Content-Type': 'application/json',
    };

    var response = await client.put(url, body: _payload, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }

  Future<dynamic> post(dynamic object) async {
    var url = Uri.parse(baseUrl);
    var _payload = json.encode(object);
    var _headers = {'Content-Type': 'application/json'};

    var response = await client.post(url, body: _payload, headers: _headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }

  ///
  ///

  Future<dynamic> delete(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {'Content-Type': 'application/json'};

    var response = await client.delete(url, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }
}

class Esociety {
  var client = http.Client();

  Future<List<GetStateModels>> fetchState() async {
    var url = Uri.parse('https://esociety.in/Api/getState.php');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => GetStateModels.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

  Future<List<GetCityModel>> fetchCity({required int id}) async {
    var url = Uri.parse('https://esociety.in/Api/getCity.php');
    var headers = {'Content-Type': 'application/json'};
    var body = json.encode({'sid': id});

    final response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => GetCityModel.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occurred!');
    }
  }
  //////

  Future<dynamic> AdminCreateSociety(dynamic object) async {
    var url = Uri.parse('https://esociety.in/Api/societyCreate.php');
    var _payload = json.encode(object);
    var _headers = {'Content-Type': 'application/json'};

    var response = await client.post(url, body: _payload, headers: _headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      //  throw exception and catch it in UI
    }
  }
  //
}
