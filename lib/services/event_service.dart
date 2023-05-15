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

  Event getEvent({required String utf8Message}) {
    for (var element in EventType.values) {
      final result = _tryParse(utf8Message: utf8Message, type: element.name);
      if (result != null) {
        return element.fromJson(result);
      }
    }
    throw Exception("No event found for message:\n$utf8Message");
  }
}
