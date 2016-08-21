class FetchdataException implements Exception {
  String _message;

  FetchdataException(this._message);

  String toString() {
    return "Exception: $_message";
  }
}
