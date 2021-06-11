import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/models/player.dart';

class PlayerList extends StatefulWidget {
  @override
  _PlayerListState createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  @override
  Widget build(BuildContext context) {
    final players = Provider.of<List<Player>>(context);
    players.forEach((player) {
      print(player.name);
      print(player.age);
      print(player.strength);
    });

    return Container();
  }
}
