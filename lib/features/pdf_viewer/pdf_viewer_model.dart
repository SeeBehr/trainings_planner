import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf/widgets.dart' as pw;
part 'pdf_viewer_model.freezed.dart';

@freezed
class PdfViewerModel with _$PdfViewerModel {
  factory PdfViewerModel.data({
    required pw.Document pdf,
  }) = _PdfViewerModelData;
  factory PdfViewerModel.loading() = _PdfViewerModelLoading;
  factory PdfViewerModel.empty() = _PdfViewerModelEmpty;
}
