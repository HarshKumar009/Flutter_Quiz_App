import 'questions.dart';

class QuizBrain{

  int _quesNom = 0;
  List<Question> _quebank =[
    Question(questionText: 'you can lead a cow down staris  but not up stairs', questionAnswer: false),
    Question(questionText: 'Approximately  one quarter  of human bones are in the feet', questionAnswer: true),
    Question(questionText: 'A slug\' blood  is green ', questionAnswer: true),
    Question(questionText: 'Flutter boasts improved runtime performance over most application frameworks.', questionAnswer: true),
    Question(questionText: 'an experienced Flutter developer doesnt need to know platform native languages or tools to build apps.', questionAnswer: false),
    Question(questionText: 'Flutter supports desktop application development. ', questionAnswer: true),
    Question(questionText: 'Flutter teams are inherently more difficult to manage because the framework is so new.', questionAnswer: false),
    Question(questionText: 'A sequence of asynchronous events is often referred to as a stream.', questionAnswer: true),
    Question(questionText: 'Everything is a widget in Flutter. True or False?', questionAnswer: true),
  ];

  void nextQuestion()
  {
    if(_quesNom < _quebank.length-1)
      {
        _quesNom++;
      }

  }
  String getQuestionText()
  {
    return _quebank[_quesNom].questionText;
  }

  bool getCorrectAnswer()
  {
    return _quebank[_quesNom].questionAnswer;
  }

  bool isFinished() {
    if(_quesNom >= _quebank.length-1)
      {
        print('Now returning true');
        return true;
      }
    else {
      return false;
    }
  }
  void reset(){
    _quesNom = 0;
  }
}

