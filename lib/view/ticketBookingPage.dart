import 'package:flutter/material.dart';
import 'package:demo_application/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';
class TicketBooking extends StatelessWidget {
   TicketBooking({ Key? key }) : super(key: key);
  ConstantsColors colors = ConstantsColors();
  Widgets widgets = Widgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height:double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/ticketbooking.png",
          ),
        ),
      ),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
              backgroundColor: Colors.transparent,
              floating: true,
              leading: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                    height: 120.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    child: Icon(
                      FontAwesomeIcons.angleLeft,
                      color: colors.primaryRed,
                    )),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                      height: 120.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                      child: Icon(
                        FontAwesomeIcons.bookmark,
                        color: colors.primaryRed,
                      )),
                )
              ]),
          SliverToBoxAdapter(
            child: Stack(clipBehavior: Clip.none, children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          50.r,
                        ),
                        topRight: Radius.circular(50.r),
                      )),
                  height: 800.h,
                ),
              ),
              Positioned(
                left: 100.w,
                top: 0,
                bottom: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        14.r,
                      ),
                      child: SizedBox(
                        height: 180.h,
                        width: 120.w,
                        child: Image.asset(
                          widgets.images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 190.h,
                        ),
                        Text(
                          "Finding Nemo",
                          style: textStyle(
                            Colors.black,
                            20.sp,
                            FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Director: Lee Unkrich",
                          style: textStyle(
                            colors.textColor,
                            16.sp,
                            FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Runtime: 1h 40m",
                          style: textStyle(
                            colors.textColor,
                            16.sp,
                            FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Animation Drama",
                          style: textStyle(
                            colors.textColor,
                            16.sp,
                            FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: colors.primaryRed,
                              size: 15,
                            ),
                            Text(
                              " 7.8",
                              style: textStyle(
                                colors.textColor,
                                16.sp,
                                FontWeight.normal,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Plot summary",
                        style: textStyle(
                          Colors.black,
                          24.sp,
                          FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        """Marlin (Albert Brooks), a clown fish, is\n"""
                        """overly cautious with his son, Nemo\n"""
                        """(Alexander Gould), who has a foreshortened fin.\n"""
                        """When Nemo swims too close to the surface to\n"""
                        """prove himself, he is caught by a diver,\n"""
                        """and horrified Marlin must set out to find him.\n""",
                        style: textStyle(
                          Colors.black,
                          16.sp,
                          FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Cast & Crew",
                            style: textStyle(
                              Colors.black,
                              17.sp,
                              FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 150.w,
                          ),
                          Text(
                            "View all",
                            style: textStyle(
                              colors.primaryRed,
                              17.sp,
                              FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(
                                    2.0,
                                    2.0,
                                  ),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Row(children: [
                              SizedBox(
                                height: 40.h,
                                width: 40.w,
                                child: Image.asset(
                                  "assets/ellen.jpg",
                                ),
                              ),
                              Text(
                                "Ellen\nDegeres",
                                style: textStyle(
                                  Colors.black,
                                  18.sp,
                                  FontWeight.w300,
                                ),
                              )
                            ]),
                          ),
                          SizedBox(
                            width: 120.w,
                          ),
                          Container(
                            height: 80.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(
                                    2.0,
                                    2.0,
                                  ),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Row(children: [
                              SizedBox(
                                height: 40.h,
                                width: 40.w,
                                child: Image.asset(
                                  "assets/alexander.jpg",
                                ),
                              ),
                              Text(
                                "Alexander\nGould",
                                style: textStyle(
                                  Colors.black,
                                  18.sp,
                                  FontWeight.w300,
                                ),
                              )
                            ]),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 60.w,
                          right: 60.w,
                          top: 40.h,
                        ),
                        child: Container(
                          height: 45.h,
                          width: 260.w,
                          decoration: BoxDecoration(
                            color: colors.primaryRed,
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Buy Tickets",
                              style: textStyle(
                                Colors.white,
                                18.sp,
                                FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    ));
  }
}