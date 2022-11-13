import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required String image,
    required String name,
    required double balance,
  }) = _Token;
}
