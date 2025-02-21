
import 'package:flutter/widgets.dart';
import 'dart:math';

class HomeController with ChangeNotifier{
  int _cantValuesOfMatriz  = 0; 
  TextEditingController _textEditingControllerInput = TextEditingController(); 
  List<List<int>> _matrixOfNumbers = [];
  List<int> _matrixOfNumbersOutPut = [];

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

  List<int> get matrixOfNumbersOutPut => _matrixOfNumbersOutPut;
  set matrixOfNumbersOutPut ( List<int> value){
   _matrixOfNumbersOutPut = value;
   notifyListeners();
  }

  TextEditingController get textEditingControllerInput => _textEditingControllerInput;
  set textEditingControllerInput ( TextEditingController value){
   _textEditingControllerInput = value;
   notifyListeners();
  }

  void generateMatrix(){

    RegExp regExpOnlyNumbers = RegExp(r'\d+'); // Busca uno o más dígitos
    List<int>  valuesOnlyNumbers = regExpOnlyNumbers.allMatches(textEditingControllerInput.text).map((match) => int.parse(match.group(0)!)).toList();

    int cantOfValues = sqrt(valuesOnlyNumbers.length).toInt();
    matrixOfNumbers =List.generate(cantOfValues, (_) => List.filled(cantOfValues, 0));
    int index = 0; 
    
    for (int i = 0; i < cantOfValues; i++) {
      for (int j = 0; j < cantOfValues; j++) {
        matrixOfNumbers[i][j] = valuesOnlyNumbers[index++];
      }
    }
    List<List<int>> newMatrixRotate = List.generate(cantOfValues, (_) => List.filled(cantOfValues, 0));
    // Reordenar la matriz
    for (int i = 0; i < cantOfValues; i++) {
      for (int j = 0; j < cantOfValues; j++) {
        debugPrint("newMatrixRotate[i][j]: ${newMatrixRotate[i][j]}");
        newMatrixRotate[i][j] = matrixOfNumbers[j][cantOfValues - 1 - i];
      }
    }
    cantValuesOfMatriz = cantOfValues;
    matrixOfNumbersOutPut = newMatrixRotate.expand((row) => row).toList();
    notifyListeners();
  }
  
}