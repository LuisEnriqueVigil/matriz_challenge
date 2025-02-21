
import 'package:flutter/widgets.dart';
import 'dart:math';

class HomeController with ChangeNotifier{
  int _cantValuesOfMatriz  = 0; 
  TextEditingController _textEditingControllerInput = TextEditingController(); 
  List<List<int>> _matrixOfNumbers = [];
  List<List<int>> _matrixOfNumbersOutPut = [];

  int get cantValuesOfMatriz => _cantValuesOfMatriz;
  set cantValuesOfMatriz ( int value){
   _cantValuesOfMatriz = value;
   notifyListeners();
  }

  List<List<int>> get matrixOfNumbers => _matrixOfNumbers;
  set matrixOfNumbers ( List<List<int>> value){
   _matrixOfNumbers = value;
   notifyListeners();
  }

  List<List<int>> get matrixOfNumbersOutPut => _matrixOfNumbersOutPut;
  set matrixOfNumbersOutPut ( List<List<int>> value){
   _matrixOfNumbersOutPut = value;
   notifyListeners();
  }

  TextEditingController get textEditingControllerInput => _textEditingControllerInput;
  set textEditingControllerInput ( TextEditingController value){
   _textEditingControllerInput = value;
   notifyListeners();
  }

  void generateMatrix(){
    RegExp regExp = RegExp(r'\[[^\[\]]*\]');
    List<String> valuesOfMatrix= regExp.allMatches(textEditingControllerInput.text).map((match) => match.group(0)!).toList();
    RegExp regExpOnlyNumbers = RegExp(r'\d+'); // Busca uno o más dígitos
    List<int>  valuesOnlyNumbers = regExpOnlyNumbers.allMatches(textEditingControllerInput.text).map((match) => int.parse(match.group(0)!)).toList();
    debugPrint("vlues int: $valuesOnlyNumbers");

    int n = sqrt(valuesOnlyNumbers.length).toInt();
    int index = 0; 
    
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        matrixOfNumbers[i][j] = valuesOnlyNumbers[index++]; // Asigna el producto de fila x columna
      }
    }

    for (var row in matrixOfNumbers) {
      debugPrint(row.toString());
    }
  }
  
}