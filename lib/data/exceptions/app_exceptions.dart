class InternetException extends AppExceptions {
  InternetException([String? message])
    : super("No Internet Exception : ", message);
}

class UnAutherisedException extends AppExceptions {
  UnAutherisedException([String? message])
    : super("Un Autherised Exception : ", message);
}

class RequestTimeOutException extends AppExceptions {
  RequestTimeOutException([String? message])
    : super("Request Time Out Exception : ", message);
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
    : super("Fetch Data Exception : ", message);
}

class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message $_prefix';
  }
}
