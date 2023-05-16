import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:space_arena/coordinator/events/event_type.dart';

import '../coordinator/events/event.dart';

@injectable
class EventService {
  Map<String, dynamic>? _tryParse({required String utf8Message, required String type}) {
    if (utf8Message.startsWith(type)) {
      return jsonDecode(utf8Message.substring(type.length));
    }
    return null;
  }

  List<Event> getEvents({required String utf8Message}) {
    final List<Event> res = [];
    while (utf8Message.isNotEmpty) {
      String tempEvent = utf8Message.substring(0, utf8Message.indexOf("}") + 1);
      utf8Message = utf8Message.replaceFirst(tempEvent, "");
      for (var element in EventType.values) {
        final result = _tryParse(utf8Message: tempEvent, type: element.name);
        if (result != null) {
          res.add(element.fromJson(result));
        }
      }
    }
    if (res.isEmpty) {
      throw Exception("No event found for message:\n$utf8Message");
    }
    return res;
  }
}
