import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: VideoGames(),
    ),
  );
}

// PODO class....
class Game {
  final String name;
  final int rating;
  Game({required this.name, required this.rating});
}

class VideoGames extends StatelessWidget {
  static final List<Game> _listOfVideoGames = [
    Game(name: "PUBG", rating: 0),
    Game(name: "Call Of Duty", rating: 7),
    Game(name: "GTA: Vice City", rating: 10),
    Game(name: "Civilization", rating: 10),
    Game(name: "Clash Of Clans", rating: 9999),
    Game(name: "Battle Field", rating: 5),
    Game(name: "Need For Speed", rating: 9),
    Game(name: "Age Of Empires", rating: 10),
    Game(name: "Project: IGI", rating: 10),
  ];

  const VideoGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Video Games")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: _listOfVideoGames.length,
          separatorBuilder: (_, i) => const Divider(),
          itemBuilder: (context, index) =>
              _gameTile(_listOfVideoGames[index], context),
        ),
      ),
    );
  }

  Widget _gameTile(Game game, BuildContext mainContext) {
    return ListTile(
      dense: true,
      title: Text(game.name),
      subtitle: Text("Rating : ${game.rating.toString()}"),
      leading: const CircleAvatar(
        child: Icon(
          Icons.gamepad_rounded,
          color: Colors.yellow,
        ),
      ),
      onTap: () {
        Navigator.push(
          mainContext,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return DetailScreen(game: game);
            },
          ),
        );
      },
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Game game;
  const DetailScreen({Key? node, required this.game}) : super(key: node);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.name.toUpperCase())),
      body: Scaffold(
        body: Center(
          child: Text(
            "Rating : ${game.rating.toString()}",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
