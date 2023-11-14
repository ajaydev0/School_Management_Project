import 'package:get/get.dart';
import 'package:school_management_app/app/modules/HomePage/model/UpComingEventsModel.dart';

class HomePageController extends GetxController {
  List<UpcomeingEvent> upcomingEventsList = [
    UpcomeingEvent(
        bar: "Sun",
        date: "04,Dec",
        title: "Teachers Day",
        time: "9.30 am - 3.00 pm",
        url: "assets/events/teachers_day.jpg"),
    UpcomeingEvent(
        bar: "Sat",
        date: "01,Oct",
        title: "Cultural Day",
        time: "8.30 am - 5.00 pm",
        url: "assets/events/culture_day.png"),
    UpcomeingEvent(
        bar: "Mon",
        date: "29,Aug",
        title: "Sprots Day",
        time: "9.30 am - 3.00 pm",
        url: "assets/events/sports_day.webp"),
    UpcomeingEvent(
        bar: "Tue",
        date: "02,Dec",
        title: "Teachers Day",
        time: "9.30 am - 3.00 pm",
        url: "assets/events/teachers_day.jpg"),
    UpcomeingEvent(
        bar: "Wed",
        date: "09,Dec",
        title: "Teachers Day",
        time: "9.30 am - 3.00 pm",
        url: "assets/events/teachers_day.jpg"),
  ];
}
