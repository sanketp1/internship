import 'package:flutter/widgets.dart';

class GetInspiredPage extends StatefulWidget {
  const GetInspiredPage({Key? key}) : super(key: key);

  @override
  _GetInspiredPageState createState() => _GetInspiredPageState();
}

class _GetInspiredPageState extends State<GetInspiredPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is Get Inspired Page"),
      ),
    );
  }
}
