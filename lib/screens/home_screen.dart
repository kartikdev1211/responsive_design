import 'package:flutter/material.dart';
import 'package:rsponsiveness_assignment/helper/responsive_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        title: const Text(
          "Aimed Lab",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: const SafeArea(
        child: ResponsiveHelper(
          mobile: ForMobile(),
          tab: ForDesktop(),
          desktop: ForDesktop(),
        ),
      ),
    );
  }
}

class ForDesktop extends StatelessWidget {
  const ForDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
            child: Container(
              width: 320,
              height: 180,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.red, Colors.pink],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            "We help our clients leverage technology to reach their goals & mission up to 10x faster & with much more efficiency",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ],
    );
  }
}

class ForMobile extends StatelessWidget {
  const ForMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              width: 320,
              height: 180,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.red, Colors.pink],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "We help our clients leverage technology to reach their goals & mission up to 10x faster & with much more efficiency",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
