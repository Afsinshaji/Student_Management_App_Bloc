// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'dart:developer';
import 'dart:io';

import 'package:db_hive/model/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:hive_flutter/hive_flutter.dart';

import 'package:image_picker/image_picker.dart';

//import '../../db/function/db_function.dart';
import '../../../db_bloc/studentList/student_list_bloc.dart';
import '../HomeScreen.dart';

// ignore: must_be_immutable
class EditProfile extends StatelessWidget {
  EditProfile(
      {Key? key,
      // required this.passValue01,
      required this.index,
      required this.passValueProfile})
      : super(key: key);

  Student passValueProfile;
  int index;

  final _nameController = TextEditingController();

  final _ageController = TextEditingController();

  final _numController = TextEditingController();

  final _mailController = TextEditingController();

  String? imagePath;

//build======================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              dpImage(),
              szdBox,
              textFieldName(
                  myController: _nameController,
                  hintName: passValueProfile.name),
              szdBox,
              textFieldName(
                  myController: _ageController,
                  hintName: passValueProfile.age),
              szdBox,
              textFieldName(
                  myController: _numController,
                  hintName: passValueProfile.number),
              szdBox,
              textFieldName(
                  myController: _mailController,
                  hintName: passValueProfile.mail),
              szdBox,
              elavatedbtn(context),
            ]),
          ),
        ));
  }

  // final ImagePicker _picker = ImagePicker();
  Future<void> StudentAddBtn(int index,BuildContext context) async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    final number = _numController.text.trim();
    final mail = _mailController.text.trim();
    // final _image = imagePath;
    if (imagePath == null) {
      List<Student> studentlist = StudentBox.getstudentData().values.toList();
      imagePath = studentlist[index].image;
    }
    if (name.isEmpty || age.isEmpty || number.isEmpty || mail.isEmpty) {
      return;
    }
    print('$name $age $number');

    final students = Student(
      name: name,
      age: age,
      number: number,
      mail: mail,
      image: imagePath!,
    );
    // final studentDB = await Hive.openBox<Student>('student_db');
    List<Student> studentsList = StudentBox.getstudentData().values.toList();

    BlocProvider.of<StudentListBloc>(context).add(editData(
      studentsList: studentsList,
      index: index,
      student: students,
    ));
    //  studentDB.putAt(index, students);
    // getStudents();
  }

  Future<void> takePhoto() async {
    final PickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (PickedFile != null) {
   //   setState(() {
        imagePath = PickedFile.path;
    //  });
    }
  }

  Widget elavatedbtn(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        StudentAddBtn(index,context);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx) => const HomeScreen()),
            (route) => false);
      },
      icon: const Icon(Icons.update_rounded),
      label: const Text('Update'),
    );
  }

  Widget textFieldName(
      {required TextEditingController myController, String hintName = 'hiii'}) {
    myController.text = hintName;
    return TextFormField(
      // initialValue: hintName,
      onFieldSubmitted: (value) {
        log(myController.text);
      },
      autofocus: false,
      controller: myController,
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(234, 236, 238, 2),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        hintText: hintName,
      ),
    );
  }

  Widget dpImage() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 75,
          backgroundImage: imagePath == null
              ? FileImage(File(passValueProfile.image))
              : FileImage(File(imagePath!)),
        ),
        Positioned(
            bottom: 2,
            right: 10,
            child: InkWell(
                child: const Icon(
                  Icons.add_a_photo_outlined,
                  size: 30,
                ),
                onTap: () {
                  takePhoto();
                })),
      ],
    );
  }

  Widget szdBox = const SizedBox(height: 20);
}
