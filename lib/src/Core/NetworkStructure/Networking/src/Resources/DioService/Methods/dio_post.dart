part of 'imports_methods.dart';

class DioPost extends PostMethod {
  DioPost._();

  static final DioPost instance = DioPost._();

  Dio? _dio;

  void injectDio(Dio value) {
    _dio = value;
    _dio?.interceptors.add(InterceptorsWrapper(
      onError: (DioException e, ErrorInterceptorHandler handler) {
        printDM("Interceptor Error: $e");
        return handler.next(e);
      },
    ));
  }

  final _dioResponseHandler = DioResponseHandler.instance;
  final _logger = NetworkLogger.instance;
  final _utils = NetworkUtils.instance;

  //<editor-fold desc="POST METHOD">
  @override
  Future<Response?> post({
    required String url,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    bool auth = false,
    bool showLoadingDialog = false,
  }) async {
    if (_dio == null) {
      throw Exception("Dio is not injected! Call injectDio() first.");
    }

    body ??= {};
    _utils.showDialog(showLoadingDialog);

    bool containFile = false;
    dynamic requestBody;

    _handleFiles(body, (form, hasFile) {
      containFile = hasFile;
      requestBody = form;
    });

    if (!containFile) {
      requestBody = jsonEncode(body);
    }

    _logger.logSentBody(body);

    final requestHeaders = headers ?? HeaderHandler.instance.setHeaders(auth);
    _dio!.options.headers = requestHeaders;
    _dio!.options.contentType =
        containFile ? 'multipart/form-data' : 'application/json';

    Response? response;
    try {
      response = await _dio?.post(
        url,
        data: requestBody,
        options: Options(
          headers: requestHeaders,
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      _logger.responseLog(response.toString());
      _utils.closeDialog(showLoadingDialog);
    } on DioException catch (e) {
      _utils.closeDialog(showLoadingDialog);
      _logger.errorLog(e);
      printDM("Error: cdd" + e.toString());
      return _dioResponseHandler.handleResponse(error: e);
    }

    return _dioResponseHandler.handleResponse(response: response);
  }

  void _handleFiles(
      Map<String, dynamic> body, Function(FormData, bool) onFileExist) {
    bool containFile = false;
    FormData formData = FormData();

    body.forEach((key, value) {
      if (value is File) {
        containFile = true;
        formData.files.add(MapEntry(
          key,
          MultipartFile.fromFileSync(value.path,
              filename: value.path.split("/").last),
        ));
      } else if (value is List<File>) {
        containFile = true;
        for (var element in value) {
          formData.files.add(MapEntry(
            '$key[]',
            MultipartFile.fromFileSync(element.path,
                filename: element.path.split("/").last),
          ));
        }
      } else {
        formData.fields.add(MapEntry(key, value.toString()));
      }
    });

    onFileExist(formData, containFile);
  }

//</editor-fold>
}
