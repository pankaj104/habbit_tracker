import 'dart:collection';

import 'package:habbit_tracker/habbitData.dart';
import 'package:sqflite/sqflite.dart';

import 'habit.dart';

class HabbitModel {
  late Database db;
  Future<List<Habit>> getAllHabits() async {
    final List<Map<String, dynamic>> habits =
        await db.query("habits", orderBy: "position");
    List<Habit> result = [];

    await Future.forEach(habits, (hab) async {
      int id = hab["id"];
      SplayTreeMap<DateTime, List> eventsMap = SplayTreeMap<DateTime, List>();
      await db.query("events", where: "id = $id").then((events) {
        // if (events != null) {
        //   events.forEach((event) {
        //     eventsMap[DateTime.parse(event["dateTime"])] = [
        //       DayType.values[event["dayType"]],
        //       event["comment"]
        //     ];
        //   });
        // }
        result.add(
          Habit(
            habitData: HabitData(
              id: id,
              // position: hab["position"],
              title: hab["title"],
            ),
          ),
        );
        print(result);
      });
    });

    return result;
  }
}
