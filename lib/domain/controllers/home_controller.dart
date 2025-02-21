
import 'package:flutter/widgets.dart';

class HomeController with ChangeNotifier{
  int _cantValuesOfMatriz  = 0; 
  TextEditingController _textEditingControllerInput = TextEditingController(); 
  List<List<String>> _matrixOfNumbers = [];
  List<List<String>> _matrixOfNumbersOutPut = [];

  int get cantValuesOfMatriz => _cantValuesOfMatriz;
  set cantValuesOfMatriz ( int value){
   _cantValuesOfMatriz = value;
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
    debugPrint ("values: ${valuesOfMatrix}");
  }
  
}