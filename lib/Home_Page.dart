import 'package:flutter/material.dart';
import 'package:responsive_design/Responsive_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: const Text('Responsive Design',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child: ResponsiveWidget(
            mobile: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  buildBannerSlider(),
                  Expanded(
                    child: buildIntroText(),
                  )
                ],
              ),
            ),
            tab: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  buildBannerSlider(),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: buildIntroText(),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Text buildIntroText() {
    return Text(
        'MediaQuery provides a higher-level view of the current app.'
        "screen size and can also give more detailed information about the device.",
        style: TextStyle(fontSize: 22));
  }

  Container buildBannerSlider() {
    return Container(
        width: 320,
        height: 120,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black, Colors.black45]),
          borderRadius: BorderRadius.circular(12),
        ));
  }
}
