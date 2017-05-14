class Coffee {
  const Coffee({this.title, this.description, this.imagePath});

  final String title;
  final String imagePath;
  final String description;

}

final List<Coffee> coffeeList = <Coffee>[
  const Coffee(
      title: "Espresso",
      imagePath: "images/espresso.jpg",
      description: "Espresso is brewed by using an espresso machine to force a small amount of nearly boiling water and steam – about 86 to 95 °C (187 to 203 °F) – under pressure through finely ground and compacted coffee."),
  const Coffee(title: "Ristretto",
      imagePath: "images/ristretto.jpg",
      description: "Ristretto is traditionally a short shot of espresso made with the normal amount of ground coffee but extracted with about half the amount of water. Ristretto means \"limited\" or \"restricted\" in Italian."),
  const Coffee(title: "Long black",
      imagePath: "images/longblack.jpg",
      description: "A long black is a style of coffee, commonly found in Australia and New Zealand. A long black is made by pouring a double-shot of espresso or ristretto over hot water. Usually the water is also heated by the espresso machine."),
  const Coffee(title: "Cortado",
      imagePath: "images/cortado.jpg",
      description: "A cortado (also known as \"pingo\" or \"garoto\") is an espresso \"cut\" (from the Spanish and Portuguese \"cortar\") with a small amount of warm milk to reduce the acidity. The ratio of milk to coffee is between 1:1 – 1:2, and the milk is added after the espresso."),
  const Coffee(title: "Mocha",
      imagePath: "images/mocha.jpg",
      description: "A café mocha is a variant of a caffè latte. Like a latte, it is typically one third espresso and two thirds steamed milk, but a portion of chocolate is added, typically in the form of a chocolate syrup, although other vending systems use instant chocolate powder. Mochas can contain dark or milk chocolate."),
  const Coffee(title: "Cappuccino",
      imagePath: "images/cappuccino.jpg",
      description: "A cappuccino is an Italian coffee drink that is traditionally prepared with double espresso, hot milk, and steamed milk foam."),
   const Coffee(title: "Macchiato",
      imagePath: "images/macchiato.jpg",
      description: "Macchiato, meaning \"stained\", is an espresso with a dash of foamed milk. The milk is foamed directly into the espresso cup, which is then put under the coffee outlet. The espresso is then drawn into the cup. "),
  const Coffee(title: "Flat white",
      imagePath: "images/flatwhite.jpg",
      description: "Flat white is an espresso with a similar proportion of coffee to milk as a latte and a cappuccino, the main difference being the texture of the milk and (in some regions) the number of espresso shots."),
  const Coffee(title: "Caffe latte",
      imagePath: "images/latte.jpg",
      description: "A latte is an espresso and steamed milk, generally in a 1:3 to 1:5 ratio of espresso to milk, with a little foam on top. In Italy it is called caffè latte or caffelatte, which means \"coffee and milk\"."),
];
