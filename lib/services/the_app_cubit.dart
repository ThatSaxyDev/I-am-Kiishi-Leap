import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_am_kiishii/model/kiishi.dart';
import 'package:i_am_kiishii/services/the_app_service.dart';

class TheAppCubit extends Cubit<List<Kiishi>> {
  TheAppCubit() : super([]);
  final _theAppService = TheAppService();

  void get favourite async => emit(await _theAppService.getData());

}