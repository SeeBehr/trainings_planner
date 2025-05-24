import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/pdf_viewer/pdf_viewer_model.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class PdfViewerController extends Cubit<PdfViewerModel> {
  PdfViewerController({
    required this.navigationService,
    required this.dataRepository,
  }) : super(PdfViewerModel.loading()) {
    emit(PdfViewerModel.data(pdf: _generatePdf(dataRepository.loadTraining())));
  }
  final NavigationService navigationService;
  final DataRepository dataRepository;

  pw.Document _generatePdf(List<HomeModelExercise> exercises) {
    final pdf = pw.Document()
      ..addPage(
        pw.Page(
          build: (context) {
            return pw.GridView(
              crossAxisCount: 2,
              children: [
                ...exercises
                    .sortWith(
                      (exercise) => exercise.training.index,
                      Order.orderInt,
                    )
                    .map(
                      (exercise) => pw.Row(
                        mainAxisSize: pw.MainAxisSize.min,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Column(
                            mainAxisSize: pw.MainAxisSize.min,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                exercise.name,
                                style: const pw.TextStyle(fontSize: 14),
                              ),
                              pw.Row(
                                children: [
                                  pw.Text(
                                    'material:',
                                    style: const pw.TextStyle(fontSize: 12),
                                  ),
                                  pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: exercise.material
                                        .map(
                                          (exercise) => pw.Text(
                                            '- $exercise',
                                            style: const pw.TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ],
                              ),
                              pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    'notes:',
                                    style: const pw.TextStyle(fontSize: 12),
                                  ),
                                  pw.Paragraph(
                                    text: exercise.training.notes,
                                    style: const pw.TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          if (exercise.image != null)
                            pw.Padding(
                              padding: const pw.EdgeInsets.all(8),
                              child: pw.Image(
                                alignment: pw.Alignment.topCenter,
                                width: 150,
                                pw.MemoryImage(
                                  File(exercise.image!).readAsBytesSync(),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
              ],
            );
          },
        ),
      );
    return pdf;
  }

  void goBack() {
    navigationService.goBack();
  }

  Future<void> download(Uint8List bytes) async => FilePicker.platform
      .saveFile(
        dialogTitle: 'Save PDF',
        initialDirectory: '/',
        allowedExtensions: ['pdf'],
        fileName: 'trainings_plan.pdf',
      )
      .then(
        (file) => file == null
            ? null
            : File(file).writeAsBytes(bytes).then(
                  (_) => goBack(),
                ),
      );
}
