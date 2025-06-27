part of 'image_picker_bloc.dart';

@immutable
sealed class ImagePickerState {
  const ImagePickerState();
}

final class ImagePickerInitial extends ImagePickerState {}

final class ImagePickerLoaded extends ImagePickerState {
  final Uint8List imageBytes;

  const ImagePickerLoaded(this.imageBytes);
}

final class ImagePickerError extends ImagePickerState {}
