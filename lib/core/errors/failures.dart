// failures

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties = [];

  Failure([properties]);

  @override
  List<dynamic> get props => properties;
}

// server failure
class ServerFailure extends Failure {}

// connection failure
class ConnectionFailure extends Failure {}

// Database failure
class DatabaseFailure extends Failure {}

// SharedPreference Failure
class SharedPreference extends Failure {}

// cache failure
class CacheFailure extends Failure {}
