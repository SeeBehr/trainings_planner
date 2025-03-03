import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart'
    hide PdfViewerController;
import 'package:trainings_planner/features/pdf_viewer/pdf_viewer_controller.dart';
import 'package:trainings_planner/features/pdf_viewer/pdf_viewer_model.dart';

class PdfViewerView extends StatelessWidget {
  const PdfViewerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.read<PdfViewerController>().goBack();
          },
        ),
        title: const Text('Pdf Preview'),
      ),
      body: BlocBuilder<PdfViewerController, PdfViewerModel>(
        builder: (context, state) {
          return state.map(
            data: (data) => FutureBuilder(
              future: data.pdf.save(),
              builder: (context, data) => data.hasData
                  ? // const Placeholder()
                  Stack(
                      children: [
                        SfPdfViewer.memory(
                          data.data!,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: IconButton(
                              icon: const Icon(Icons.download),
                              onPressed: () => context
                                  .read<PdfViewerController>()
                                  .download(data.data!),
                            ),
                          ),
                        ),
                      ],
                    )
                  : const CircularProgressIndicator(),
            ),
            loading: (_) => const CircularProgressIndicator(),
            empty: (_) => const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
