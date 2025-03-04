import 'package:flutter_base/src/Features/AllEvents/presentation/manager/schedule_event_notification_handler.dart';
import '../../../../Core/Services/Storage/src/Resources/Hive/hive_storage_imp.dart';
import '../../../../Core/Services/Storage/src/storage_constants.dart';
import '../../../../Core/Utils/general_utils.dart';
import '../../../Event/data/models/event_model.dart';
import '../../../Event/domain/entities/event_e.dart';

class CacheEventHandler {
  CacheEventHandler._();

  static CacheEventHandler get instance => CacheEventHandler._();
  List<EventE> cashedEvents = [];

  Future<List<EventE>> getCashEvents() async {
    printDM("Fetching cached events...");
    List<EventE> cachedData = await LocalStorageService().getList<EventE>(
      key: stgEvents,
      fromMap: (data) => EventModel.fromJson(data),
      boxName: StgBoxName,
    );

    cashedEvents = cachedData.toSet().toList();

    if (cashedEvents.isNotEmpty) {
      printDM("Cached events loaded: ${cashedEvents.length}");

      // ScheduleEventNotificationHandler.instance
      //     .scheduleNotificationsForEvents(cashedEvents);
    } else {
      printDM("No cached events found.");
    }
    return cachedData.toSet().toList();
  }

  saveToCache(List<EventE> events) {
    LocalStorageService()
        .saveList<EventE>(
            data: events,
            toMap: (e) => e.toMap(),
            key: stgEvents,
            boxName: StgBoxName)
        .then((v) {
      printDM(" reham schedule notification after saving");
      ScheduleEventNotificationHandler.instance
          .scheduleNotificationsForEvents(events);
    });
  }
}
