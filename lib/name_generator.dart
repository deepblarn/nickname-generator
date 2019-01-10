import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';


class NameGenerator extends StatefulWidget {
  @override
  _NameGeneratorState createState() => _NameGeneratorState();
}

class _NameGeneratorState extends State<NameGenerator> {

  var textController = new TextEditingController();
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: SvgPicture.asset('assets/adventure.svg'),
      ),
    );

    final user = TextFormField(
      enabled: false,
      autofocus: false,
      controller: textController,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          fillColor: Colors.white,
          hasFloatingPlaceholder: true,
          filled: true,
          hintText: 'Usuario generado',
          contentPadding: EdgeInsets.fromLTRB(40.0, 25.0, 40.0, 25.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final generateButton = new Material(
        elevation: 5.0,
        borderRadius: new BorderRadius.circular(50.0),
        child: InkWell(
          onTap: _generateNickname,
          child: new Container(
            //width: 100.0,
            height: 55.0,
            decoration: new BoxDecoration(
              color: Colors.greenAccent.shade700,
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: new Center(child: new Text('Generar nombre', style: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),),),
          ),
        ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xff43e97b),
            Color(0xff38f9d7),
          ])
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: logo,
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.0, left: 50.0, right: 50.0),
                child: user,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0, left: 50.0, right: 50.0),
                child: generateButton,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _generateNickname() {
    setState(() {
      textController.text = faker.internet.userName();
    });
  }
}
