import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pj_bookcar/utils/app_layout.dart';
import 'package:pj_bookcar/utils/app_styles.dart';
import 'package:pj_bookcar/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
            Hien thi khung xanh va icon
             */
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Hà Nội", style: Styles.headLineStyle4.copyWith(color: Colors.white),),

                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(

                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("The width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                  ),),
                                  )),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 4.8, child: Icon(Icons.local_florist, color: Colors.white,))),
                        ]
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("Đà Nẵng", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text('Nơi Đi', style: Styles.headLineStyle4),
                      ),
                      //Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100, child: Text('Nơi Đến', textAlign: TextAlign.end, style: Styles.headLineStyle4),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            Hien thi khung giua
             */
            Container(
              color:Styles.orangeColor,//const Color(0xFFF37867),
              child: Row(
                children: [
                  /*
                  2 cuc hinh tron
                   */
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: LayoutBuilder(
                       builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white
                              ),
                            ),
                          )),
                        );
                    },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            /*
            Hien thi khung xanh duoi va icon
             */
            Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF526799),
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))
                ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 10, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("01/05",
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Ngày tháng",
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("08:00",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Giờ khởi hành",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("03",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Số ghế",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
