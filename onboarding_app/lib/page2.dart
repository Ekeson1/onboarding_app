import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all( 40.0),
        
        child: ListView(children: [
        Image(
          image: const AssetImage('assets/pic1.jpg'),
        ),
         
        Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
        Text('Fast Transactions',style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15,),),
        
        Padding(padding: EdgeInsets.symmetric(vertical:7.0,)),
        Text('Transact conveniently from anywhere right from your mobile in seconds.', style: TextStyle(fontSize: 10,),),
         
        Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(height: 40, width: 35, color: Colors.red, 
            child: TextButton(       
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Page3()));
            },
              
            child: Text('Continue', style: TextStyle(color:Colors.white),),
            
              ),
          ),
        ),
        ],
        ),),
    );
  }
}
