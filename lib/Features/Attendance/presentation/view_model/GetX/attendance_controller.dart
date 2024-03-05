import 'dart:developer';

import 'package:get/get.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/data/models/student_model.dart';

class AttendanceController extends GetxController {


  changeAttendanceStatusToPresent(StudentModel student) {
    String status=student.attendanceStatus.name;
    student.attendanceStatus = AttendanceStatus.present;
    log('${student.name}: from $status to ${student.attendanceStatus.name}');
    update();
  }

  changeAttendanceStatusToLate(StudentModel student) {
    String status=student.attendanceStatus.name;
    student.attendanceStatus = AttendanceStatus.late;
    log('${student.name}: from $status to ${student.attendanceStatus.name}');
    update();
  }

  changeAttendanceStatusToAbsent(StudentModel student) {
    String status=student.attendanceStatus.name;
    student.attendanceStatus = AttendanceStatus.absent;
    log('${student.name}: from $status to ${student.attendanceStatus.name}');
    update();
  }

  final List<StudentModel> students = [
    StudentModel(
      name: '1. Name Student',
      attendanceStatus: AttendanceStatus.late,
    ),
    StudentModel(
      name: '2. Name Student',
      attendanceStatus: AttendanceStatus.present,
    ),
    StudentModel(
      name: '3. Name Student',
      attendanceStatus: AttendanceStatus.late,
    ),
    StudentModel(
      name: '4. Name Student',
      attendanceStatus: AttendanceStatus.absent,
    ),
    StudentModel(
      name: '5. Name Student',
      attendanceStatus: AttendanceStatus.late,
    ),
    StudentModel(
      name: '6. Name Student',
      attendanceStatus: AttendanceStatus.absent,
    ),
    StudentModel(
      name: '7. Name Student',
      attendanceStatus: AttendanceStatus.present,
    ),
    StudentModel(
      name: '8. Name Student',
      attendanceStatus: AttendanceStatus.late,
    ),
    StudentModel(
      name: '9. Name Student',
      attendanceStatus: AttendanceStatus.absent,
    ),
    StudentModel(
      name: '10. Name Student',
      attendanceStatus: AttendanceStatus.present,
    ),
    StudentModel(
        name: '11. Name Student',
        attendanceStatus: AttendanceStatus.absent,
        isLastStudent: true),
  ].obs;
}
