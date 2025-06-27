import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_in_stanislav/presentation/blocs/image_picker_bloc/image_picker_bloc.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static void setupGetIt() {
    getIt
      ..registerLazySingleton(() => ImagePicker())
      ..registerFactory(() => ImagePickerBloc(picker: getIt()));
  }
}
