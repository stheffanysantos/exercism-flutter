class AtbashCipher {
  List<String> letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
  List<String> lettersDec = ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"];

  String encode(String word) {
    String filtrada = "";
    
    for (int i = 0; i < word.length; i++) {
      String letraAtual = word[i].toLowerCase();
      int posicao = letters.indexOf(letraAtual);
      
      if (posicao != -1) {
        filtrada += lettersDec[posicao];
      } else if (RegExp(r'[0-9]').hasMatch(letraAtual)) {
        filtrada += letraAtual;
      }
    }

    String resultadoFinal = "";
    for (int i = 0; i < filtrada.length; i++) {
      if (i > 0 && i % 5 == 0) {
        resultadoFinal += " ";
      }
      resultadoFinal += filtrada[i];
    }
    
    return resultadoFinal;
  }

  String decode(String word) {
    String semEspacos = word.replaceAll(" ", "");
    String resultado = "";
    
    for (int i = 0; i < semEspacos.length; i++) {
      String letraAtual = semEspacos[i].toLowerCase();
      int posicao = lettersDec.indexOf(letraAtual);
      
      if (posicao != -1) {
        resultado += letters[posicao];
      } else if (RegExp(r'[0-9]').hasMatch(letraAtual)) {
        resultado += letraAtual;
      }
    }
    return resultado;
  }
}
