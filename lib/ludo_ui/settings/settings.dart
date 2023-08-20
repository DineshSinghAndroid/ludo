import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/myprofile.dart';

import '../reusable/empty_reusable_container.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF02249B),
                          Color(0xFF537ED2),
                          Color(0xFF02249B),
                        ],
                        stops: [0.0172, 0.4912, 1],
                      ),
                    ),
                    child: Column(
                      children: [
                        const ReusableEmptyContainer(
                          widget: Text(
                            "Settings",
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          radius: 0.0,
                          width: 100,
                          isBorder: false,
                        ),
                        ClipRRect(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF02249B),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      -50,
                                    ),
                                    blurRadius: 8,
                                    color: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Audio",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ReusableEmptyContainer(
                                        height: 30,
                                        width: 40,
                                        margin: 2,
                                        widget: Image.asset(
                                          "assets/ludo/speaker.png",
                                          height: 25,
                                          width: 20,
                                        ),
                                      ),
                                      ReusableEmptyContainer(
                                        height: 30,
                                        width: 40,
                                        margin: 2,
                                        widget: Image.asset(
                                          "assets/ludo/music.png",
                                          height: 25,
                                          width: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF02249B),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      -50,
                                    ),
                                    blurRadius: 8,
                                    color: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Game Rules",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  ReusableEmptyContainer(
                                    height: 30,
                                    width: 80,
                                    radius: 15,
                                    margin: 2,
                                    widget: Text(
                                      "Read",
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF02249B),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      -50,
                                    ),
                                    blurRadius: 8,
                                    color: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  ReusableEmptyContainer(
                                    height: 30,
                                    width: 80,
                                    radius: 15,
                                    margin: 2,
                                    widget: Text(
                                      "View",
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF02249B),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      -50,
                                    ),
                                    blurRadius: 8,
                                    color: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Notification",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  ReusableEmptyContainer(
                                    height: 30,
                                    width: 80,
                                    radius: 15,
                                    margin: 2,
                                    widget: Text(
                                      "Edit",
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF02249B),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      -50,
                                    ),
                                    blurRadius: 8,
                                    color: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Request Account Deletion",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  ReusableEmptyContainer(
                                    height: 30,
                                    width: 80,
                                    radius: 15,
                                    margin: 2,
                                    widget: Text(
                                      "Delete",
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF02249B),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      -50,
                                    ),
                                    blurRadius: 8,
                                    color: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Support",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  ReusableEmptyContainer(
                                    height: 30,
                                    width: 80,
                                    radius: 15,
                                    margin: 2,
                                    widget: Text(
                                      "FAQ",
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFF02249B),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      -50,
                                    ),
                                    blurRadius: 8,
                                    color: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Version",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "0.0.0.0",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableEmptyContainer(
                                height: 30,
                                //  width: 80,
                                radius: 8,
                                margin: 2,
                                widget: Row(
                                  children: [
                                    Image.asset("assets/ludo/games.png"),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "Sign Out",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ReusableEmptyContainer(
                                  height: 30,
                                  //   width: 80,
                                  radius: 8,
                                  margin: 2,
                                  widget:
                                      Image.asset("assets/ludo/facebook.png")),
                              const ReusableEmptyContainer(
                                height: 30,
                                //   width: 80,
                                radius: 8,
                                margin: 2,
                                widget: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.amber,
                                      size: 15,
                                    ),
                                    Text(
                                      "More Games",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/ludo/Rate.png",
                          height: 50,
                          width: 50,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                            showModalBottomSheet<void>(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: Colors.black38,
                                builder: (BuildContext context) {
                                  return const MyProfile();
                                });
                          },
                          child: Image.asset(
                            "assets/ludo/Back.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Image.asset(
                          "assets/ludo/Share.png",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
