import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/screens/coffee_info/coffee_info.dart';
import 'package:swift_cafe/screens/home/glassmorph_home.dart';
import 'package:swift_cafe/screens/home/list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/cofffee.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GlassmorphHomeWidget(
                      height: size.height * 0.23,
                      width: size.width,
                      colors: [
                        Colors.grey.withOpacity(0.45),
                        Colors.grey.withOpacity(0.45),
                      ],
                      child: Padding(
                        padding: const EdgeInsets.all(10.0).copyWith(top: 15),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: size.height * 0.04),
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: size.height * 0.058,
                                        child: const Row(
                                          children: [
                                            Text(
                                              '👋',
                                              style: TextStyle(
                                                fontSize: 27,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '20/12/2022',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromRGBO(
                                                        182, 182, 182, 1),
                                                  ),
                                                ),
                                                Text(
                                                  'Joshua Scanlan',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color.fromRGBO(
                                                        182, 182, 182, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: size.height * 0.045,
                                            width: size.height * 0.045,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color.fromRGBO(
                                                  182, 182, 182, 1),
                                            ),
                                            child: const Icon(
                                                Icons.delete_outline),
                                          ),
                                          const SizedBox(width: 8),
                                          const CircleAvatar(
                                            radius: 21,
                                            backgroundColor: Colors.green,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: NetworkImage(
                                                  'https://cdna.artstation.com/p/assets/images/images/021/115/556/large/kushal-kush-hex-color.jpg?1570458842'),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 18),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF)
                                            .withOpacity(0.8),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    height: size.height * 0.06,
                                    width: size.width * 0.93,
                                    child: const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            suffixIcon: Icon(
                                              Icons.tune,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                            contentPadding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 14,
                                            ),
                                            hintText:
                                                'Search favorite Beverages',
                                            hintStyle: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromRGBO(85, 85, 85, 1),
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
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
                    GlassmorphHomeWidget(
                      height: size.height * 0.4,
                      width: size.width,
                      colors: [
                        // Colors.grey.withOpacity(start),
                        // Colors.grey.withOpacity(end),
                        const Color.fromARGB(39, 64, 64, 64).withOpacity(0.8),
                        const Color.fromARGB(45, 60, 60, 60).withOpacity(0.8),
                      ],
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Most Popular Beverages',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(182, 182, 182, 1),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              height: size.height * 0.31,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) => const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: PopularBeveragesListTile(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GlassmorphHomeWidget(
                      height: size.height * 0.8,
                      width: size.width,
                      colors: [
                        const Color.fromARGB(190, 158, 158, 158)
                            .withOpacity(0.45),
                        const Color.fromARGB(190, 158, 158, 158)
                            .withOpacity(0.45),
                      ],
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Get it instantly',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(182, 182, 182, 1),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CoffeeInfo(),
                                        ),
                                      );
                                    },
                                    child: const GetInstantlyListTile(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                            const Color.fromARGB(39, 64, 64, 64)
                                .withOpacity(0.6),
                            const Color.fromARGB(45, 60, 60, 60)
                                .withOpacity(0.6),
                          ],
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.bottomEnd,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0).copyWith(
                          right: 30,
                          left: 30,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('asset/images/home.png'),
                              Image.asset('asset/images/profile.png'),
                              Image.asset('asset/images/payment.png'),
                              Image.asset('asset/images/delete.png'),
                              Image.asset('asset/images/mssg.png'),
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
