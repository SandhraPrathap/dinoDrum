import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() {
  runApp(MaterialApp(home: DinoDrum()));
}

class DinoDrum extends StatelessWidget {
final AudioCache _audio = AudioCache(prefix: 'asset/');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(221, 12, 91, 1),
          title: Text("DinoDrum ",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.15,
                  0.50,
                  1
                ],
                colors: [
                  Colors.black,
                  Color.fromRGBO(68, 60, 60, 1),
                  Colors.black
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.2,
                                1
                              ],
                              colors: [
                                Color.fromRGBO(249, 224, 5, 1),
                                Color.fromRGBO(89, 253, 12, 1)
                              ])),
                      child: TextButton(onPressed: () {_audio.play("conga1.mp3");}, child: Text(""))),
                  SizedBox(width:MediaQuery.of(context).size.width * 0.20),
                  Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.2,
                                1
                              ],colors: [
                                 Color.fromRGBO(176, 12, 253, 1),
                                Color.fromRGBO(60, 12, 253, 1)
                             
                              ])),
                      child: TextButton(onPressed: () {_audio.play("handclap.mp3");}, child: Text(""))),
                ],
              ),
               SizedBox(height:MediaQuery.of(context).size.width * 0.10),
              Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.2,
                                1
                              ],
                              colors: [
                                Color.fromRGBO(249, 224, 5, 1),
                                Color.fromRGBO(235, 8, 8, 1)
                              ])),
                      child: TextButton(onPressed: () {_audio.play("kick1.mp3");}, child: Text(""))),
                       SizedBox(height:MediaQuery.of(context).size.width * 0.10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.2,
                                1
                              ],
                              colors: [
                                Color.fromRGBO(235, 8, 8, 1),
                                Color.fromRGBO(176, 12, 253, 1)
                              ])),
                      child: TextButton(onPressed: () {_audio.play("snare.mp3");}, child: Text(""))),
                  SizedBox(width:MediaQuery.of(context).size.width * 0.20),
                  Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.2,
                                1
                              ],
                              colors: [
                                Color.fromRGBO(89, 253, 12, 1),
                                Color.fromRGBO(60, 12, 253, 1)
                              ])),
                      child: TextButton(onPressed: () {_audio.play("cl_hihat.mp3");}, child: Text(""))),
                ],
              )
            ],
          ),
        ));
  }
}
