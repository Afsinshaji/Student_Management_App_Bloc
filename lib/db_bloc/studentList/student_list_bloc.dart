import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/data.dart';

part 'student_list_event.dart';
part 'student_list_state.dart';
part 'student_list_bloc.freezed.dart';

class StudentListBloc extends Bloc<StudentListEvent, StudentListState> {
  StudentListBloc() : super(StudentListState.initial()) {
    on<getAlldata>((event, emit) {
      final studentDB = StudentBox.getstudentData();
      List<Student> studentList = studentDB.values.toList();
      emit(StudentListState.viewAllstudents(students: studentList));
    });

    on<addData>((event, emit) {
      final studentDB = StudentBox.getstudentData();

      studentDB.add(event.studentData);
      add(const getAlldata());
    });
    on<deleteData>((event, emit) {
      final studentDB = StudentBox.getstudentData();

      studentDB.deleteAt(event.index);
      add(const getAlldata());
    });

    on<editData>((event, emit) {
      final studentDB = StudentBox.getstudentData();

      studentDB.putAt(event.index, event.student);
      add(const getAlldata());
    });
  }
}
