import 'package:flutter/widgets.dart';

class LeaderBordPage extends StatefulWidget {
  const LeaderBordPage({Key? key}) : super(key: key);

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBordPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is LeaderBoard Page"),
      ),
    );
  }
}
