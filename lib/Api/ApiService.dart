import 'dart:convert';

import 'package:flutter_application_final/model/ModelLogin.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "https://apps.ia3x.com/ute_app_utesa/index.php?/App/login";

    final response =
        await http.post(Uri.parse(url), body: requestModel.toJson());

    if (response.statusCode == 200) {
      return LoginResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return throw Exception("Error al cargar los datos");
    }
  }
}
