import 'package:flutter/material.dart';
import 'package:furniture_app/models/sizeconfig.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: Colors.brown.shade300,
        ),
        preferredSize: Size(SizeConfig.screenheight!, 500),
      ),
      body: Container(
        color: Colors.brown.shade100,
        child: GridView.count(
          crossAxisSpacing: 1,
          mainAxisSpacing: 2,
          crossAxisCount: 2,
          children: <Widget>[
            itemCards(
              headname: 'Chairs',
              iconOne: Icons.chair,
            ),
            itemCards(
              headname: 'Tables',
              iconOne: Icons.chair,
            ),
            itemCards(
              headname: 'Sofa',
              iconOne: Icons.chair,
            ),
            itemCards(
              headname: 'Accents',
              iconOne: Icons.chair,
            ),
          ],
        ),
      ),
    );
  }
}

class itemCards extends StatelessWidget {
  final IconData? iconOne;
  final String? headname;

  itemCards({@required this.iconOne, @required this.headname});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GridTile(
        child: Icon(iconOne),
        header: Container(
          color: Colors.brown.withOpacity(5),
          child: Center(
            child: Text(headname!),
          ),
        ),
      ),
    );
  }
}
