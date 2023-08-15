// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:db_hive/model/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';

//import '../../db/function/db_function.dart';
import '../../../db_bloc/studentList/student_list_bloc.dart';

class AddStudent extends StatelessWidget {
  AddStudent({Key? key}) : super(key: key);

  final _nameController = TextEditingController();

  final _ageController = TextEditingController();

  final _numController = TextEditingController();

  final _mailController = TextEditingController();

  String? imagePath;

// builder----------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Student'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              dpImage(),
              szdBox,
              textFieldName(myController: _nameController, hintName: "Name"),
              szdBox,
              textFieldName(myController: _ageController, hintName: "Age"),
              szdBox,
              textFieldName(
                  myController: _numController, hintName: "phone Number"),
              szdBox,
              textFieldName(myController: _mailController, hintName: "E-mail"),
              szdBox,
              elavatedbtn(
                myIcon: const Icon(Icons.person_add_alt_outlined),
                myLabel: const Text('Add student'),
                context: context,
              ),
            ]),
          ),
        ));
  }

  // final ImagePicker _picker = ImagePicker();
  Future<void> StudentAddBtn(BuildContext context) async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    final number = _numController.text.trim();
    final mail = _mailController.text.trim();

    if (name.isEmpty || age.isEmpty || number.isEmpty || mail.isEmpty) {
      return;
    }

    final students = Student(
      name: name,
      age: age,
      number: number,
      mail: mail,
      image: imagePath!,
    );

    BlocProvider.of<StudentListBloc>(context).add(
      addData(
        studentData: students,
      ),
    );

    // addStudent(_students);
  }

  Widget elavatedbtn(
      {required Icon myIcon,
      required Text myLabel,
      required BuildContext context}) {
    return ElevatedButton.icon(
      onPressed: () {
        StudentAddBtn(context);

        Navigator.of(context).pop();
      },
      icon: myIcon,
      label: myLabel,
    );
  }

  Widget textFieldName(
      {required TextEditingController myController, hintName}) {
    return TextFormField(
      controller: myController,
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(234, 236, 238, 2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
              ? const AssetImage('assests/images.png') as ImageProvider
              : FileImage(File(imagePath!)),
        ),
        Positioned(
            bottom: 10,
            right: 25,
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

  Future<void> takePhoto() async {
    final PickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      // setState(() {
      imagePath = PickedFile.path;
      // });
    }
  }

  Widget szdBox = const SizedBox(height: 20);
}
