String calcularImc({required String peso, required String altura}) {
  final VPeso = double.tryParse(peso.replaceAll(',', '.')) ?? 0;
  final VAltura = double.tryParse(altura.replaceAll(',', '.')) ?? 0;

  double imc = VPeso / (VAltura * VAltura);

  if(imc < 16) {
    return "Magreza grave";
  } else if(imc >= 16 && imc < 17) {
    return "Magreza moderada";
  }else if(imc >= 17 && imc < 18.5) {
    return "Magreza leve";
  }else if(imc >= 18.5 && imc < 25) {
    return "Saudável";
  }else if(imc >= 25 && imc < 30) {
    return "Sobrepeso";
  }else if(imc >= 30 && imc < 35) {
    return "Obesidade grau I";
  }else if(imc >= 35 && imc < 40) {
    return "Obesidade grau II (Severa)";
  } else if(imc >= 40) {
    return "Obesidade grau III (Mórbida)";
  } else {
    return "Erro inesperado";
  }   
}
