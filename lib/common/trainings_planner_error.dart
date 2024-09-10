class TrainingsPlannerError {
  TrainingsPlannerError(this.message, {this.stackTrace});
  final String message;
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Error{message: $message, '
        '${stackTrace != null ? 'stackTrace: $stackTrace' : ''}'
        '}';
  }
}
