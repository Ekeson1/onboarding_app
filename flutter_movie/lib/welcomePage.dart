import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart' as http;
import 'package:circular_indicator/circular_indicator.dart';

import 'add_to_cart.dart';

class Welcome_Page extends StatefulWidget {
  Welcome_Page({Key? key}) : super(key: key);

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  var sortedData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: avoid_unnecessary_containers
      body: Container(
          child: Center(
        child: ListView(
          children: [
            Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Text(
                      'Welcome, Ndubueze',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: AssetImage(
                          'assets/passport.jpg',
                        ),
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                   
           
            FutureBuilder(
              builder: (context, snap) {
                if (snap.hasData == false) {
                  return Text("Just wait ....");
                } else if (snap.connectionState == ConnectionState.waiting ||
                    snap.connectionState == ConnectionState.active) {
                  return Text("Loading Data ....");
                }

                return ourGridView(apiList: snap.data);
              },
              future: getApiData(),
            ),
          ],
        ),
      )]),
            ]))));
  }

  ourGridView({apiList}) {
    return Flexible(
        child: Container(
            margin: EdgeInsets.all(12),
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              itemCount: apiList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Add_to_cart(
                                img_original_title: apiList[index]['original_title'],
                                img_release_date: apiList[index]['release_date'],
                                img_overview: apiList[index]['overview'],
                                img_popularity: apiList[index]['popularity'],
                                img_poster_path: apiList[index]['poster_path'],
                                img_title: apiList[index]['title'])));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image.network(
                          "https://image.tmdb.org/t/p/w500/${apiList[index]["poster_path"]}",
                          fit: BoxFit.cover,
                        )),
                  ),
                );
              },
              staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
              },
            )));
  }

  Future<dynamic> getApiData() async {
    var url = Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=52b1a03207ee4ff89c4dc7799b46c7dc&language=en-US&page=1');
    var response = await http.get(url);
    sortedData = [];
    var productData = json.decode(response.body);

    print(productData["results"]);

    return productData["results"];
  }
}
