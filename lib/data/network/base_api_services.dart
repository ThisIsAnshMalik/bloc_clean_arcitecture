abstract class BaseApiServices {
  Future<dynamic> getApi(String url);

  Future<dynamic> getHeaderApi(Map<String, String>? header, String url);

  Future<dynamic> postApi(dynamic data, String url);

  Future<dynamic> postApiOnly(String url);

  Future<dynamic> postHeaderApi({
    required Map<String, String>? header,
    required Object? data,
    required String url,
  });

  Future<dynamic> deleteHeaderApi(Map<String, String>? header, String url);

  Future<dynamic> putheaderApi({
    required Map<String, String>? header,
    required Map<String, String> data,
    required String url,
  });

  Future<dynamic> putApiWithOnlyToken(Map<String, String>? header, String url);

  Future<dynamic> patchheaderApi({
    required Map<String, String>? header,
    required Map<String, String> data,
    required String url,
  });

  Future<dynamic> patchWithoutHeaderApi({
    required Map<String, String> data,
    required String url,
  });

  Future<dynamic> patchwithOnlyheaderApi({
    required Map<String, String>? header,
    required String url,
  });
}
