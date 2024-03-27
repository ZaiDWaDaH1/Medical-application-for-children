import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({
    super.key,
    required this.exercise,
    required this.subExercise,
    required this.icon,
    required this.color,
  });

  final String exercise;
  final String subExercise;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: color,
                    ),
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercise,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        subExercise,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 159, 181, 204),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.bookmark_sharp,
                size: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ExerciseTile2 extends StatelessWidget {
  const ExerciseTile2({
    super.key,
    required this.exercise2,
    required this.subExercise2,
    required this.icon2,
    required this.color2,
  });

  final String exercise2;
  final String subExercise2;
  final IconData icon2;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: color2,
                    ),
                    child: Icon(
                      icon2,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercise2,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        subExercise2,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 159, 181, 204),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.face_retouching_natural,
                size: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
