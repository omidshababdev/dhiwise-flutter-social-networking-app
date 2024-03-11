// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [live_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LiveModel extends Equatable {
  LiveModel() {}

  LiveModel copyWith() {
    return LiveModel();
  }

  @override
  List<Object?> get props => [];
}
