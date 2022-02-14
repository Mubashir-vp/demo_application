import 'package:demo_application/constants.dart';
import 'package:demo_application/view/detailspage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(
          key: key,
        );
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _currentIndex = 0;
int _currentIndexNavbar = 0;

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(
    BuildContext context,
  ) {
    ConstantsColors constantsColors = ConstantsColors();
    Widgets widgets = Widgets();
    TabController tabController = TabController(
      length: 3,
      vsync: this,
    );
    List genereList = [
      "Drama",
      "Comedy",
      "Horror",
      "Thriller",
      "Romantic",
    ];
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.r),
          topLeft: Radius.circular(50.r),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          selectedItemColor: constantsColors.primaryRed,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndexNavbar,
          onTap: (index) {
            _currentIndexNavbar = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    color: _currentIndexNavbar == 0
                        ? constantsColors.primaryRed
                        : Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  width: 80.w,
                  height: 40.h,
                  child: Center(
                    child: FaIcon(FontAwesomeIcons.home,
                        size: 16,
                        color: _currentIndexNavbar == 0
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: _currentIndexNavbar == 1
                        ? constantsColors.primaryRed
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 80.w,
                height: 40.h,
                child: Center(
                  child: FaIcon(FontAwesomeIcons.bookmark,
                      size: 16,
                      color: _currentIndexNavbar == 1
                          ? Colors.white
                          : Colors.black),
                ),
              ),
              label: "save",
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: _currentIndexNavbar == 2
                        ? constantsColors.primaryRed
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 80.w,
                height: 40.h,
                child: Center(
                  child: FaIcon(FontAwesomeIcons.user,
                      size: 16,
                      color: _currentIndexNavbar == 2
                          ? Colors.white
                          : Colors.black),
                ),
              ),
              label: "Category",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: constantsColors.scaffoldBackgroundColor,
        elevation: 0.0,
        leading: const Icon(
          Icons.align_horizontal_left_outlined,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: constantsColors.primaryRed,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              "TO, Canada",
              style: textStyle(
                constantsColors.textColor,
                15.sp,
                FontWeight.normal,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: Icon(
              Icons.search,
              color: constantsColors.primaryRed,
            ),
          ),
        ],
      ),
      backgroundColor: constantsColors.scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 370.w,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: constantsColors.primaryRed,
              controller: tabController,
              unselectedLabelColor: constantsColors.textColor,
              labelColor: Colors.black,
              labelStyle: textStyle(
                Colors.black,
                16.sp,
                FontWeight.bold,
              ),
              unselectedLabelStyle: textStyle(
                constantsColors.textColor,
                16.sp,
                FontWeight.normal,
              ),
              tabs: const [
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "New",
                ),
                Tab(
                  text: "Upcoming",
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 50.h,
            width: 400.w,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (
                BuildContext context,
                index,
              ) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    bottom: 6,
                    top: 6,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _currentIndex = index;
                      setState(
                        () {},
                      );
                    },
                    child: Container(
                      height: 50.w,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: _currentIndex == index
                            ? constantsColors.primaryRed
                            : Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
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
                      ),
                      child: Center(
                        child: Text(
                          genereList[index],
                          style: textStyle(
                            _currentIndex == index
                                ? Colors.white
                                : Colors.black,
                            16.sp,
                            FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (
                BuildContext context,
                index,
              ) =>
                  SizedBox(
                width: 30.w,
              ),
              itemCount: 5,
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.separated(
                    itemBuilder: (BuildContext context, index) {
                      return SizedBox(
                          height: 180.h,
                          width: 400.w,
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  DetailsPage(index: index,),
                              ),
                            ),
                            child: widgets.movieCard(
                              movieTitle: widgets.movieDetails[index][0],
                              genere: widgets.movieDetails[index][1],
                              rating: widgets.movieDetails[index][2],
                              image: widgets.images[index],
                            ),
                          ));
                    },
                    separatorBuilder: (BuildContext context, index) {
                      return SizedBox(
                        height: 70.h,
                      );
                    },
                    itemCount: 4),
                const SizedBox(
                  child: Center(
                    child: Text(
                      "New",
                    ),
                  ),
                ),
                const SizedBox(
                  child: Center(
                    child: Text(
                      "Upcoming",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
