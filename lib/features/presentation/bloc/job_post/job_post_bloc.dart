import 'package:bloc/bloc.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/usecases/job_post_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_post_event.dart';
part 'job_post_state.dart';
part 'job_post_bloc.freezed.dart';

class JobPostBloc extends Bloc<JobPostEvent, JobPostState> {
  final JobPostUsecase _usecase;
  JobPostBloc(this._usecase) : super(const Initial()) {
    on<Adding>(_handleJobPost);
  }

  Future<void> _handleJobPost(Adding event, Emitter<JobPostState> emit) async {
    emit(JobPostState.loading());
    final result = await _usecase.jobPost(name: event.name, job: event.job);
    result.fold(
      (e) {
        print("Failed...");
        emit(JobPostState.errorState(e));
      },
      (jobs) {
        print("Success...");
        emit(JobPostState.success(jobs));
      },
    );
  }
}
