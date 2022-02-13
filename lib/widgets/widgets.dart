import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class Widgets {
  ConstantsColors constantsColors = ConstantsColors();

  List images = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.png",
    "assets/image4.jpg",
  ];
  List<List> movieDetails = [
    [
      "Finding Nemo",
      "Animation  Drama",
      "7.7",
    ],
    [
      "Whale Rider",
      "Drama  Family",
          "8.9",
    ],
    [
      "The Little Mermaid",
      "Animation Drama",
      "7.6",
    ],
    [
      "The Meg",
      "Action Drama",
      "8.0",
    ],
  ];

  movieCard({var movieTitle, var genere, var rating, var image}) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.0.w,
        right: 11.0.w,
        top: 0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            top: 28,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20.r,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(
                      5.0,
                      7.0,
                    ),
                  ),
                ],
                color: Colors.white,
              ),
              height: 180.h,
              width: 400.w,
              child: Row(
                children: [
                  SizedBox(
                    width: 150.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        movieTitle,
                        style: textStyle(
                          Colors.black,
                          20.sp,
                          FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        genere,
                        style: textStyle(
                          constantsColors.textColor,
                          16.sp,
                          FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: constantsColors.primaryRed,
                            size: 15,
                          ),
                          Text(
                            "  $rating",
                            style: textStyle(
                              constantsColors.textColor,
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
          ),
          Positioned(
            left: 10,
            top: 0,
            bottom: 28,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                14.r,
              ),
              child: SizedBox(
                height: 180.h,
                width: 120.w,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
