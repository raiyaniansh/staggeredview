import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:staggeredview/home/provider/home_provider.dart';
import 'package:staggeredview/utils/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeScreenf;
  HomeProvider? homeScreent;

  @override
  Widget build(BuildContext context) {
    homeScreenf = Provider.of<HomeProvider>(context, listen: false);
    homeScreent = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text('Staggered Grid'), backgroundColor: Colors.black),
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: MasonryGridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: homeScreenf!.img.length,
              itemBuilder: (context, index) => Box(
                  '${homeScreenf!.img[index].img}',
                  '${homeScreenf!.img[index].name}'),
            )),
      ),
    );
  }
}
