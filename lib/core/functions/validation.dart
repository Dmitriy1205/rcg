String? validateEmailField(value) {
  String pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
  RegExp regex = RegExp(pattern);
  if (value!.isEmpty) {
    return 'THIS FIELD CAN\'T BE EMPTY';
  } else if (!regex.hasMatch(value)) {
    return 'ENTER A VALID EMAIL ADDRESS ';
  }
  return null;
}

String? validatePassField(value) {
  if (value!.isEmpty) {
    return 'THIS FIELD CAN\'T BE EMPTY';
  } else if (!value.contains(RegExp(r'[a-z]'))) {
    return ('MUST INCLUDE AT LEAST ONE a-z LETTER ');
  } else if (!value.contains(RegExp(r'[0-9]'))) {
    return ('MUST INCLUDE AT LEAST ONE 0-9 CHARACTER');
  } else if (value.length <= 7) {
    return ('MUST INCLUDE AT LEAST 8 CHARACTER ');
  }

  return null;
}
