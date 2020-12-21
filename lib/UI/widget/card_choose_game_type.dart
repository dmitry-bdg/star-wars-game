import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'game_button.dart';

class CardGameType extends StatelessWidget {
  final String type;
  final String _peopleImage = 'lib/assets/img/starWarsSaga.png';
  final String _starShipImage = 'lib/assets/img/shipsBg.png';

  CardGameType({@required this.type});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 5,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.amber,
              spreadRadius: 3,
              offset: Offset(.5, .5),
              blurRadius: 1.5,
            ),
          ],
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
            image: AssetImage(type == 'people' ? _peopleImage : _starShipImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.color)
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[GameButton(type: type,)],
          ),
        ),
      ),
    );
  }
}
