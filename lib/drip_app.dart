import 'package:flutter/material.dart';
import 'theme.dart' as DripTheme;
import 'coffeepager.dart';
import 'coffee.dart' as Coffees;

class DripApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drip',
      theme: DripTheme.DripTheme,
      home: new Scaffold(
        appBar: _buildAppBar(),
        body: new DefaultTabController(
          length: Coffees.coffeeList.length,
          child: new CoffeePager(coffee: Coffees.coffeeList),
        ),
      ),
    );
  }

  AppBar _buildAppBar() =>
      new AppBar(
          title: new Text('Drip', style: DripTheme.appBarTitleStyle)
      );
}
