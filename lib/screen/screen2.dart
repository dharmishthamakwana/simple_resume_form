import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_resume_form/Model.dart';
import 'package:simple_resume_form/resume/resume2.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _Screen2State();
}

class _Screen2State extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    Model data1=ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Your CV"),
          actions: [
            InkWell(
                onTap: (){
                  setState(() {
                    resume2(data1);
                  });
                },
                child: Icon(Icons.save)),
          ],
        ),
        body: Row(
          children: [
            Container(
              height: 773,
              width: 140,
              color: Colors.grey.shade900,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      color: Colors.white,
                      child: (data1.j == true)
                          ? Image.file(File(data1.path!),height: 120,width: 120,fit: BoxFit.cover,)
                          : Image.asset(
                        "assets/images/profile.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "EDUCATION",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 1.5,
                      width: 220,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${data1.uni}",style: TextStyle(
                      color: Colors.white,),
                    ),
                    Text(
                      "${data1.degree}",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "${data1.ypass}",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "${data1.ecity}",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "CONTACT",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 1.5,
                      width: 220,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Phone",style: TextStyle(fontSize: 16,
                      color: Colors.white,),
                    ),
                    Text(
                      "${data1.phone}",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mail",style: TextStyle(fontSize: 16,
                      color: Colors.white,),
                    ),
                    Text(
                      "${data1.email}",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Address",style: TextStyle(fontSize: 16,
                      color: Colors.white,),
                    ),
                    Text(
                      "${data1.address}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 773,
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${data1.firstname} ${data1.lastname}",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("${data1.profession}"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ABOUT ME",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Container(
                          height: 1.5,
                          width: 290,
                          color: Colors.black,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "${data1.about}",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "WORK EXPERIENCE",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Container(
                          height: 1.5,
                          width: 290,
                          color: Colors.black,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "${data1.sy} - ${data1.ey}",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "I Work in ${data1.cname} from ${data1.wcity}",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "Post ${data1.post}",
                          style: TextStyle(color: Colors.black),
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
                        Container(
                          height: 1.5,
                          width: 290,
                          color: Colors.black,
                        ),
                        Text(
                          "${data1.skill}",
                          style: TextStyle( color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}