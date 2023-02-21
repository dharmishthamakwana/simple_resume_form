import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
// import 'package:resume/Model.dart';
import 'package:simple_resume_form/Model.dart';

Future<void> resume1(Model data) async {
  var pdf = pw.Document();
  var img;

  if(data.path!.isNotEmpty) {
    img = pw.MemoryImage(
      File('${data.path}').readAsBytesSync(),
    );
  }
  var img1=pw.MemoryImage((await rootBundle.load('assets/images/profile.png')).buffer.asUint8List());
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (context) => pw.Row(
        children: [
          pw.Container(
            height: 990,
            width: 140,
            color: PdfColors.blueGrey900,
            child: pw.Padding(
              padding: pw.EdgeInsets.all(10),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(
                    height: 30,
                  ),
                  (data.path!.isEmpty)?pw.Center(
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
                  pw.SizedBox(
                    height: 30,
                  ),
                  pw.Text(
                    "CONTACT",
                    style: pw.TextStyle(
                        color: PdfColors.white, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 2,
                  ),
                  pw.Container(
                    height: 1.5,
                    width: 150,
                    color: PdfColors.white,
                  ),
                  pw.SizedBox(
                    height: 15,
                  ),
                  pw.Column(
                    children: [
                      pw.Row(
                        children: [
                          pw.SizedBox(
                            width: 15,
                          ),
                          pw.Text(
                            "Phone",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontWeight: pw.FontWeight.bold),
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        height: 5,
                      ),
                      pw.Text(
                        "${data.phone}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Column(
                    children: [
                      pw.Row(
                        children: [
                          // pw.Image.asset(
                          //     "assets/images/mail_FILL0_wght400_GRAD0_opsz48.png"),
                          pw.SizedBox(
                            width: 15,
                          ),
                          pw.Text(
                            "Mail",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontWeight: pw.FontWeight.bold),
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        height: 5,
                      ),
                      pw.Text(
                        "${data.email}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 30,
                  ),
                  pw.Column(
                    children: [
                      pw.Row(
                        children: [
                          // pw.MemoryImage(orientation: PdfImageOrientation()),
                          pw.SizedBox(
                            width: 15,
                          ),
                          pw.Text(
                            "Address",
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontWeight: pw.FontWeight.bold),
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        height: 5,
                      ),
                      pw.Text(
                        "${data.address}",
                        style: pw.TextStyle(color: PdfColors.white),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 30,
                  ),
                  pw.Text(
                    "SKILLS",
                    style: pw.TextStyle(
                        color: PdfColors.white, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 2,
                  ),
                  pw.Container(
                    height: 1.5,
                    width: 150,
                    color: PdfColors.white,
                  ),
                  pw.SizedBox(
                    height: 15,
                  ),
                  pw.Text(
                    "${data.skill}",
                    style: pw.TextStyle(color: PdfColors.white),
                  ),
                ],
              ),
            ),
          ),
          pw.SizedBox(
            height: 773,
            width: 220,
            child: pw.Padding(
              padding: pw.EdgeInsets.all(8),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    "${data.firstname} ${data.lastname}",
                    style: pw.TextStyle(
                        fontSize: 25,
                        color: PdfColors.black,
                        fontWeight: pw.FontWeight.bold),
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "${data.profession}",
                    style: pw.TextStyle(fontSize: 17),
                  ),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Text(
                    "Hello,I'm ${data.firstname}",
                    style: pw.TextStyle(
                        color: PdfColors.blueGrey900,
                        fontWeight: pw.FontWeight.bold),
                  ),
                  pw.Text(
                    "${data.about}",
                    style: pw.TextStyle(
                      color: PdfColors.blueGrey900,
                    ),
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Text(
                    "EXPERIENCE",
                    style: pw.TextStyle(
                        color: PdfColors.blueGrey900,
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 18),
                  ),
                  pw.Container(
                    height: 1.5,
                    width: 150,
                    color: PdfColors.blueGrey900,
                  ),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Row(
                    children: [
                      pw.Column(
                        children: [
                          pw.Container(
                            height: 10,
                            width: 10,
                            decoration: pw.BoxDecoration(
                                shape: pw.BoxShape.circle,
                                border: pw.Border.all(
                                    color: PdfColors.blueGrey900, width: 1.5)),
                          ),
                          pw.Container(
                            height: 80,
                            width: 1.5,
                            color: PdfColors.blueGrey900,
                          ),
                          pw.Container(
                            height: 10,
                            width: 10,
                            decoration: pw.BoxDecoration(
                                shape: pw.BoxShape.circle,
                                border: pw.Border.all(
                                    color: PdfColors.blueGrey900, width: 1.5)),
                          ),
                          pw.Container(
                            height: 80,
                            width: 1.5,
                            color: PdfColors.blueGrey900,
                          ),
                          pw.Container(
                            height: 10,
                            width: 10,
                            decoration: pw.BoxDecoration(
                                shape: pw.BoxShape.circle,
                                border: pw.Border.all(
                                    color: PdfColors.blueGrey900, width: 1.5)),
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        width: 5,
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Starting Year",
                            style: pw.TextStyle(
                                color: PdfColors.blueGrey900,
                                fontWeight: pw.FontWeight.bold),
                          ),
                          pw.Text(
                            "${data.sy}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                          pw.SizedBox(
                            height: 5,
                          ),
                          pw.Text(
                            "Ending Year",
                            style: pw.TextStyle(
                                color: PdfColors.blueGrey900,
                                fontWeight: pw.FontWeight.bold),
                          ),
                          pw.Text("${data.ey}",
                              style:
                              pw.TextStyle(color: PdfColors.blueGrey900)),
                          pw.SizedBox(
                            height: 5,
                          ),
                          pw.Text(
                            "Company Name | Location",
                            style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.blueGrey900),
                          ),
                          pw.Text(
                            "${data.cname}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                          pw.Text(
                            "${data.ecity}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                          pw.SizedBox(
                            height: 5,
                          ),
                          pw.Text(
                            "Post",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blueGrey900,
                            ),
                          ),
                          pw.Text(
                            "${data.post}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                        ],
                      ),
                    ],
                  ),
                  pw.Text(
                    "EDUCATION",
                    style: pw.TextStyle(
                        color: PdfColors.blueGrey900,
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 18),
                  ),
                  pw.Container(
                    height: 1.5,
                    width: 150,
                    color: PdfColors.blueGrey900,
                  ),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Row(
                    children: [
                      pw.Column(
                        children: [
                          pw.Container(
                            height: 10,
                            width: 10,
                            decoration: pw.BoxDecoration(
                                shape: pw.BoxShape.circle,
                                border: pw.Border.all(
                                    color: PdfColors.blueGrey900, width: 1.5)),
                          ),
                          pw.Container(
                            height: 80,
                            width: 1.5,
                            color: PdfColors.blueGrey900,
                          ),
                          pw.Container(
                            height: 10,
                            width: 10,
                            decoration: pw.BoxDecoration(
                                shape: pw.BoxShape.circle,
                                border: pw.Border.all(
                                    color: PdfColors.blueGrey900, width: 1.5)),
                          ),
                          pw.Container(
                            height: 80,
                            width: 1.5,
                            color: PdfColors.blueGrey900,
                          ),
                          pw.Container(
                            height: 10,
                            width: 10,
                            decoration: pw.BoxDecoration(
                                shape: pw.BoxShape.circle,
                                border: pw.Border.all(
                                    color: PdfColors.blueGrey900, width: 1.5)),
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        width: 5,
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Passing Year",
                            style: pw.TextStyle(
                                color: PdfColors.blueGrey900,
                                fontWeight: pw.FontWeight.bold),
                          ),
                          pw.Text(
                            "${data.ypass}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                          pw.SizedBox(
                            height: 5,
                          ),
                          pw.Text(
                            "University Name | Location",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blueGrey900,
                            ),
                          ),
                          pw.Text(
                            "${data.uni}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                          pw.Text(
                            "${data.ecity}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                          pw.SizedBox(
                            height: 5,
                          ),
                          pw.Text(
                            "Degree",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blueGrey900,
                            ),
                          ),
                          pw.Text(
                            "${data.degree}",
                            style: pw.TextStyle(color: PdfColors.blueGrey900),
                          ),
                        ],
                      ),
                    ],
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