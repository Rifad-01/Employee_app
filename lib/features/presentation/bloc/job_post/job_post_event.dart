part of 'job_post_bloc.dart';

@freezed
abstract class JobPostEvent with _$JobPostEvent {
  const factory JobPostEvent.adding({
    required String name,
    required String job
  }) = Adding;
}
