import 'package:dio/dio.dart';

extension RequestOptionsToCurl on RequestOptions {
  /// A simple utility function to dump `curl` from "Dio" requests.
  String toCurl() => dio2curl(this);
}

/// A simple utility function to dump `curl` from "Dio" requests
String dio2curl(RequestOptions requestOption) {
  var curl = '';

  // Add PATH + REQUEST_METHOD
  curl +=
      'curl --request ${requestOption.method} \'${requestOption.baseUrl}${requestOption.path}\'';

  // Include headers
  for (var key in requestOption.headers.keys) {
    curl += ' -H \'$key: ${requestOption.headers[key]}\'';
  }

  // Include data if there is data
  if (requestOption.data != null) {
    curl += ' --data-binary \'${requestOption.data}\'';
  }

  curl += ' --insecure'; //bypass https verification

  return curl;
}
