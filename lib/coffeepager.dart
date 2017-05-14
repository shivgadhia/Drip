import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'coffee.dart';
import 'theme.dart' as DripTheme;


class CoffeePager extends StatelessWidget {
  const CoffeePager({ this.coffee });

  final List<Coffee> coffee;

  void _handleArrowButtonPress(BuildContext context, int delta) {
    final TabController controller = DefaultTabController.of(context);
    if (!controller.indexIsChanging)
      controller.animateTo(
          (controller.index + delta).clamp(0, coffee.length - 1));
  }

  @override
  Widget build(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);

    final Color color = Theme
        .of(context)
        .accentColor;

    final TextStyle titleStyle = Theme
        .of(context)
        .textTheme
        .headline
        .copyWith(
        color: DripTheme.DripColors.darkBlue[50]);

    final TextStyle descriptionStyle = Theme
        .of(context)
        .textTheme
        .body1
        .copyWith(color: DripTheme.DripColors.darkBlue[400]);


    return new Column(
      children: <Widget>[

        new Expanded(
          child: new TabBarView(
              children: coffee.map((Coffee coffee) {
                return new Container(
                  key: new ObjectKey(coffee),
                  padding: const EdgeInsets.all(12.0),
                  child: new Card(
                    color: DripTheme.DripColors.darkBlue[50],
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // photo
                          new SizedBox(
                            height: 200.0,
                            child: new Stack(
                              children: <Widget>[
                                new Positioned.fill(
                                  child: new Image.asset(
                                    coffee.imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // title
                                new Positioned(
                                  bottom: 16.0,
                                  left: 16.0,
                                  right: 16.0,
                                  child: new FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: FractionalOffset.bottomLeft,
                                    child: new Text(coffee.title,
                                      style: titleStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // description
                          new Expanded(
                            child: new Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: new Text(
                                  coffee.description, softWrap: true,
                                  style: descriptionStyle),
                            ),
                          ),

                          // button
                          new Expanded(
                            child: new Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 16.0, 16.0, 8.0),
                              child: new Container(
                                child: new FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: FractionalOffset.bottomCenter,
                                  child: new FlatButton(
                                    textColor: DripTheme.DripColors
                                        .darkBlue[600],
                                    child: const Text(
                                        'FIND NEARBY COFFEE PLACES'),
                                    onPressed: () {
                                      launch(
                                          'https://foursquare.com/explore?q=coffee');
                                    },
                                  ),
                                )
                                ,
                              ),
                            ),
                          ),

                        ]
                    ),
                  ),
                );
              }).toList()
          ),
        ),


        new Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: new Row(
                children: <Widget>[
                  new IconButton(
                      icon: const Icon(Icons.chevron_left),
                      color: color,
                      onPressed: () {
                        _handleArrowButtonPress(context, -1);
                      },
                      tooltip: 'Page back'
                  ),
                  new TabPageSelector(controller: controller),
                  new IconButton(
                      icon: const Icon(Icons.chevron_right),
                      color: color,
                      onPressed: () {
                        _handleArrowButtonPress(context, 1);
                      },
                      tooltip: 'Page forward'
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween
            )
        ),


      ],
    );
  }
}
