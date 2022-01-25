import 'package:flutter/widgets.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is Progress Page"),
      ),
    );
  }
}
