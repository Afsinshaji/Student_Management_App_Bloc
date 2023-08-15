

import 'dart:developer';
import 'dart:io';

import 'package:db_hive/domain/db/function/db_function.dart';
import 'package:db_hive/model/data.dart';
import 'package:db_hive/presentation/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../db_bloc/studentList/student_list_bloc.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getStudents();

    return BlocBuilder<StudentListBloc, StudentListState>(
        builder: (context, state) {

      log(StudentBox.getstudentData().values.toString());
      StudentListState initialState = StudentListState.initial();
      
      if (state == initialState) {
        context.read<StudentListBloc>().add(const getAlldata());
      }
      if (state.studentList.isNotEmpty) {
        // if() {
        return ListView.separated(
            itemBuilder: ((context, index) {
              final data = state.studentList[index];
              return ListTile(
                  contentPadding: const EdgeInsets.all(15.0),
                  leading: CircleAvatar(
                    backgroundImage: FileImage(File(data.image)),
                    radius: 30,
                  ),
                  title: Text(data.name),
                  trailing: IconButton(
                    onPressed: () {
                      deleteAlert(context, index);
                      // deleteStudent(index);
                    },
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentProfile(
                                  passValue: data,
                                  passId: index,
                                )));
                  }));
            }),
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: state.studentList.length);
      }
      return const Center(
        child: Text('List is empty'),
      );
    }

        //  },
        );
  }
}

deleteAlert(BuildContext context, index) {
  showDialog(
      context: context,
      builder: ((ctx) => AlertDialog(
            content: const Text('Are you sure you want to delete'),
            actions: [
              TextButton(
                  onPressed: () {
                    // deleteStudent(index);
                    List<Student> studentsList =
                        StudentBox.getstudentData().values.toList();

                        
                    BlocProvider.of<StudentListBloc>(context).add(
                        deleteData(studentsList: studentsList, index: index));
                    Navigator.of(context).pop(ctx);
                  },
                  child: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                onPressed: () => Navigator.of(context).pop(ctx),
                child: const Text('Cancel'),
              )
            ],
          )));
}
