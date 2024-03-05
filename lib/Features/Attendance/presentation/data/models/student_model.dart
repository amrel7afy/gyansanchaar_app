enum AttendanceStatus{
  present, late, absent
}
class StudentModel{

  final String name;
   AttendanceStatus attendanceStatus;
  final bool isLastStudent;

  StudentModel({required this.name,this.attendanceStatus=AttendanceStatus.absent,this.isLastStudent=false});

}