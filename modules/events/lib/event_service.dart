import 'dart:convert';

import 'package:events/event.dart';
import 'package:events/event_type.dart';
import 'package:injectable/injectable.dart';

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
      String tempEvent = utf8Message.substring(0, utf8Message.indexOf("end"));
      utf8Message = utf8Message.replaceFirst(tempEvent, "");
      utf8Message = utf8Message.replaceFirst("end", "");
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
