import 'package:http/http.dart';
import 'dart:convert';

class ServiceApi {
  static Future<Map> postCreateUser(String usuario, String password) async {
    String url = 'https://proyecto-notas3.azurewebsites.net/api/Usuarios';
    Response response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"nUsuario": usuario, "contraseña": password}),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return jsonDecode(response.body);
    }
    throw Exception(
        "Error llamando API - Status " + response.statusCode.toString());
  }
}
