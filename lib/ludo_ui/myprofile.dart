import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/reusable/colors_utils.dart';
import 'package:ludo/ludo_ui/reusable/empty_reusable_container.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
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
                padding:
                    const EdgeInsets.symmetric(vertical: 35.0, horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableEmptyContainer(
                          height: 30,
                          width: 50,
                          widget: Image.asset(
                            "assets/ludo/backicon.png",
                            height: 25,
                            width: 20,
                          ),
                        ),
                        const Text(
                          "MY PROFILE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: [
                          ReusableEmptyContainer(
                            widget: Column(
                              children: [
                                SizedBox(height: 60,),
                                const ReusableEmptyContainer(
                                  height: 40,
                                  width: 100,
                                  widget: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                const ReusableEmptyContainer(
                                  height: 35,
                                  width: 80,
                                  widget: Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // width: 200,
                                  padding: const EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter mobile number',
                                      hintStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      filled: true,
                                      fillColor: ColorsUtils.mediumBlue,
                                      prefixIcon: const Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // width: 200,
                                  padding: const EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Email Address',
                                      hintStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      filled: true,
                                      fillColor: ColorsUtils.mediumBlue,
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const ReusableEmptyContainer(
                                  widget: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Won",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text(
                                              "0",
                                              style: TextStyle(
                                                color: Colors.amber,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Game Played",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text(
                                              "0",
                                              style: TextStyle(
                                                color: Colors.amber,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Lost",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text(
                                              "0",
                                              style: TextStyle(
                                                color: Colors.amber,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Redeem Referral Code",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Referral Code',
                                      hintStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.amber, width: 2),
                                      ),
                                      filled: true,
                                      fillColor: ColorsUtils.mediumBlue,
                                      prefixIcon: const Icon(
                                        Icons.people_alt,
                                        color: Colors.white,
                                      ),
                                      suffixIcon: Container(
                                        height: 30,
                                        width: 60,
                                        padding: const EdgeInsets.all(1.0),
                                        margin: const EdgeInsets.all(8.0),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.yellow, width: 2),
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        child: const Text(
                                          "Redeem",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 20,
                            right: 20,
                            top: -30,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow,
                              ),
                            ),
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
      ),
    );
  }
}
