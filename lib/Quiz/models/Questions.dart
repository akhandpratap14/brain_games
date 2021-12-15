class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "I am a mother's child and a father's child but nobody's son. What am I? ",
    "options": ['Daughter', 'Father', 'Son', 'Uncle'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "16 - 4÷1/4+2 = ?",
    "options": ['6', '5', '2', '17'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question":
        "When I get multiplied by any number, the sum of the figures in the product is always me. What am I?",
    "options": ['4', '9', '8', '2'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
        "A painting and a sculpture cost 1500 Dollar in total. The painting costs 1,000 Dollar more than the sculpture.  How much does the sculpture cost?",
    "options": ['400 Dollar', '450 Dollar', '200 Dollar', '250 Dollar'],
    "answer_index": 4,
  },
  {
    "id": 5,
    "question": "What is 3/7 chicken, 2/3 cat and 2/4 goat?",
    "options": ['Chipmunk', 'Chicago', 'Chiffon', 'Child Birth'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "What type of lion never roars?",
    "options": ['Mountain Lion', 'Dandelion', 'Captured Lion', 'Lion Cub'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question":
        "A car covers a distance of 200km in 2 hours 40 minutes, whereas a jeep covers the same distance in 2 hours. What is the ratio of their speed?",
    "options": ['4:5', '3:4', '4:3', '5:4'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question":
        "In the following series a wrong number is given. Find out that number. 4, 5, 10, 18, 34, 59, 95",
    "options": ['34', '5', '10', '18'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question":
        "I start with M, end with X, and have a never-ending number of letters. What am I?",
    "options": ['Matrix', 'Mix', 'MailBox', 'Multiplex'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question":
        "Rebecca weighs 98 pounds plus half her own weight. How much does she weigh?",
    "options": ['184', '128', '196', '192'],
    "answer_index": 2,
  },
];
