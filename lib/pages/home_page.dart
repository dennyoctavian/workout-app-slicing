import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:workout_app/pages/chart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xffEE6044),
        selectedFontSize: 12,
        selectedLabelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
        ),
        unselectedItemColor: const Color(0xff000000),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_outlined),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fmd_good_sharp),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      body: Center(
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Center(
                        child: CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 20.0,
                          percent: 0.25,
                          center: Container(
                            width: 136,
                            height: 136,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/profile.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          backgroundColor: const Color(0xffE4E7EC),
                          progressColor: const Color(0xffEE6044),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 160,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 12,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(1, 0),
                        child: UnconstrainedBox(
                          child: SizedBox(
                            height: 200,
                            width: 230,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffEE6044),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  "Hi, Maynna",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Level 28",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8E9BA9),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 48),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "Search workout for today",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                                width: 30,
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
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
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stats",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 180,
                      child: ChartPage(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Latest Activities",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: const DecorationImage(
                                  image: AssetImage('assets/profile.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Yoga Tathi",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "15 of 30",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xffEE6044),
                                    ),
                                  ),
                                  Text(
                                    " session finished",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff8E9BA9),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const CircularProgressIndicator(
                            value: 0.25,
                            backgroundColor: Color(0xffE4E7EC),
                            color: Color(0xffEE6044),
                            strokeWidth: 6,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Latest Activities",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 185,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 185,
                                width: 190,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 121,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/profile.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Calistech",
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "3 hrs • Intermediate",
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff8E9BA9),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
