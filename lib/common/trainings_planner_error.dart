class TrainingsPlannerError {
  final String message;
  final StackTrace? stackTrace;

  TrainingsPlannerError(this.message, {this.stackTrace});

  @override
  String toString() {
    return 'Error{message: $message, ${stackTrace != null ? 'stackTrace: $stackTrace' : ''}}';
  }
}
