import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constFiles/colors.dart';
import 'home.dart';
import 'homeReportContainer.dart';

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  get SvgPicture => null;
  // static TransDetailController? transDetailController;
  // static TransactionController? transController;
  // static ReportController? reportController;

  @override
  Widget build(BuildContext context) {
    // transDetailController = Provider.of<TransDetailController>(context);
    // transController = Provider.of<TransactionController>(context);
    // reportController = Provider.of<ReportController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leadingWidth: 25.0,
        title: Row(
          children: [
            // Text(
            //   transDetailController!.isIncomeSelected ? income : expense,
            // style:
            // TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            // ),
            // Dropdown(),
            DropdownButton<String>(
              items: <String>[
                'إدخار',
                'صرف',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            )
          ],
        ),
        actions: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    // margin: EdgeInsets.all(10.0),
                    // padding: EdgeInsets.symmetric(horizontal: 12.0),
                    // decoration: BoxDecoration(
                    //     color: primaryColor,
                    // borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      onPrimary: Colors.white,
                      shadowColor: Colors.teal,
                      elevation: 1,
                      textStyle: const TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(430.0)),
                      minimumSize: Size(40, 40),
                    ),
                    child: Text('حفظ'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
              ]),
        ],
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: Column(
        children: [
          GridView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1.4),
            children: [
              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.health_and_safety_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "صحة",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.home_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "المنزل",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.devices_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "الاجهزه",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.shopping_bag_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "التسوق",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.food_bank_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "المطاعم",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.person_outline),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "مصروفك الشخصي ",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.car_crash_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "وقود",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.emergency_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      onPressed: () => Home()),
                  Text(
                    "حالات طارئه",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.more_horiz_outlined),
                      color: Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                      tooltip: 'Run again',
                      iconSize: 50,
                      isSelected: true,
                      onPressed: () => Home()),
                  Text(
                    "اخرى",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 24, 126, 166).withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
              // categoryIcons(
              //   text: "health",
              //  svgName: healthSvg,
              //       isSelected:
              //           transDetailController!.selectedDepartment == health
              //               ? true
              //               : false,
              //       onPress: () =>
              //           transDetailController!.changeDepartment(health)),
              //   categoryIcons(
              //       text: family,
              //       svgName: familySvg,
              //       isSelected:
              //           transDetailController!.selectedDepartment == family
              //               ? true
              //               : false,
              //       onPress: () =>
              //           transDetailController!.changeDepartment(family)),
              //   categoryIcons(
              //       text: shopping,
              //       svgName: shoppingSvg,
              //       isSelected:
              //           transDetailController!.selectedDepartment == shopping
              //               ? true
              //               : false,
              //       onPress: () =>
              //           transDetailController!.changeDepartment(shopping)),
              //   categoryIcons(
              //       text: food,
              //       svgName: foodSvg,
              //       isSelected: transDetailController!.selectedDepartment == food
              //           ? true
              //           : false,
              //       onPress: () => transDetailController!.changeDepartment(food)),
              //   categoryIcons(
              //       text: car,
              //       svgName: vehicleSvg,
              //       isSelected: transDetailController!.selectedDepartment == car
              //           ? true
              //           : false,
              //       onPress: () => transDetailController!.changeDepartment(car)),
              //   categoryIcons(
              //       text: salon,
              //       svgName: salonSvg,
              //       isSelected: transDetailController!.selectedDepartment == salon
              //           ? true
              //           : false,
              //       onPress: () =>
              //           transDetailController!.changeDepartment(salon)),
              //   categoryIcons(
              //       text: devices,
              //       svgName: devicesSvg,
              //       isSelected:
              //           transDetailController!.selectedDepartment == devices
              //               ? true
              //               : false,
              //       onPress: () =>
              //           transDetailController!.changeDepartment(devices)),
              //   categoryIcons(
              //       text: bills,
              //       svgName: officeSvg,
              //       isSelected: transDetailController!.selectedDepartment == bills
              //           ? true
              //           : false,
              //       onPress: () =>
              //           transDetailController!.changeDepartment(bills)),
              //   categoryIcons(
              //       text: others,
              //       svgName: othersSvg,
              //       isSelected:
              //            transDetailController!.selectedDepartment == others
              //               ? true
              //               : false,
              //       onPress: () =>
              //   //           transDetailController!.changeDepartment(others)),
            ],
            // ),
          ),
          Container(
            color: primaryColor,
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                    flex: 5,
                    child: TextField(
                      // controller: transDetailController!.titleField,
                      cursorColor: greyText,
                      style: TextStyle(
                          color: greyText,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          hintText: "العنوان",
                          hintStyle: TextStyle(color: greyText),
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.only(right: 15.0, left: 5.0),
                            // child: SvgPicture.asset(
                            //   transDetailController!.titleIcon(),
                            //   height: 5.0,
                            //   color: whiteColor,
                            // ),
                          ),
                          border: InputBorder.none),
                    )),
                Spacer(),
                Expanded(
                    flex: 2,
                    child: TextField(
                      // controller: transDetailController!.amountField,
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.numberWithOptions(
                          decimal: true, signed: false),
                      cursorColor: greyText,
                      style: TextStyle(
                          color: greyText,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          hintText: "حدد السعر ",
                          hintStyle: TextStyle(color: greyText),
                          border: InputBorder.none),
                    )),
              ],
            ),
          ),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //     child: TextField(
          //       // controller: transDetailController!.descriptionField,
          //       textAlign: TextAlign.start,
          //       minLines: 20,
          //       maxLines: 50,
          //       decoration: InputDecoration(
          //           hintText: "Description here...", border: InputBorder.none),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Padding categoryIcons({
    required String text,
    required String svgName,
    required bool isSelected,
    required Function() onPress,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onPress,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: isSelected
                  ? Color.fromARGB(255, 219, 232, 247)
                  : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Column(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  svgPath(svgName),
                  height: 35.0,
                  color: svgColor,
                ),
              ),
              Text(
                text,
                style: TextStyle(color: svgColor, fontSize: 16),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

String svgPath(String svgName) => "assets/svgImages/$svgName.svg";
