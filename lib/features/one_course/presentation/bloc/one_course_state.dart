part of 'one_course_bloc.dart';

sealed class OneCourseState extends Equatable {
  const OneCourseState();
}

final class OneCourseInitial extends OneCourseState {
  @override
  List<Object> get props => [];
}
