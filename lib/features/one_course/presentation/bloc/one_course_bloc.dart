import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'one_course_event.dart';
part 'one_course_state.dart';

class OneCourseBloc extends Bloc<OneCourseEvent, OneCourseState> {
  OneCourseBloc() : super(OneCourseInitial()) {
    on<OneCourseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
