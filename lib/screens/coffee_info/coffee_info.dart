import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/screens/coffee_info/list_tile.dart';

class CoffeeInfo extends StatefulWidget {
  const CoffeeInfo({super.key});

  @override
  State<CoffeeInfo> createState() => _CoffeeInfoState();
}

class _CoffeeInfoState extends State<CoffeeInfo> {
  int chosen = -1;
  bool checked = false;
  List<String> ls = ['Full', '1/2 Full', '3/4 Full', '1/4 Full'];
  List<String> choice = [
    'Skim Milk',
    'Full Cream Milk',
    'Almond Milk',
    'FullCream Milk',
    'Soy Milk',
    'Oat Milk'
  ];
  List<String> sugar = [
    'Sugar X1',
    'Sugar X2',
    '1/2 Sugar',
    'No Sugar',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // height: size.height * 2,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/cofffee.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              height: size.height * 0.45,
              width: size.width,
              child: Image.asset(
                'asset/images/cofeecrop.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: size.height * 0.5,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.64),
                    Colors.white.withOpacity(0.1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.43,
                  width: size.width,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: size.height * 0.57,
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: Colors.white.withOpacity(0.2),
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.withOpacity(0.45),
                            Colors.grey.withOpacity(0.45),
                          ],
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.bottomEnd,
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.all(10.0).copyWith(bottom: 0),
                          child: SizedBox(
                            width: size.width * 0.94,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0).copyWith(
                                  left: 20,
                                  right: 8,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 5.0)
                                        .copyWith(
                                      top: 8,
                                    ),
                                    child: SizedBox(
                                      width: size.width * 0.85,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Lattè',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Color.fromRGBO(
                                                          201, 201, 201, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: size.height * 0.033,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          '4.9 ⭐ (458)',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromRGBO(
                                                                    207,
                                                                    206,
                                                                    206,
                                                                    1),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 10),
                                                        Image.asset(
                                                          'asset/images/veg.png',
                                                          scale: 0.9,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height: size.height * 0.03,
                                                width: size.width * 0.1,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                      207, 206, 206, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        flex: 1,
                                                        child: Text(
                                                          '1',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors
                                                                .grey[700],
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        flex: 1,
                                                        child: Icon(
                                                          Icons.arrow_drop_down,
                                                          color:
                                                              Colors.grey[700],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            // color: Colors.blue,
                                            width: size.width * 0.8,
                                            child: const Text(
                                              'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    207, 206, 206, 1),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Choice of Cup Filling',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromRGBO(
                                                  201, 201, 201, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          SizedBox(
                                            height: size.height * 0.05,
                                            width: size.width * 0.75,
                                            child: ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (context, index) =>
                                                  Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      chosen = index;
                                                    });
                                                  },
                                                  child:
                                                      ChoiceCupFillingListItem(
                                                    index: index,
                                                    text: ls[index],
                                                    curr: chosen,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Choice of Milk',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromRGBO(
                                                  201, 201, 201, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          SizedBox(
                                            height: size.height * 0.16,
                                            child: Column(
                                              children: [
                                                Row(children: [
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: choice[0]),
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: choice[1]),
                                                  ),
                                                ]),
                                                const SizedBox(height: 10),
                                                Row(children: [
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: choice[2]),
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: choice[3]),
                                                  ),
                                                ]),
                                                const SizedBox(height: 10),
                                                Row(children: [
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: choice[4]),
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: choice[5]),
                                                  ),
                                                ]),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Choice of Sugar',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromRGBO(
                                                  201, 201, 201, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          SizedBox(
                                            height: size.height * 0.16,
                                            child: Column(
                                              children: [
                                                Row(children: [
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: sugar[0]),
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: sugar[1]),
                                                  ),
                                                ]),
                                                const SizedBox(height: 10),
                                                Row(children: [
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: sugar[2]),
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Choices(
                                                        title: sugar[3]),
                                                  ),
                                                ]),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.015),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5,
                            spreadRadius: 1.8,
                            offset: const Offset(1, 1),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            // Colors.grey.withOpacity(start),
                            // Colors.grey.withOpacity(end),
                            const Color.fromARGB(39, 64, 64, 64)
                                .withOpacity(0.4),
                            const Color.fromARGB(45, 60, 60, 60)
                                .withOpacity(0.4),
                          ],
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.bottomEnd,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: Colors.grey,
                                    value: checked,
                                    onChanged: (value) {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                  ),
                                  const Text(
                                    'Higher Priority',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(201, 201, 201, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Image.asset('asset/images/error.png'),
                                ],
                              ),
                              Container(
                                width: size.width * 0.3,
                                height: size.height * 0.06,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(18, 85, 9, 1),
                                      Color.fromRGBO(93, 189, 66, 1),
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 2,
                                      spreadRadius: 0.8,
                                      offset: const Offset(1, 1),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      color: const Color(0xFFFFFFFF)
                                          .withOpacity(0.9),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
