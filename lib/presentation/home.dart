import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  const HomeView({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Home Page', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),),
      ),
    );
  }
}