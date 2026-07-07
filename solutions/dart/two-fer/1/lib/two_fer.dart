String twoFer([String? nome]) {
  if (nome == null || nome.isEmpty) {
    return "One for you, one for me.";
  }

  return "One for $nome, one for me.";
}