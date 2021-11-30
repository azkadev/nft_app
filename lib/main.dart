import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'pages/bid.dart';

// azka dev
// gibran alazka


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<MainPage> {
  var indexPage = 0;
  List<dynamic> typeGenreNft = [
    {"name": "Art", "selected": true},
    {"name": "Music", "selected": false},
    {"name": "Sport", "selected": false},
    {"name": "Education", "selected": false},
    {"name": "Tutorial", "selected": false},
    {"name": "Gaming", "selected": false},
    {"name": "Funny", "selected": false}
  ];
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final getHeight = mediaQuery.size.height;
    final getWidht = mediaQuery.size.width;
    final appbarHeight = mediaQuery.padding.top;
    final bottomPadding = mediaQuery.padding.bottom;
    return Scaffold(
      backgroundColor: const Color(0xffF0F8FF),
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: FadeInUp(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Iconsax.menu,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print("tap pp");
                      },
                    ),
                    const Spacer(),
                    InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Iconsax.search_normal,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print("tap pp");
                      },
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Iconsax.notification,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print("tap pp");
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  "Best NFT For\nYour Gallery",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                  child: Row(
                    children: [
                      for (var i = 0; i < typeGenreNft.length; i++) ...[
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: double.infinity,
                            maxHeight: double.infinity,
                          ),
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                            color: typeGenreNft[i]["selected"]
                                ? Colors.grey
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: Text(
                            typeGenreNft[i]["name"],
                            style: TextStyle(
                              color: typeGenreNft[i]["selected"]
                                  ? Colors.white
                                  : Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BidPage(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          fit: BoxFit.fill,
                          width: getWidht,
                          height: 400,
                          image: const AssetImage('assets/images/nft.jpg'),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Container(
                              constraints: const BoxConstraints(
                                maxWidth: double.infinity,
                                maxHeight: double.infinity,
                              ),
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "08",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                             const Text(
                                ":",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            const SizedBox(width: 5.0),
                            Container(
                              constraints: const BoxConstraints(
                                maxWidth: double.infinity,
                                maxHeight: double.infinity,
                              ),
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "43",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                             const Text(
                                ":",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            const SizedBox(width: 5.0),
                            Container(
                              constraints: const BoxConstraints(
                                maxWidth: double.infinity,
                                maxHeight: double.infinity,
                              ),
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "26",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: double.infinity,
                            maxHeight: double.infinity,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: SafeArea(
                            minimum: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Green Strack Nft",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: const Icon(
                                          Iconsax.profile_2user,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                      onTap: () {
                                        // ignore: avoid_print
                                        print("tap pp");
                                      },
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "Author",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Azkadev",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: const Icon(
                                          Iconsax.data,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                      onTap: () {
                                        // ignore: avoid_print
                                        print("tap pp");
                                      },
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "Bid",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "5.4 ETH",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffF0F8FF),
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.lovely, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.chart, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_2user, color: Colors.grey),
            label: "",
          ),
        ],
      ),
    );
  }
}
