import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pj_bookcar/screens/ticket_view.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Xin chào bạn,", style: Styles.headLineStyle1,
                        ),
                        const Gap(5),
                        Text(
                            "Bạn đã sẵn sàng chưa?", style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              "assets/images/user_552721.png"
                            )
                          )
                        ),
                      )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Chuyến xe sắp tới", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("You are tapped");
                      },
                        child: Text("Xem tất cả", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tìm kiếm gần đây", style: Styles.headLineStyle2,),
                InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                    child: Text("Xem tất cả", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
