// PROFESSIONAL FRONT-END ENGINEER 

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: VideoGames(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

// model class for game...
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
          itemBuilder: (build, index) => _gameTile(_listOfVideoGames[index]),
        ),
      ),
    );
  }

  Widget _gameTile(Game game) {
    return ListTile(
      title: Text(game.name),
      leading: const CircleAvatar(
          child: Icon(Icons.gamepad_rounded, color: Colors.yellow)),
      subtitle: Text(game.rating.toString()),
    );
  }
}
