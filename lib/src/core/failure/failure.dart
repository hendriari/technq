import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.serverFailure({required String message}) =
      ServerFailure;

  const factory Failure.connectionFailure({required String message}) =
      ConnectionFailure;

  const factory Failure.generalFailure({required String message}) =
      GeneralFailure;
}
