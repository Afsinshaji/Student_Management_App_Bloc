// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student studentData) addData,
    required TResult Function() getAllData,
    required TResult Function(List<Student> studentsList, int index) deleteData,
    required TResult Function(
            List<Student> studentsList, Student student, int index)
        editData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student studentData)? addData,
    TResult? Function()? getAllData,
    TResult? Function(List<Student> studentsList, int index)? deleteData,
    TResult? Function(List<Student> studentsList, Student student, int index)?
        editData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student studentData)? addData,
    TResult Function()? getAllData,
    TResult Function(List<Student> studentsList, int index)? deleteData,
    TResult Function(List<Student> studentsList, Student student, int index)?
        editData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addData value) addData,
    required TResult Function(getAlldata value) getAllData,
    required TResult Function(deleteData value) deleteData,
    required TResult Function(editData value) editData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addData value)? addData,
    TResult? Function(getAlldata value)? getAllData,
    TResult? Function(deleteData value)? deleteData,
    TResult? Function(editData value)? editData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addData value)? addData,
    TResult Function(getAlldata value)? getAllData,
    TResult Function(deleteData value)? deleteData,
    TResult Function(editData value)? editData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListEventCopyWith<$Res> {
  factory $StudentListEventCopyWith(
          StudentListEvent value, $Res Function(StudentListEvent) then) =
      _$StudentListEventCopyWithImpl<$Res, StudentListEvent>;
}

/// @nodoc
class _$StudentListEventCopyWithImpl<$Res, $Val extends StudentListEvent>
    implements $StudentListEventCopyWith<$Res> {
  _$StudentListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addDataCopyWith<$Res> {
  factory _$$addDataCopyWith(_$addData value, $Res Function(_$addData) then) =
      __$$addDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Student studentData});
}

/// @nodoc
class __$$addDataCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$addData>
    implements _$$addDataCopyWith<$Res> {
  __$$addDataCopyWithImpl(_$addData _value, $Res Function(_$addData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentData = null,
  }) {
    return _then(_$addData(
      studentData: null == studentData
          ? _value.studentData
          : studentData // ignore: cast_nullable_to_non_nullable
              as Student,
    ));
  }
}

/// @nodoc

class _$addData implements addData {
  const _$addData({required this.studentData});

  @override
  final Student studentData;

  @override
  String toString() {
    return 'StudentListEvent.addData(studentData: $studentData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addData &&
            (identical(other.studentData, studentData) ||
                other.studentData == studentData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addDataCopyWith<_$addData> get copyWith =>
      __$$addDataCopyWithImpl<_$addData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student studentData) addData,
    required TResult Function() getAllData,
    required TResult Function(List<Student> studentsList, int index) deleteData,
    required TResult Function(
            List<Student> studentsList, Student student, int index)
        editData,
  }) {
    return addData(studentData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student studentData)? addData,
    TResult? Function()? getAllData,
    TResult? Function(List<Student> studentsList, int index)? deleteData,
    TResult? Function(List<Student> studentsList, Student student, int index)?
        editData,
  }) {
    return addData?.call(studentData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student studentData)? addData,
    TResult Function()? getAllData,
    TResult Function(List<Student> studentsList, int index)? deleteData,
    TResult Function(List<Student> studentsList, Student student, int index)?
        editData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(studentData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addData value) addData,
    required TResult Function(getAlldata value) getAllData,
    required TResult Function(deleteData value) deleteData,
    required TResult Function(editData value) editData,
  }) {
    return addData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addData value)? addData,
    TResult? Function(getAlldata value)? getAllData,
    TResult? Function(deleteData value)? deleteData,
    TResult? Function(editData value)? editData,
  }) {
    return addData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addData value)? addData,
    TResult Function(getAlldata value)? getAllData,
    TResult Function(deleteData value)? deleteData,
    TResult Function(editData value)? editData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(this);
    }
    return orElse();
  }
}

abstract class addData implements StudentListEvent {
  const factory addData({required final Student studentData}) = _$addData;

  Student get studentData;
  @JsonKey(ignore: true)
  _$$addDataCopyWith<_$addData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getAlldataCopyWith<$Res> {
  factory _$$getAlldataCopyWith(
          _$getAlldata value, $Res Function(_$getAlldata) then) =
      __$$getAlldataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getAlldataCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$getAlldata>
    implements _$$getAlldataCopyWith<$Res> {
  __$$getAlldataCopyWithImpl(
      _$getAlldata _value, $Res Function(_$getAlldata) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getAlldata implements getAlldata {
  const _$getAlldata();

  @override
  String toString() {
    return 'StudentListEvent.getAllData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getAlldata);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student studentData) addData,
    required TResult Function() getAllData,
    required TResult Function(List<Student> studentsList, int index) deleteData,
    required TResult Function(
            List<Student> studentsList, Student student, int index)
        editData,
  }) {
    return getAllData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student studentData)? addData,
    TResult? Function()? getAllData,
    TResult? Function(List<Student> studentsList, int index)? deleteData,
    TResult? Function(List<Student> studentsList, Student student, int index)?
        editData,
  }) {
    return getAllData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student studentData)? addData,
    TResult Function()? getAllData,
    TResult Function(List<Student> studentsList, int index)? deleteData,
    TResult Function(List<Student> studentsList, Student student, int index)?
        editData,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addData value) addData,
    required TResult Function(getAlldata value) getAllData,
    required TResult Function(deleteData value) deleteData,
    required TResult Function(editData value) editData,
  }) {
    return getAllData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addData value)? addData,
    TResult? Function(getAlldata value)? getAllData,
    TResult? Function(deleteData value)? deleteData,
    TResult? Function(editData value)? editData,
  }) {
    return getAllData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addData value)? addData,
    TResult Function(getAlldata value)? getAllData,
    TResult Function(deleteData value)? deleteData,
    TResult Function(editData value)? editData,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData(this);
    }
    return orElse();
  }
}

abstract class getAlldata implements StudentListEvent {
  const factory getAlldata() = _$getAlldata;
}

/// @nodoc
abstract class _$$deleteDataCopyWith<$Res> {
  factory _$$deleteDataCopyWith(
          _$deleteData value, $Res Function(_$deleteData) then) =
      __$$deleteDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Student> studentsList, int index});
}

/// @nodoc
class __$$deleteDataCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$deleteData>
    implements _$$deleteDataCopyWith<$Res> {
  __$$deleteDataCopyWithImpl(
      _$deleteData _value, $Res Function(_$deleteData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentsList = null,
    Object? index = null,
  }) {
    return _then(_$deleteData(
      studentsList: null == studentsList
          ? _value._studentsList
          : studentsList // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$deleteData implements deleteData {
  const _$deleteData(
      {required final List<Student> studentsList, required this.index})
      : _studentsList = studentsList;

  final List<Student> _studentsList;
  @override
  List<Student> get studentsList {
    if (_studentsList is EqualUnmodifiableListView) return _studentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentsList);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'StudentListEvent.deleteData(studentsList: $studentsList, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteData &&
            const DeepCollectionEquality()
                .equals(other._studentsList, _studentsList) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studentsList), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteDataCopyWith<_$deleteData> get copyWith =>
      __$$deleteDataCopyWithImpl<_$deleteData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student studentData) addData,
    required TResult Function() getAllData,
    required TResult Function(List<Student> studentsList, int index) deleteData,
    required TResult Function(
            List<Student> studentsList, Student student, int index)
        editData,
  }) {
    return deleteData(studentsList, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student studentData)? addData,
    TResult? Function()? getAllData,
    TResult? Function(List<Student> studentsList, int index)? deleteData,
    TResult? Function(List<Student> studentsList, Student student, int index)?
        editData,
  }) {
    return deleteData?.call(studentsList, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student studentData)? addData,
    TResult Function()? getAllData,
    TResult Function(List<Student> studentsList, int index)? deleteData,
    TResult Function(List<Student> studentsList, Student student, int index)?
        editData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(studentsList, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addData value) addData,
    required TResult Function(getAlldata value) getAllData,
    required TResult Function(deleteData value) deleteData,
    required TResult Function(editData value) editData,
  }) {
    return deleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addData value)? addData,
    TResult? Function(getAlldata value)? getAllData,
    TResult? Function(deleteData value)? deleteData,
    TResult? Function(editData value)? editData,
  }) {
    return deleteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addData value)? addData,
    TResult Function(getAlldata value)? getAllData,
    TResult Function(deleteData value)? deleteData,
    TResult Function(editData value)? editData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(this);
    }
    return orElse();
  }
}

abstract class deleteData implements StudentListEvent {
  const factory deleteData(
      {required final List<Student> studentsList,
      required final int index}) = _$deleteData;

  List<Student> get studentsList;
  int get index;
  @JsonKey(ignore: true)
  _$$deleteDataCopyWith<_$deleteData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$editDataCopyWith<$Res> {
  factory _$$editDataCopyWith(
          _$editData value, $Res Function(_$editData) then) =
      __$$editDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Student> studentsList, Student student, int index});
}

/// @nodoc
class __$$editDataCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$editData>
    implements _$$editDataCopyWith<$Res> {
  __$$editDataCopyWithImpl(_$editData _value, $Res Function(_$editData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentsList = null,
    Object? student = null,
    Object? index = null,
  }) {
    return _then(_$editData(
      studentsList: null == studentsList
          ? _value._studentsList
          : studentsList // ignore: cast_nullable_to_non_nullable
              as List<Student>,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$editData implements editData {
  const _$editData(
      {required final List<Student> studentsList,
      required this.student,
      required this.index})
      : _studentsList = studentsList;

  final List<Student> _studentsList;
  @override
  List<Student> get studentsList {
    if (_studentsList is EqualUnmodifiableListView) return _studentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentsList);
  }

  @override
  final Student student;
  @override
  final int index;

  @override
  String toString() {
    return 'StudentListEvent.editData(studentsList: $studentsList, student: $student, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editData &&
            const DeepCollectionEquality()
                .equals(other._studentsList, _studentsList) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_studentsList), student, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$editDataCopyWith<_$editData> get copyWith =>
      __$$editDataCopyWithImpl<_$editData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Student studentData) addData,
    required TResult Function() getAllData,
    required TResult Function(List<Student> studentsList, int index) deleteData,
    required TResult Function(
            List<Student> studentsList, Student student, int index)
        editData,
  }) {
    return editData(studentsList, student, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Student studentData)? addData,
    TResult? Function()? getAllData,
    TResult? Function(List<Student> studentsList, int index)? deleteData,
    TResult? Function(List<Student> studentsList, Student student, int index)?
        editData,
  }) {
    return editData?.call(studentsList, student, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Student studentData)? addData,
    TResult Function()? getAllData,
    TResult Function(List<Student> studentsList, int index)? deleteData,
    TResult Function(List<Student> studentsList, Student student, int index)?
        editData,
    required TResult orElse(),
  }) {
    if (editData != null) {
      return editData(studentsList, student, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addData value) addData,
    required TResult Function(getAlldata value) getAllData,
    required TResult Function(deleteData value) deleteData,
    required TResult Function(editData value) editData,
  }) {
    return editData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addData value)? addData,
    TResult? Function(getAlldata value)? getAllData,
    TResult? Function(deleteData value)? deleteData,
    TResult? Function(editData value)? editData,
  }) {
    return editData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addData value)? addData,
    TResult Function(getAlldata value)? getAllData,
    TResult Function(deleteData value)? deleteData,
    TResult Function(editData value)? editData,
    required TResult orElse(),
  }) {
    if (editData != null) {
      return editData(this);
    }
    return orElse();
  }
}

abstract class editData implements StudentListEvent {
  const factory editData(
      {required final List<Student> studentsList,
      required final Student student,
      required final int index}) = _$editData;

  List<Student> get studentsList;
  Student get student;
  int get index;
  @JsonKey(ignore: true)
  _$$editDataCopyWith<_$editData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentListState {
  List<Student> get studentList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentListStateCopyWith<StudentListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListStateCopyWith<$Res> {
  factory $StudentListStateCopyWith(
          StudentListState value, $Res Function(StudentListState) then) =
      _$StudentListStateCopyWithImpl<$Res, StudentListState>;
  @useResult
  $Res call({List<Student> studentList});
}

/// @nodoc
class _$StudentListStateCopyWithImpl<$Res, $Val extends StudentListState>
    implements $StudentListStateCopyWith<$Res> {
  _$StudentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentList = null,
  }) {
    return _then(_value.copyWith(
      studentList: null == studentList
          ? _value.studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentListStateCopyWith<$Res>
    implements $StudentListStateCopyWith<$Res> {
  factory _$$_StudentListStateCopyWith(
          _$_StudentListState value, $Res Function(_$_StudentListState) then) =
      __$$_StudentListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Student> studentList});
}

/// @nodoc
class __$$_StudentListStateCopyWithImpl<$Res>
    extends _$StudentListStateCopyWithImpl<$Res, _$_StudentListState>
    implements _$$_StudentListStateCopyWith<$Res> {
  __$$_StudentListStateCopyWithImpl(
      _$_StudentListState _value, $Res Function(_$_StudentListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentList = null,
  }) {
    return _then(_$_StudentListState(
      studentList: null == studentList
          ? _value._studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$_StudentListState implements _StudentListState {
  const _$_StudentListState({required final List<Student> studentList})
      : _studentList = studentList;

  final List<Student> _studentList;
  @override
  List<Student> get studentList {
    if (_studentList is EqualUnmodifiableListView) return _studentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentList);
  }

  @override
  String toString() {
    return 'StudentListState(studentList: $studentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentListState &&
            const DeepCollectionEquality()
                .equals(other._studentList, _studentList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentListStateCopyWith<_$_StudentListState> get copyWith =>
      __$$_StudentListStateCopyWithImpl<_$_StudentListState>(this, _$identity);
}

abstract class _StudentListState implements StudentListState {
  const factory _StudentListState({required final List<Student> studentList}) =
      _$_StudentListState;

  @override
  List<Student> get studentList;
  @override
  @JsonKey(ignore: true)
  _$$_StudentListStateCopyWith<_$_StudentListState> get copyWith =>
      throw _privateConstructorUsedError;
}
