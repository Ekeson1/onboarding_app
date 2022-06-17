import 'package:flutter/material.dart';
import 'package:flutter_movie_app/widgets/toprated.dart';
import 'package:flutter_movie_app/widgets/trending.dart';
import 'package:flutter_movie_app/widgets/tv.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.green),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  final String apikey = '52b1a03207ee4ff89c4dc7799b46c7dc';
  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1MmIxYTAzMjA3ZWU0ZmY4OWM0ZGM3Nzk5YjQ2YzdkYyIsInN1YiI6IjYyOTc1YTMxY2RkYmJjMTMwZWVmMjMxMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.fa1-M70UXTly4mdrI_xiDJY18rsgktEV8sLYOFn4ywM';

  @override
  void initState() {
    loadmovie();
    super.initState();
  }

  loadmovie() async {
    TMDB tmdbWithcustomLogs = TMDB(ApiKeys(apikey, readaccesstoken),
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingresult = await tmdbWithcustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithcustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithcustomLogs.v3.tv.getPouplar();

    print(trendingresult);
    setState(() {
      trendingmovies = trendingresult['result'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
    print(tv);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: modified_text(text: 'Flutter Movie App🧡'),
      ),
      body: ListView(
        children: [
          TV(tv: tv),
          TopRated(toprated: topratedmovies),
          TrendindingMovies(trending: trendingmovies)],
      ),
    );
  }

  modified_text({String? text}) {}
}
