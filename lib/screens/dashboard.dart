import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  static const String ROUTE_NAME = "/dashboard";
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<String> imgList = [
    "https://www.rust-lang.org/static/images/rust-social-wide.jpg",
    "https://www.softwebsolutions.com/wp-content/uploads/2020/10/golang-Programing.jpg",
    "https://ourcodeworld.com/public-media/articles/articleocw-5c65fbda1ea05.jpg",
  ];

  List<Map<String, Object>> jobList = [];

  @override
  void initState() {
    fetchDataList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          includeAppBar(),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              autoslider(),
              SizedBox(
                height: 10,
              ),
              displayJobList(),
            ]),
          ),
        ],
      ),
    );
  }

  includeAppBar() {
    return SliverAppBar(
      actions: const [
        Icon(Icons.notifications),
      ],
      leading: InkWell(
        child: const Icon(Icons.arrow_back),
        onTap: () => Navigator.popUntil(context, (route) => false),
      ),
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Wrap(
          children: const [Text("what are you"), Text("searching for ?")],
        ),
        stretchModes: const <StretchMode>[StretchMode.blurBackground, StretchMode.zoomBackground, StretchMode.fadeTitle],
      ),
      expandedHeight: 200,
    );
  }

  Widget autoslider() {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => Container(
        height: 250,
        child: Center(
          child: CachedNetworkImage(
            imageUrl: imgList[itemIndex],
            progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.contain,
            width: 1000,
          ),
          // Image.network(imgList[itemIndex], fit: BoxFit.contain, width: 1000),
        ),
      ),
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
      ),
    );
  }

  Widget displayJobList() {
    return ListView.builder(itemBuilder: (context, index) {
      return Card(
        elevation: 9,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: [
            Image.network(
              jobList[index]['icon'].toString(),
              width: double.infinity,
              height: 250,
            )
          ],
        ),
      );
    });
  }

  fetchDataList() async {
    Map<String, Object> map;
    FirebaseFirestore.instance.collection('jobs').get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        map = {
          'name': doc['company_name'],
          'icon': doc['company_icon'],
          'passout': doc['passout'],
          'location': doc['location'],
          'degree': doc['degree,'],
          'role': doc['role'],
          'vacancy': doc['vacancy'],
        };
        jobList.add(map);
      });
    });
  }
}
