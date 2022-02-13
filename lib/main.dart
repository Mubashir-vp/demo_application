import 'package:demo_application/view/detailspage.dart';
import 'package:demo_application/view/homeScreen.dart';
import 'package:demo_application/view/ticketBookingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
            designSize:const Size(428, 926),

      builder: () {
        return  MaterialApp(
          
          home: TicketBooking(),
          debugShowCheckedModeBanner: false,
        );
      }
    ),
  );
}
