part of 'imports_methods.dart';

class DioGet extends GetMethod {
  DioGet._();

  static final DioGet instance = DioGet._();

  Dio? _dio;

  injectDio(Dio value) {
    _dio = value;
  }

  final _dioResponseHandler = DioResponseHandler.instance;
  final _logger = NetworkLogger.instance;

  //<editor-fold desc="GET METHOD">
  @override
  Future<Response?> get({
    required String url,
    Map<String, String>? headers,
    bool auth = false,
  }) async {
    Response? response;
    _dio?.options.headers = headers ?? HeaderHandler.instance.setHeaders(auth);
    try {
      response = await _dio?.get(
        url,
        options: Options(
          headers: headers,
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      _logger.responseLog(response.toString());
    } on DioException catch (e) {
      printDM("Error from get post method: $e");
      return _dioResponseHandler.handleResponse(error: e);
    }
    return _dioResponseHandler.handleResponse(response: response);
  }

//</editor-fold>
}
