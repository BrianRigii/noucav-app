MpesaMessageDetails? processMpesaMessage(String message) {
  final pattern =
      RegExp(r'([A-Z0-9]+) Confirmed.*Ksh([0-9,.]+) sent.* on ([0-9/]+)');
  final match = pattern.firstMatch(message);

  if (match != null) {
    final code = match.group(1);
    final amount = match.group(2);
    final date = match.group(3);
    return MpesaMessageDetails(
      code: code!,
      amount: amount!,
      date: date!,
    );
  }
  return null;
}

class MpesaMessageDetails {
  final String code;
  final String amount;
  final String date;

  MpesaMessageDetails({
    required this.code,
    required this.amount,
    required this.date,
  });
}
