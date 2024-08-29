enum ComplainType {
  vehicleNotClean,
  vehicleArrivedLate,
  vehicleHasMechanicalFault,
}

String getComplainTypeString(ComplainType type) {
  switch (type) {
    case ComplainType.vehicleNotClean:
      return 'Vehicle not clean';
    case ComplainType.vehicleArrivedLate:
      return 'Vehicle arrived late';
    case ComplainType.vehicleHasMechanicalFault:
      return 'Vehicle has mechanical fault';
    default:
      return '';
  }
}

class Complain {
  final String uuid;
  final ComplainType type;
  final String description;
  final DateTime time;

  Complain({
    required this.uuid,
    required this.type,
    required this.description,
    required this.time,
  });

  // CopyWith method
  Complain copyWith({
    String? uuid,
    ComplainType? type,
    String? description,
    DateTime? time,
  }) {
    return Complain(
      uuid: uuid ?? this.uuid,
      type: type ?? this.type,
      description: description ?? this.description,
      time: time ?? this.time,
    );
  }

  // From JSON
  factory Complain.fromJson(Map<String, dynamic> json) {
    return Complain(
      uuid: json['uuid'],
      type: ComplainType.values[json['type']],
      description: json['description'],
      time: DateTime.parse(json['time']),
    );
  }

  // To JSON
  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'type': type.index, // Storing enum as int
      'description': description,
      'time': time.toIso8601String(),
    };
  }
}
