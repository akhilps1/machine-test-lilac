import 'package:dartz/dartz.dart';
import 'package:machine_test/domain/core/failures/failures.dart';

// Definition of typedef ResultFuture<T> representing a future result that can hold either a MainFailure or a value of type T.
typedef ResultFuture<T> = Future<Either<MainFailure, T>>;

// Definition of typedef UseResult<T> representing a result that can hold either a MainFailure or a value of type T.
typedef UseResult<T> = Either<MainFailure, T>;

// Definition of typedef StreamResult<T> representing a stream of results that can hold either a MainFailure or a value of type T.
typedef StreamResult<T> = Stream<Either<MainFailure, T>>;
