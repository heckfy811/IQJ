import 'package:iqj/features/schedule/domain/day.dart';
import 'package:iqj/features/schedule/domain/lesson.dart';

// Массив, служащий заглушкой для расписания.
// Не стесняйтесь изменять по мере надобности.
/*
В список так же можно (и нужно) добавлять и объекты
класса WorkingDay, т.к. он - дочерний для класса day
*/

Future<List<Day>> getSchedule() async {
  return schedule;
}

final List<Day> schedule = [
  WorkingDay(
    DateTime(2024, 5, 1),
    lessons: [
      Lesson(
        name: "Физика",
        type: "Лекция",
        classroom: "A-15 (В-78)",
        groups: [
          "ЭФБО-01-23",
          "ЭФБО-02-23",
          "ЭФБО-03-23",
          "ЭФБО-04-23",
          "ЭФБО-05-23",
        ],
        professor: "Сафронов А. А.",
      ),
      Lesson(
        name: 'Физика',
        type: 'Практика',
        classroom: 'А-107-1 (В-78)',
        groups: [
          'ЭФБО-14-88',
        ],
        professor: 'Кто-то',
      ),
      Lesson(
        name: 'Еще одна скучная пара',
        type: 'Практика',
        classroom: 'А-107-1 (В-78)',
        groups: [
          'ЭФБО-14-88',
        ],
        professor: 'Кто-то',
      ),
      null,
      null,
      null,
    ],
  ),
  WorkingDay(
    DateTime(2024, 5, 2),
    lessons: [
      Lesson(
        name: "Физика",
        type: "Лекция",
        classroom: "A-63 (МП-1)",
        groups: [
          "ЭФБО-01-23",
          "ЭФБО-02-23",
          "ЭФБО-03-23",
          "ЭФБО-04-23",
          "ЭФБО-05-23",
        ],
        professor: "Я не помню",
      ),
      Lesson(
        name: 'Физика',
        type: 'Практика',
        classroom: 'А-107-1 (В-78)',
        groups: [
          'ЭФБО-14-88',
        ],
        professor: 'Кто-то',
      ),
      Lesson(
        name: 'Еще одна скучная пара',
        type: 'Практика',
        classroom: 'А-107-1 (В-78)',
        groups: [
          'ЭФБО-14-88',
        ],
        professor: 'Кто-то',
      ),
      null,
      null,
      null,
    ],
  ),
    WorkingDay( DateTime(2024, 5, 3),
    lessons: [
      Lesson(
        name: "Физика",
        type: "Лекция",
        classroom: "A-15 (В-78)",
        groups: [
          "ЭФБО-01-23",
          "ЭФБО-02-23",
          "ЭФБО-03-23",
          "ЭФБО-04-23",
          "ЭФБО-05-23",
        ],
        professor: "Сафронов А. А.",
      ),
      Lesson(
        name: 'Физика',
        type: 'Практика',
        classroom: 'А-107-1 (В-78)',
        groups: [
          'ЭФБО-14-88',
        ],
        professor: 'Кто-то',
      ),
      Lesson(
        name: 'Еще одна скучная пара',
        type: 'Практика',
        classroom: 'А-107-1 (В-78)',
        groups: [
          'ЭФБО-14-88',
        ],
        professor: 'Кто-то',
      ),
      null,
      null,
      null,
    ],
  ),
  WorkingDay(
    DateTime(2024, 5, 30),
    lessons: [
      Lesson(
        name: 'Алгоритмы',
        type: 'Практика',
        classroom: 'A-220 (В-78)',
        groups: ['ЭФБО-01-23'],
        professor: 'Яковлев М. С.',
      ),
    ],
  ),
];
