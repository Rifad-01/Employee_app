part of 'job_post_bloc.dart';

@freezed
abstract class JobPostState with _$JobPostState {
  const factory JobPostState.initial() = Initial;
  const factory JobPostState.loading() = Loading;
  const factory JobPostState.errorState(Failure failure) = ErrorState;
  const factory JobPostState.success(String jobPost) = Success;
}
