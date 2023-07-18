class DatagramSocketException implements Exception {
  final dynamic origin;
  final dynamic prevState;
  final dynamic broadcastEnabled; 

  DatagramSocketException(this.origin, this.prevState, this.broadcastEnabled);

  @override
  String toString() {
    var report = 'DatagramSocketException: \n';
    
    Object? message = origin;
    if (message != null && '' != message) {
      report = '$report: $message \n';
    }
    if (prevState != null && '' != prevState) {
      report += 'prevState: $prevState \n';
    } else {
      report += 'prevState: is null or empty \n';
    }
    if (broadcastEnabled != null && '' != broadcastEnabled) {
      report += 'broadcastEnabled: $broadcastEnabled \n';
    } else {
      report += 'broadcastEnabled: is null \n';
    }
    return report;
  }
}