import 'package:flutter/material.dart';

class Add_to_cart extends StatefulWidget {
  final img_original_title,
      img_overview,
      img_release_date,
      img_popularity,
      img_poster_path,
      img_title;

  const Add_to_cart({
    Key? key,
    this.img_original_title,
    this.img_overview,
    this.img_poster_path,
    this.img_release_date,
    this.img_popularity,
    this.img_title,
  }) : super(key: key);

  @override
  _Add_to_cart createState() => _Add_to_cart();
}

class _Add_to_cart extends State<Add_to_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
      ),
      body: ListView(children: [
        Image.network(
          "https://image.tmdb.org/t/p/w500/${widget.img_poster_path}",
        ),
        ListTile(
          leading: Text('original_title'),
          title: Text(widget.img_original_title ?? ""),
        ),
        ListTile(
          leading: Text('overview'),
          title: Text(widget.img_overview),
        ),
        ListTile(
          leading: Text('release_date'),
          title: Text('${widget.img_release_date}'),
        ),
        ListTile(
          leading: Text('popularity'),
          title: Text('${widget.img_popularity}'),
        ),
        ListTile(
          leading: Text('title'),
          title: Text(widget.img_title),
        ),
      ]),
    );
  }
}
    
  
        
      
    
