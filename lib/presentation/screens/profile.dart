// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'dart:io';

//import 'package:db_hive/db/function/db_function.dart';
import 'package:db_hive/model/data.dart';
//import 'package:db_hive/screens/widgets/StudentList.dart';

import 'package:db_hive/presentation/screens/widgets/editProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../db_bloc/studentList/student_list_bloc.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class StudentProfile extends StatelessWidget {
  final double coverHeight = 200;
  final double profileHeight = 200;

  StudentProfile({
    Key? key,
    required this.passValue,
    required this.passId,
  }) : super(key: key);

  Student passValue;
  final int passId;

//functions or widgets========================================================

  Widget content() {
    return BlocBuilder<StudentListBloc, StudentListState>(
        builder: (context, state) {
      if (state.studentList[passId] != null) {
         context.read<StudentListBloc>().add(const getAlldata());
        return SizedBox(
          width: 200,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileImage(),
              Text(
                ' ${state.studentList[passId].name}',
                style: const TextStyle(fontSize: 28, fontFamily: 'Ubuntu'),
              ),
              Text('Age : ${state.studentList[passId].age}',
                  style: const TextStyle(fontSize: 18, color: Colors.grey)),
              Text('PH No : ${state.studentList[passId].number}',
                  style: const TextStyle(fontSize: 18, color: Colors.grey)),
              Text('E-mail : ${state.studentList[passId].mail}',
                  style: const TextStyle(fontSize: 18, color: Colors.grey)),
            ],
          ),
        );
      } else {
        return Center(child: Text('Not Updated'));
      }
    });
  }

  Widget ProfileImage() => CircleAvatar(
        backgroundImage: FileImage(File(passValue.image)),
        radius: profileHeight / 2,
      );

  Widget floatbtn(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EditProfile(
                        passValueProfile: passValue,
                        index: passId,
                      )));
        },
        child: const Icon(Icons.edit_outlined));
  }

//builder====================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: floatbtn(context),
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          content(),
        ]));
  }
}
