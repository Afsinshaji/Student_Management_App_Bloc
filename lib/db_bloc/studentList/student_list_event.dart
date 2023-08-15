part of 'student_list_bloc.dart';

@freezed
class StudentListEvent with _$StudentListEvent {
  const factory StudentListEvent.addData({required Student studentData}) =
      addData;
  const factory StudentListEvent.getAllData() = getAlldata;
  const factory StudentListEvent.deleteData(
      {required List<Student> studentsList, required int index}) = deleteData;
      const factory StudentListEvent.editData(
      {required List<Student> studentsList,required Student student, required int index}) = editData;
    
}
