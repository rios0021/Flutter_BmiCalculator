import 'dart:math';


class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

  double  _bmi;
  Map<String,String> bmi = {
    'Obese'       : 'You have a really highg body weight. Go exercise you pig!',
    'Overweight'  : 'You have a higher than normal body weight. Try to exercise more.',
    'Normal'      : 'You have a normal body weight. Good job!',
    'Underweight' : 'You have a lower than normal body weight. You can eat more'
  };

  String calculateBMI(){
    _bmi = weight/ pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 30){
      return 'Obese';
    }else if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
      if(_bmi >= 30){
      return 'You have a really highg body weight. Go exercise you pig!';
    }else if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }else{
      return 'You have a lower than normal body weight. You can eat more';
    }
  }
}