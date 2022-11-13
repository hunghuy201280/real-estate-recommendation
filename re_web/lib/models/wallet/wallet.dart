
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@freezed
class Wallet with _$Wallet {
  factory Wallet({required String privateKey}) = _Wallet;
	
  factory Wallet.fromJson(Map<String, dynamic> json) =>
			_$WalletFromJson(json);
}
