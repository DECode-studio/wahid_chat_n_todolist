int getInt(dynamic text) {
  var data = text.toString();
  var value = data.replaceAll(RegExp(r'[^0-9]'), '');

  return int.parse(value);
}

String removeCustomerPrefix(String email) {
  var status = email.startsWith("customer.");

  if (status) {
    return email.replaceFirst("customer.", "");
  }
  return email;
}
