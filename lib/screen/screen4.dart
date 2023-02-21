import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_resume_form/Model.dart';
import 'package:simple_resume_form/resume/resume4.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    Model data4=ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Your CV"),
          actions: [
            InkWell(
                onTap: (){
                  setState(() {
                    resume4(data4);
                  });
                },
                child: Icon(Icons.save)),
          ],
        ),
        body: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: 773,
                  width: 140,
                  color: Colors.blueGrey.shade900,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                          "CONTACT",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "${data4.email}",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Contact No.",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "${data4.phone}",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "EDUCATION",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "University name",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Column(
                                children: [
                                  Text(
                                    "${data4.sy}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    "${data4.ey}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 773,
                  width: 220,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                          "ABOUT ME",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "${data4.about}",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Year",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${data4.sy} - ${data4.ey}",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Company Name & Location",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "I Work in ${data4.cname} , Which Located in ${data4.wcity}",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "EXPERIENCE",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "SKILLS",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "${data4.skill}",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 100,
                width: 400,
                color: Colors.blueGrey.shade400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Degree",
                            style:
                            TextStyle(color: Colors.white70, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: (data4.j == true)
                          ? CircleAvatar(
                        radius: 200,
                        backgroundImage: FileImage(File(data4.path!)),
                      )
                          : CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}