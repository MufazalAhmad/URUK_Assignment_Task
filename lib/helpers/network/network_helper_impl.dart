import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:uruk_assignment/helpers/network/network_helper.dart';
import 'package:http/http.dart' as http;

@Singleton(as: NetWorkHelper)
class NetworkHelperImpl extends NetWorkHelper {
  @override
  Future<Map<String, dynamic>> get({required String url}) async {
    try {
      final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> post(
      {required String url, required Map<String, dynamic> body}) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
