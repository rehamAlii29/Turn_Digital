class ErrorModel {
  String title;
  final ErrorType type;

  ErrorModel({
    required this.title,
    required this.type,
  }) {
    title = title;
  }
}

enum ErrorType {
  serverSide,
  networkConnection,
  dataEmpty,
  dirtyData,
  unKnown,
}

// error model
