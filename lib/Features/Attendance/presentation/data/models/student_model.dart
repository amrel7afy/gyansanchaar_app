enum AttendanceStatus{
  present, late, absent
}
class StudentModel{

  final String name;
  final AttendanceStatus attendanceStatus;

  StudentModel({required this.name,this.attendanceStatus=AttendanceStatus.absent});

}