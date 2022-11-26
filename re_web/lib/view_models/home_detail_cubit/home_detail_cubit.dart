import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:re_web/models/house/house.dart';

class HomeDetailCubit extends HydratedCubit<House?> {
  HomeDetailCubit() : super(null);

  void houseChanged(House house) {
    emit(house);
  }

  @override
  House? fromJson(Map<String, dynamic> json) {
    return House.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(House? state) {
    return state?.toJson();
  }
}
