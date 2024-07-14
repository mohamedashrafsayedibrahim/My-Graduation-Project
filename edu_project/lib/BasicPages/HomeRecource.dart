import 'package:edu_project/ResourcesPages/First_resource.dart';
import 'package:edu_project/ResourcesPages/Fourth_resource.dart';
import 'package:edu_project/ResourcesPages/Second_resource.dart';
import 'package:edu_project/ResourcesPages/Third_resource.dart';

import 'package:edu_project/Widgets/TabBar.dart';
import 'package:flutter/material.dart';

class ResourcesPage extends StatefulWidget {
  @override
  State<ResourcesPage> createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Resources',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Color(0xFF164863),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlue.shade50,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(112, 32, 178, 171)),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Color(0xFF164863),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(
                      title: 'First',
                    ),
                    TabItem(
                      title: 'Second',
                    ),
                    TabItem(
                      title: 'Third',
                    ),
                    TabItem(
                      title: 'Fourth',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            FirstResource(),
            SecondResource(),
            ThirdResource(),
            FourthResource(),
          ],
        ),
      ),
    );
  }
}
