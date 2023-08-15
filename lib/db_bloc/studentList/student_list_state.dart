part of 'student_list_bloc.dart';

@freezed
class StudentListState with _$StudentListState {
  const factory StudentListState({
    required List<Student> studentList,
  }) = _StudentListState;




  factory StudentListState.initial() => const StudentListState(studentList: []);


  factory StudentListState.viewAllstudents({
    required List<Student> students,
  }) =>
      StudentListState(
        studentList: students,
      );

      
  // factory StudentListState.viewStudent(
  //         {required List<Student> students, required int index}) =>
  //     StudentListState(studentList: students);
}
















