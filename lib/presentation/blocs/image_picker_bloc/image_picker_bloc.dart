import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePicker picker;

  ImagePickerBloc({required this.picker}) : super(ImagePickerInitial()) {
    on<PickImage>(_onPickImage);
  }

  Future<void> _onPickImage(PickImage event, Emitter<ImagePickerState> emit) async {
    try {
      final XFile? file = await picker.pickImage(source: ImageSource.gallery);
      if (file == null) {
        emit(ImagePickerError());

        return;
      }

      final imageBytes = await file.readAsBytes();

      emit(ImagePickerLoaded(imageBytes));
    } catch (e) {
      emit(ImagePickerError());
    }
  }
}
