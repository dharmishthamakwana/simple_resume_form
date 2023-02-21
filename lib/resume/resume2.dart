import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:simple_resume_form/Model.dart';

Future<void> resume2(Model data1) async {
  var pdf = pw.Document();
  var img;

  if(data1.path!.isNotEmpty) {
    img = pw.MemoryImage(
      File('${data1.path}').readAsBytesSync(),
    );
  }
  var img1=pw.MemoryImage((await rootBundle.load('assets/images/resume2.png')).buffer.asUint8List());
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (context) =>pw.Row(
        children: [
          pw.Container(
            height: 773,
            width: 140,
            color: PdfColors.blueGrey900,
            child: pw.Padding(
              padding: const pw.EdgeInsets.all(10),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  (data1.path!.isEmpty)?pw.Center(
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
                  pw.SizedBox(height: 20,),
                  pw.Text(
                    "EDUCATION",
                    style: pw.TextStyle(
                        color: PdfColors.white, fontWeight: pw.FontWeight.bold,fontSize: 18),
                  ),
                  pw.SizedBox(
                    height: 2,
                  ),
                  pw.Container(
                    height: 1.5,
                    width: 220,
                    color: PdfColors.amber,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Text(
                    "${data1.uni}",style: pw.TextStyle(
                    color: PdfColors.white,),
                  ),
                  pw.Text(
                    "${data1.degree}",
                    style: pw.TextStyle(color: PdfColors.white),
                  ),
                  pw.Text(
                    "${data1.ypass}",
                    style: pw.TextStyle(color: PdfColors.white),
                  ),
                  pw.Text(
                    "${data1.ecity}",
                    style: pw.TextStyle(color: PdfColors.white),
                  ),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Text(
                    "CONTACT",
                    style: pw.TextStyle(
                        color: PdfColors.white, fontWeight: pw.FontWeight.bold,fontSize: 18),
                  ),
                  pw.SizedBox(
                    height: 2,
                  ),
                  pw.Container(
                    height: 1.5,
                    width: 220,
                    color: PdfColors.amber,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Text(
                    "Phone",style: pw.TextStyle(fontSize: 16,
                    color: PdfColors.white,),
                  ),
                  pw.Text(
                    "${data1.phone}",
                    style: pw.TextStyle(color: PdfColors.white),
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "Mail",style: pw.TextStyle(fontSize: 16,
                    color: PdfColors.white,),
                  ),
                  pw.Text(
                    "${data1.email}",
                    style: pw.TextStyle(color: PdfColors.white),
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Text(
                    "Address",style: pw.TextStyle(fontSize: 16,
                    color: PdfColors.white,),
                  ),
                  pw.Text(
                    "${data1.address}",
                    style: pw.TextStyle(color: PdfColors.white),
                  ),
                ],
              ),
            ),
          ),
          pw.Container(
            height: 773,
            width: 220,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.SizedBox(height: 20,),
                pw.Container(
                  height: 100,
                  width: 300,
                  color: PdfColors.amber,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.all(10),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(
                          height: 15,
                        ),
                        pw.Text(
                          "${data1.firstname} ${data1.lastname}",
                          style: pw.TextStyle(fontSize: 25, color: PdfColors.black),
                        ),
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.Text("${data1.profession}"),
                      ],
                    ),
                  ),
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.all(10),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "ABOUT ME",
                        style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.Container(
                        height: 1.5,
                        width: 290,
                        color: PdfColors.black,
                      ),
                      pw.SizedBox(height: 5,),
                      pw.Text(
                        "${data1.about}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                      pw.SizedBox(
                        height: 20,
                      ),
                      pw.Text(
                        "WORK EXPERIENCE",
                        style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.Container(
                        height: 1.5,
                        width: 290,
                        color: PdfColors.black,
                      ),
                      pw.SizedBox(height: 5,),
                      pw.Text(
                        "${data1.sy} - ${data1.ey}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                      pw.Text(
                        "I Work in ${data1.cname} from ${data1.wcity}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                      pw.Text(
                        "Post ${data1.post}",
                        style: pw.TextStyle(color: PdfColors.black),
                      ),
                      pw.SizedBox(
                        height: 20,
                      ),
                      pw.Text(
                        "SKILLS",
                        style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18),
                      ),
                      pw.Container(
                        height: 1.5,
                        width: 290,
                        color: PdfColors.black,
                      ),
                      pw.Text(
                        "${data1.skill}",
                        style: pw.TextStyle( color: PdfColors.black),
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

  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/myresume.pdf");
  await file.writeAsBytes(await pdf.save());
  print("======================${directory.path}=======================");
}