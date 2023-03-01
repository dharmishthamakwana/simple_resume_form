import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:simple_resume_form/Model.dart';

Future<void> resume3(Model data3) async {
  var pdf = pw.Document();
  var img;

  if(data3.path!.isNotEmpty) {
    img = pw.MemoryImage(
      File('${data3.path}').readAsBytesSync(),
    );
  }
  var img1=pw.MemoryImage((await rootBundle.load('assets/images/profile.png')).buffer.asUint8List());
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (context) =>pw.Stack(
        children: [
          pw.Row(
            children: [
              pw.Container(
                height: 773,
                width: 140,
                color: PdfColors.blue50,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.all(10),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.SizedBox(
                        height: 120,
                      ),
                      pw.Text(
                        "CONTACT",
                        style: pw.TextStyle(
                            color: PdfColors.white,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "Email",
                        style: pw.TextStyle(color: PdfColors.white,fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        "${data3.email}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "Contact No.",
                        style: pw.TextStyle(color: PdfColors.white,fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        "${data3.phone}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                      pw.SizedBox(
                        height: 30,
                      ),
                      pw.Text(
                        "EDUCATION",
                        style: pw.TextStyle(
                            color: PdfColors.white,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "University name",
                        style: pw.TextStyle(color: PdfColors.white,fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        "${data3.uni}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "Passing Year",
                        style: pw.TextStyle(color: PdfColors.white,fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        "${data3.ypass}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "City",
                        style: pw.TextStyle(color: PdfColors.white,fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        "${data3.ecity}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                    ],
                  ),
                ),
              ),
              pw.Container(
                height: 773,
                width: 220,
                child: pw.Padding(
                  padding: pw.EdgeInsets.all(10),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.SizedBox(
                        height: 120,
                      ),
                      pw.Text(
                        "ABOUT ME",
                        style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.SizedBox(height: 10,),
                      pw.Text(
                        "${data3.about}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                      pw.SizedBox(
                        height: 30,
                      ),
                      pw.Text(
                        "EXPERIENCE",
                        style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.SizedBox(height: 10,),
                      pw.Text(
                        "Year",
                        style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        "${data3.sy} - ${data3.ey}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                      pw.SizedBox(height: 10,),
                      pw.Text(
                        "Company Name & Location",
                        style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        "I Work in ${data3.cname} , Which Located in ${data3.wcity}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                      pw.SizedBox(
                        height: 30,
                      ),
                      pw.Text(
                        "SKILLS",
                        style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.SizedBox(height: 10,),
                      pw.Text(
                        "${data3.skill}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          pw.Padding(
            padding: pw.EdgeInsets.all(10),
            child: pw.Container(
              height: 100,
              width: 400,
              color: PdfColors.blue,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.all(8.0),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "${data3.firstname} ${data3.lastname}",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 25,
                              fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Text(
                          "${data3.profession}",
                          style: pw.TextStyle(
                              color: PdfColors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  (data3.path!.isEmpty)?pw.Center(
                    child: pw.Container(
                      height: 120,
                      width: 120,
                      decoration: pw.BoxDecoration(
                        shape: pw.BoxShape.circle,
                        color: PdfColors.white,
                        image: pw.DecorationImage(image: img1),
                      ),
                    ),
                  ):pw.Center(
                    child: pw.Container(
                      height: 120,
                      width: 120,
                      decoration: pw.BoxDecoration(
                        shape: pw.BoxShape.circle,
                        color: PdfColors.white,
                        image: pw.DecorationImage(image: img1),
                      ),
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

  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/myresume.pdf");
  await file.writeAsBytes(await pdf.save());
  print("======================${directory.path}=======================");
}