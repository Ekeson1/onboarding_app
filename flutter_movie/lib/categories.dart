import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Text('Categories'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Search'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Icon(
                          Icons.photo_camera_sharp,
                          color: Colors.grey,
                          
                        ),
                      ),   
                ],
              ),
                  ),
                  SizedBox(
                        height: 20,
                        width: 300,
                        child: Divider(color: Colors.grey.shade400,),
                      ),
                  Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 50,
                        height: 20,
                        color: Colors.orange,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text('All',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                    ),
                  ),
                  Text('recently Viewed', style: TextStyle(fontSize: 12),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('Recommended', style: TextStyle(fontSize: 12),),
                  ),
               ]
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      child: Row(
                         children: [
                           Column(
                             children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
                               child: Text('Apparel for women', style: TextStyle(color: Colors.white),),
                             )
                             ],
                           ),  
                         ],
                      ),
                      decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/jean1.jpg'),
                                  fit: BoxFit.cover,),
                    )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      child: Row(
                         children: [
                           Column(
                             children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
                               child: Text('Apparel for men', style: TextStyle(color: Colors.white),),
                             )
                             ],
                           ),  
                         ],
                      ),
                      decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/jean5.jpg'),
                                  fit: BoxFit.cover,),
                    )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      child: Row(
                         children: [
                           Column(
                             children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
                               child: Text('Apparel Accessories', style: TextStyle(color: Colors.white),),
                             )
                             ],
                           ), 
                         ],
                      ),
                      decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/last.jpg'),
                                  fit: BoxFit.cover,),
                    )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      child: Row(
                         children: [
                           Column(
                             children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
                               child: Text('Apparel for all', style: TextStyle(color: Colors.white),),
                             )
                             ],
                           ),  
                         ],
                      ),
                      decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/jean2.jpg'),
                                  fit: BoxFit.cover,),
                    )
                    ),
                  ),
                ),
                ],
          ),
            ]),
      ),
    ));
  }
}