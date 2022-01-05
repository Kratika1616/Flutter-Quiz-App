class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [

  {
    "id": 1,
    "question":
    "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What are the best editors for Flutter development? ",
    "options": ['Android Studio', 'IntelliJ IDEA', 'Visual Studio', 'All of the above'],
    "answer_index": 4,
  },
  {
    "id": 6,
    "question": " Is Flutter a programming language? ",
    "options": [' Yes','No','May be','Cant say'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": " A _______ is a sequence of asynchronous events. ",
    "options": ['Flow', 'Current', 'Stream', 'All of the above'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": " The ________ operator is used to evaluate and returns the value between two expressions. ",
    "options": ['?','&','??','&&'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "_______ in Flutter are used as an identifier for Widgets, Elements and SemanticsNodes.",
    "options": ['Buttons', 'Keys', 'Widgets', 'None of the above'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "How many types of widgets are there in Flutter?",
    "options": ['2','3','4', '5'],
    "answer_index": 1,
  },
];
