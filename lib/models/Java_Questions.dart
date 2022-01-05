class JavaQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  JavaQuestion({this.id, this.question, this.answer, this.options});
}

const List Java_sample_data = [
  {
    "id": 1,
    "question":
    " Who invented Java Programming?",
    "options": ['Guido van Rossum','James Gosling','Dennis Ritchie', 'Bjarne Stroustrup'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "Which component is used to compile, debug and execute the java programs?",
    "options": ['JRE','JIT','JDK','JVM'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Which one of the following is not a Java feature?",
    "options": ['Object-oriented', ' Use of pointers', ' Portable', 'Dynamic and Extensible'],
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
    "question": "Which of these cannot be used for a variable name in Java?",
    "options": [' identifier & keyword', 'identifier','keyword','none of the mentioned'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "What is the extension of java code files?",
    "options": ['.js','.txt','.java','.class'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "Which environment variable is used to set the java path?",
    "options": ['MAVEN_Path','JavaPATH','JAVA','JAVA_HOME'],
    "answer_index": 4,
  },
  {
    "id": 8,
    "question": " The ________ operator is used to evaluate and returns the value between two expressions. ",
    "options": ['?','&','??','&&'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "Which of the following is not an OOPS concept in Java?",
    "options": ['Polymorphism','Inheritance','Compilation','Encapsulation'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "What is the extension of compiled java classes?",
    "options": ['.js','.txt','.java','.class'],
    "answer_index": 4,
  },
];
