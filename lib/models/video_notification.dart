// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VideoNotification {
  DateTime? startTime;
  DateTime? endTime;
  String? cameraName;
  String? page;

  VideoNotification({
    required this.startTime,
    required this.endTime,
    required this.cameraName,
    required this.page,
  });

  VideoNotification copyWith({
    DateTime? startTime,
    DateTime? endTime,
    String? cameraName,
    String? page,
    String? action,
  }) {
    return VideoNotification(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      cameraName: cameraName ?? this.cameraName,
      page: page ?? this.page,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'start_time': startTime?.millisecondsSinceEpoch,
      'end_time': endTime?.millisecondsSinceEpoch,
      'camera_name': cameraName,
      'page': page,
    };
  }

  factory VideoNotification.fromMap(Map<String, dynamic> map) {
    return VideoNotification(
      startTime: DateTime.parse(map['start_time'] as String),
      endTime: DateTime.parse(map['end_time'] as String),
      cameraName: map['camera_name'] as String,
      page: map['page'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoNotification.fromJson(String source) =>
      VideoNotification.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'videoNotification(start_time: $startTime, end_time: $endTime, camera_name: $cameraName, page: $page)';
  }

  @override
  bool operator ==(covariant VideoNotification other) {
    if (identical(this, other)) return true;

    return other.startTime == startTime &&
        other.endTime == endTime &&
        other.cameraName == cameraName &&
        other.page == page;
  }

  @override
  int get hashCode {
    return startTime.hashCode ^
        endTime.hashCode ^
        cameraName.hashCode ^
        page.hashCode;
  }
}
