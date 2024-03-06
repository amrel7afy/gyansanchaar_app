import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ScheduleController extends GetxController {
  Rx<DateTime> dateTime = DateTime.now().obs;
  late RxString dayName;
  late RxInt day;
  late RxString monthAndYear;


  ScheduleController() {
    // Initialize string with the weekday name
    dayName = DateFormat('EEE').format(dateTime.value).obs;
    day = dateTime.value.day.obs;
    monthAndYear = DateFormat('MMM yyyy').format(dateTime.value).obs;

  }

  changeDate(DateTime datetime){
    dayName=dayName = DateFormat('EEE').format(datetime).obs;
    day = datetime.day.obs;
    monthAndYear = DateFormat('MMM yyyy').format(datetime).obs;
    update();
  }
}
