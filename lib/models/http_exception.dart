class HttpException implements Exception{//we are forced to implement the exception class has
  final String message;
  HttpException(this.message);

  @override
  String toString() {
    return message;
   // return super.toString();
  }


}