import 'package:equatable/equatable.dart';

class OrganizerMiniE extends Equatable {
  final String id;
  final String name;
  final String picture;

  const OrganizerMiniE(
      {required this.id, required this.name, required this.picture});

  @override
  List<Object?> get props => [id, name, picture];
}
