import 'package:flutter/material.dart';

class Apparel extends StatefulWidget {
  Apparel({Key? key}) : super(key: key);

  @override
  State<Apparel> createState() => _ApparelState();
}

class _ApparelState extends State<Apparel> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
            child: ListView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text('Apparel for Women'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
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
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                                image: AssetImage(
                                  'assets/last.jpg',
                                ),
                                height: 40,
                                width: 40,
                              ),
                      ),
                    ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Text('Dresses'),
                          ),          
                  ], 
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                                image: AssetImage(
                                  'assets/jean.jpg',
                                ),
                                height: 40,
                                width: 40,
                              ),
                      ),
                    ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Text('Jeans'),
                          ),          
                  ], 
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                                image: AssetImage(
                                  'assets/sneakers.jpg',
                                ),
                                height: 40,
                                width: 40,
                              ),
                      ),
                    ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Text('Sneakers'),
                          ),          
                  ], 
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                                image: AssetImage(
                                  'assets/eyeglass3.jpg',
                                ),
                                height: 40,
                                width: 40,
                              ),
                      ),
                    ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Text('Glasses'),
                          ),          
                  ], 
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                                image: AssetImage(
                                  'assets/reddress.jpg',
                                ),
                                height: 40,
                                width: 40,
                              ),
                      ),
                    ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Text('Gowns'),
                          ),          
                  ], 
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                                image: AssetImage(
                                  'assets/jean3.jpg',
                                ),
                                height: 40,
                                width: 40,
                              ),
                      ),
                    ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Text('Tops'),
                          ),          
                  ], 
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                                image: AssetImage(
                                  'assets/bags.jpg',
                                ),
                                height: 40,
                                width: 40,
                              ),
                      ),
                    ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                            child: Text('Bags'),
                          ),          
                  ], 
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
           
            ],
            ),
          ],
        )),
      ),
    );
  }
}
