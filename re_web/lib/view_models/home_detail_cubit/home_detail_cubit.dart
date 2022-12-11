import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:re_web/models/house/house.dart';
import 'package:re_web/utils/extensions.dart';

class HomeDetailCubit extends HydratedCubit<House?> {
  HomeDetailCubit() : super(null);

  void houseChanged(House house) {
    emit(house);
  }

  @override
  House? fromJson(Map<String, dynamic> json) {
    final item = House.fromJson(json);
    houseImagesCached[item.id] = [
      housesImages.random,
      housesImages.random,
      housesImages.random
    ];
    return item;
  }

  @override
  Map<String, dynamic>? toJson(House? state) {
    return state?.toJson();
  }
}
