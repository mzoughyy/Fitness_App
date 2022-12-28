import 'package:flutter/material.dart';
import 'package:flutter_projet/shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';
class IntroScreen extends StatelessWidget{
  const IntroScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      appBar: AppBar(
        title: Text('Globo Fitness'),
      ),
      body: Container(
          decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage('assets/watch.jpg'),
                fit: BoxFit.cover,
              )
          ) ,
          child: Center(
            child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70,
                ),
                child: Text(
                'Commit to be fit, dare to be great with Globo Fitness',
                textAlign:TextAlign.center,
                style:TextStyle(
                fontSize: 22,
                shadows:[
                Shadow(
                offset: Offset(1.0,1.0),
                blurRadius: 2.0,
                color: Colors.grey
            )
            ],
          )),
    )
    ),
    ),
    );
  }
}

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index){
        switch(index){
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/bmi');
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
        ),
        BottomNavigationBarItem(

            icon: Icon(Icons.monitor_weight),
            label: 'BMI'
        ),
      ],
    );
  }
}