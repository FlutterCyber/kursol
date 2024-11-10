part of 'my_courses_bloc.dart';

sealed class MyCoursesState extends Equatable {
  const MyCoursesState();
}

final class MyCoursesInitial extends MyCoursesState {
  @override
  List<Object> get props => [];
}
