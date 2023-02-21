import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simple_resume_form/Model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;
  bool j = false;
  TextEditingController txtname = TextEditingController();
  TextEditingController txtlastname = TextEditingController();
  TextEditingController txtprofession = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtabout = TextEditingController();
  TextEditingController txtsy = TextEditingController();
  TextEditingController txtey = TextEditingController();
  TextEditingController txtcname = TextEditingController();
  TextEditingController txtcity = TextEditingController();
  TextEditingController txtecity = TextEditingController();
  TextEditingController txtpost = TextEditingController();
  TextEditingController txtskill = TextEditingController();
  TextEditingController txtuni = TextEditingController();
  TextEditingController txtdig = TextEditingController();
  TextEditingController txtpy = TextEditingController();
  var key1 = GlobalKey<FormState>();
  var key2 = GlobalKey<FormState>();
  var key3 = GlobalKey<FormState>();
  var key4 = GlobalKey<FormState>();
  var key5 = GlobalKey<FormState>();
  String? skill,
      uni,
      degree,
      ypass,
      ecity,
      fname,
      lname,
      profession,
      address,
      phone,
      email,
      about,
      syear,
      eyear,
      companyname,
      wcity,
      post;
  String path = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("Resume App"),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 3),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        i = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.person),
                        Text(
                          "Info",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          i = 1;
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Icon(Icons.work),
                        Text(
                          "Work",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        i = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.school),
                        Text(
                          "Educ ation",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        i = 3;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.settings),
                        Text(
                          "Skills",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        i = 4;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.add_box),
                        Text(
                          "Templates",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            IndexedStack(
              index: i,
              children: [
                Box1(),
                Box2(),
                Box3(),
                Box4(),
                Box5(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Box1() {
    return Container(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: key1,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Personal Information",
                //   style: TextStyle(
                //       color: Colors.blue, fontWeight: FontWeight.bold),
                // ),
                // Text(
                //   "Let's get started with personal information",
                //   style: TextStyle(color: Colors.blue),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Add picture to your Resume",
                //       style: TextStyle(fontSize: 15),
                //     ),
                //     Switch(
                //       value: j,
                //       onChanged: (value) {
                //         setState(() {
                //           j = value;
                //         });
                //       },
                //     ),
                //   ],
                // ),
                (j == true)
                    ? Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              ImagePicker imagePicker = ImagePicker();
                              XFile? xfile = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                path = xfile!.path;
                              });
                            },
                            child: (path.isEmpty)
                                ? Container(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/profile.png",
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        Text("Click to add image"),
                                      ],
                                    ),
                                  )
                                : Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.file(
                                      File(path),
                                      fit: BoxFit.cover,
                                    )),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 10,
                      ),
                Row(
                  children: [
                    Text(
                      "First Name  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtname,
                    decoration: InputDecoration(
                      hintText: "Enter the first name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Name";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Last Name  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtlastname,
                    decoration: InputDecoration(
                      hintText: "Enter the last name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Name";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Profession",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtprofession,
                    decoration: InputDecoration(
                      hintText: "profession",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The profession";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtadd,
                    decoration: InputDecoration(
                      hintText: "Enter  your address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Address";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Phone No",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtphone,
                    decoration: InputDecoration(
                      hintText: "+91 23456 89789",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.length != 10) {
                        return "Please Enter The Number";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtemail,
                    decoration: InputDecoration(
                      hintText: "johndoe@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Email";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtabout,
                    decoration: InputDecoration(
                      hintText: "Enter the About",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The About";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                ElevatedButton(
                  onPressed: () {
                    fname = txtname.text;
                    lname = txtlastname.text;
                    profession = txtprofession.text;
                    address = txtadd.text;
                    phone = txtphone.text;
                    email = txtemail.text;
                    about = txtabout.text;
                    setState(() {
                      if (key1.currentState!.validate()) {
                        i = 1;
                      }
                    });
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Box2() {
    return Container(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: key2,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Work Experience",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Starting Year",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                      controller: txtsy,
                      decoration: InputDecoration(
                        hintText: "2000",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.length != 4) {
                          return "Please Enter The Starting Year";
                        }
                        return null;
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Ending Year",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtey,
                    decoration: InputDecoration(
                      hintText: "2000",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.length != 4) {
                        return "Please Enter The Ending Year";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Company Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtcname,
                    decoration: InputDecoration(
                      hintText: "Infotech PVT LTD",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Company Name";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "City",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtcity,
                    decoration: InputDecoration(
                      hintText: "Surat",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The City";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Post",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtpost,
                    decoration: InputDecoration(
                      hintText: "Flutter Developer",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Post";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    syear = txtsy.text;
                    eyear = txtey.text;
                    companyname = txtcname.text;
                    wcity = txtcity.text;
                    post = txtpost.text;
                    setState(() {
                      if (key2.currentState!.validate()) {
                        i = 2;
                      }
                    });
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Box3() {
    return Container(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: key3,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Education",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Name Of University",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtuni,
                    decoration: InputDecoration(
                      hintText: "Bhagwan Mahavir",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Name Of University";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Degree",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtdig,
                    decoration: InputDecoration(
                      hintText: "eg. BCA",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Degree";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Year Of Passing",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtpy,
                    decoration: InputDecoration(
                      hintText: "2000",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.length != 4) {
                        return "Please Enter The Passing Year";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "City",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtecity,
                    decoration: InputDecoration(
                      hintText: "Surat",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The City";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    uni = txtuni.text;
                    degree = txtdig.text;
                    ypass = txtpy.text;
                    ecity = txtecity.text;
                    setState(
                      () {
                        if (key3.currentState!.validate()) {
                          i = 3;
                        }
                      },
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Box4() {
    return Container(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: key4,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Skills",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtskill,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Skills";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    skill = txtskill.text;
                    setState(() {
                      if (key4.currentState!.validate()) {
                        i = 4;
                      }
                    });
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Box5() {
    return Container(
      width: 300,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: key5,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 2)
                  ]),
                  child: InkWell(
                    onTap: () {
                      Model m1 = Model(
                        skill: skill,
                        firstname: fname,
                        lastname: lname,
                        profession: profession,
                        address: address,
                        phone: phone,
                        email: email,
                        about: about,
                        uni: uni,
                        degree: degree,
                        ypass: ypass,
                        ecity: ecity,
                        sy: syear,
                        ey: eyear,
                        cname: companyname,
                        wcity: wcity,
                        post: post,
                        path: path,
                        j: j,
                      );
                      Navigator.pushNamed(context, '1', arguments: m1);
                    },
                    child: Image.asset(
                      "assets/images/resume1.jpg",
                      fit: BoxFit.cover,
                      height: 280,
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 2)
                  ]),
                  child: InkWell(
                    onTap: () {
                      Model m1 = Model(
                        skill: skill,
                        firstname: fname,
                        lastname: lname,
                        profession: profession,
                        address: address,
                        phone: phone,
                        email: email,
                        about: about,
                        uni: uni,
                        degree: degree,
                        ypass: ypass,
                        ecity: ecity,
                        sy: syear,
                        ey: eyear,
                        cname: companyname,
                        wcity: wcity,
                        post: post,
                        path: path,
                        j: j,
                      );
                      Navigator.pushNamed(context, '2', arguments: m1);
                    },
                    child: Image.asset(
                      "assets/images/resume2.jpg",
                      fit: BoxFit.cover,
                      height: 280,
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 2)
                  ]),
                  child: InkWell(
                    onTap: () {
                      Model m1 = Model(
                        skill: skill,
                        firstname: fname,
                        lastname: lname,
                        profession: profession,
                        address: address,
                        phone: phone,
                        email: email,
                        about: about,
                        uni: uni,
                        degree: degree,
                        ypass: ypass,
                        ecity: ecity,
                        sy: syear,
                        ey: eyear,
                        cname: companyname,
                        wcity: wcity,
                        post: post,
                        path: path,
                        j: j,
                      );
                      Navigator.pushNamed(context, '3', arguments: m1);
                    },
                    child: Image.asset(
                      "assets/images/resume3.jpg",
                      fit: BoxFit.cover,
                      height: 280,
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 2)
                  ]),
                  child: InkWell(
                    onTap: () {
                      Model m1 = Model(
                        skill: skill,
                        firstname: fname,
                        lastname: lname,
                        profession: profession,
                        address: address,
                        phone: phone,
                        email: email,
                        about: about,
                        uni: uni,
                        degree: degree,
                        ypass: ypass,
                        ecity: ecity,
                        sy: syear,
                        ey: eyear,
                        cname: companyname,
                        wcity: wcity,
                        post: post,
                        path: path,
                        j: j,
                      );
                      Navigator.pushNamed(context, '4', arguments: m1);
                    },
                    child: Image.asset(
                      "assets/images/resume4.jpg",
                      fit: BoxFit.cover,
                      height: 280,
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
