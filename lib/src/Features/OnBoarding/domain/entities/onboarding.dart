import 'package:equatable/equatable.dart';

class OnBoarding with EquatableMixin {
    String? imageUrl;
    String? title;
    String? body;

      OnBoarding({
    this.imageUrl,
    this.body,
    this.title,
  });

  @override
  bool? get stringify => true;
  @override
  List<Object?> get props => [imageUrl,body,title];
}

