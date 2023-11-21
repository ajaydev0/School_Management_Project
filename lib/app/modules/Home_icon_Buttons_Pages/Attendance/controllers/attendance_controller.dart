import 'package:get/get.dart';
import 'package:school_management_app/app/modules/Home_icon_Buttons_Pages/Attendance/model/Attendance_Model.dart';

class AttendanceController extends GetxController {
  RxBool isAll = false.obs;
  allPresent(bool value) {
    isAll.value = value;
    for (var element in studentAttendList) {
      element.isPresent = value;
    }
    studentAttendList.refresh();
  }

  present({required int index, required bool present}) {
    studentAttendList[index].isPresent = present;
    studentAttendList.refresh();
  }

  RxList<StudentModel> studentAttendList = <StudentModel>[
    StudentModel(rollNo: "484202", name: "Ajay"),
    StudentModel(rollNo: "484203", name: "Snigdha"),
    StudentModel(rollNo: "484204", name: "Prionty"),
    StudentModel(rollNo: "484205", name: "Lima"),
    StudentModel(rollNo: "484206", name: "Dipa"),
    StudentModel(rollNo: "484207", name: "Abul"),
    StudentModel(rollNo: "484208", name: "Kashem"),
    StudentModel(rollNo: "484209", name: "Kuddus"),
    StudentModel(rollNo: "484201", name: "GiyasUddin"),
  ].obs;

  @override
  void onInit() {
    classDropText = "Class".obs;
    sectionDropText = "Section".obs;
    groupDropText = "Group".obs;
    groupBool = false.obs;
    super.onInit();
  }

  late RxString classDropText;
  late RxString sectionDropText;
  late RxString groupDropText;

  classDropDownOnTap(value) {
    classDropText.value = value!;
    groupCheck();
  }

  sectionDropDownOnTap(value) {
    sectionDropText.value = value!;
  }

  groupDropDownOnTap(value) {
    groupDropText.value = value!;
  }

  late RxBool groupBool;
  groupCheck() {
    if (classDropText.value == "Eight") {
      groupBool.value = true;
    } else if (classDropText.value == "Nine") {
      groupBool.value = true;
    } else if (classDropText.value == "Ten") {
      groupBool.value = true;
    } else {
      groupBool.value = false;
    }
  }
}
