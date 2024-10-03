class ServerException implements Exception {
  final String message;

  ServerException([this.message = "Server error occurred."]);
}

class DataNotFoundException implements Exception {
  final String message;

  DataNotFoundException([this.message = "Data not found"]);
}

class NetworkException implements Exception {
  final String message;

  NetworkException([this.message = "Network error occurred."]);
}
