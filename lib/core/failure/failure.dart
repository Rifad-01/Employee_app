sealed class Failure {
  final String message;

  const Failure({required this.message});
}

class UnauthorizedFailure extends Failure {
  UnauthorizedFailure({
    super.message = "Unauthorized Please check your username and password",
  });
}

class NetworkFailure extends Failure {
  NetworkFailure({
    super.message = "Network failure check your network connection",
  });
}

class UnknownFailure extends Failure {
  UnknownFailure({super.message = "Something went Wrong !!"});
}

class TimeoutFailure extends Failure {
  TimeoutFailure({super.message = "Please check your network connection"});
}
