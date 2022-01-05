class PythonQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  PythonQuestion({this.id, this.question, this.answer, this.options});
}

const List Python_sample_data = [
  {
    "id": 1,
    "question":
        "Who developed Python Programming Language?",
    "options": ['Wick van Rossum','Rasmus Lerdorf','Guido van Rossum', 'Niene Stom'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Which type of Programming does Python support?",
    "options": ['object-oriented programming','structured programming','functional programming','all of the mentioned'],
    "answer_index": 4,
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
    "question": "Is Python case sensitive when dealing with identifiers?",
    "options": ['no','yes','machine dependent', 'none of the mentioned'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": " Which of the following is the correct extension of the Python file?",
    "options": ['.python','.pl','.py','.p'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "All keywords in Python are in _________",
    "options": ['Capitalized','lower case','UPPER CASE','None of the mentioned'],
    "answer_index": 4,
  },
  {
    "id": 8,
    "question": "What will be the value of the following Python expression? ",
    "options": ['7','2','4','1'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Which of the following is used to define a block of code in Python language?",
    "options": ['Indentation','Key','Brackets', 'All of the mentioned'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question": "Which of the following character is used to give single-line comments in Python?",
    "options": ['//','#','!', '/*'],
    "answer_index": 3,
  },
];
