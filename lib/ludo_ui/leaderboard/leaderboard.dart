import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/play_offline/play_offline_players.dart';
import 'package:ludo/ludo_ui/reusable/colors_utils.dart';
import 'package:ludo/ludo_ui/reusable/empty_reusable_container.dart';
import 'package:ludo/ludo_ui/reusable/reusable_container.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "LEADERBOARD",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          const SizedBox(
            height: 60,
          ),
          ReusableEmptyContainer(
            widget: Column(
              children: [
                const ReusableEmptyContainer(
                  widget: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ReusableColoredContainer(
                            height: 50,
                            text: "Daily",
                            font_Size: 25,
                          ),
                        ),
                        Expanded(
                          child: ReusableColoredContainer(
                            height: 50,
                            text: "Weekly",
                            font_Size: 25,
                          ),
                        ),
                        Expanded(
                          child: ReusableColoredContainer(
                            height: 50,
                            font_Size: 16,
                            text: "Monthly",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: ColorsUtils.mediumBlue,
                    border: Border.all(color: Colors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  //  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 60,
                    margin: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: ColorsUtils.mediumBlue,
                      border: Border.all(color: Colors.yellow, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          ' Rank',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                        ),
                        VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                          width: 2,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                        ),
                        VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                          width: 2,
                        ),
                        Text(
                          'Balance',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                  decoration: BoxDecoration(
                    color: ColorsUtils.mediumBlue,
                    border: Border.all(color: Colors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  //  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "1.",
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                  decoration: BoxDecoration(
                    color: ColorsUtils.mediumBlue,
                    border: Border.all(color: Colors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  //  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "2.",
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                  decoration: BoxDecoration(
                    color: ColorsUtils.mediumBlue,
                    border: Border.all(color: Colors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  //  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "3.",
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: ReusableEmptyContainer(
                      height: 30,
                      width: 50,
                      widget: Image.asset(
                        "assets/ludo/backicon.png",
                        height: 25,
                        width: 20,
                      ),
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
