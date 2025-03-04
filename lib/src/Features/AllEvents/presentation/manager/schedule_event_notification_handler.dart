import '../../../../Core/Services/LocalNotificationService/local_notification_service.dart';
import '../../../Event/domain/entities/event_e.dart';

class ScheduleEventNotificationHandler {
  ScheduleEventNotificationHandler._();

  static ScheduleEventNotificationHandler get instance =>
      ScheduleEventNotificationHandler._();

  scheduleNotificationsForEvents(List<EventE> events) {
    for (var event in events) {
      String eventTime = event.date;
      LocalNotificationService.scheduleNotification(
        id: int.parse(
          event.id,
        ),
        title: "Don't Miss this Notification ",
        body: event.title,
        time: eventTime,
      );
    }
  }
}
