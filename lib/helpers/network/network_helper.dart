abstract class NetWorkHelper {
  Future<Map<String, dynamic>> get({
    required String url,
  });

  Future<Map<String, dynamic>> post({
    required String url,
    required Map<String, dynamic> body,
  });
}
