import 'package:flutter/material.dart';
import 'package:flutter_app_cap8/widgets/widgets.dart';

class HomeDesignScreen extends StatelessWidget {
  const HomeDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
