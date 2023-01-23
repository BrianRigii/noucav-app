MpesaMessageDetails? processMpesaMessage(String message) {
  final pattern = RegExp(
      r'([A-Z0-9]+) Confirmed.*Ksh([0-9,.]+) sent.* on ([0-9/]+) at ([0-9:]+ [A-Z]+)');
  final match = pattern.firstMatch(message);

  if (match != null) {
    final code = match.group(1);
    final amount = match.group(2);
    final dateString = match.group(3);
    final timeString = match.group(4);
    final dateTime = DateTime.parse('$dateString $timeString');
    return MpesaMessageDetails(
      code: code!,
      amount: amount!,
      dateTime: dateTime,
    );
  }
  return null;
}

class MpesaMessageDetails {
  final String code;
  final String amount;
  final DateTime dateTime;

  MpesaMessageDetails({
    required this.code,
    required this.amount,
    required this.dateTime,
  });
}
