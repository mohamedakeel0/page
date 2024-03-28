import 'dart:convert';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page/core/enums.dart';
import 'package:page/page/domain/entities/page_entity.dart';
import 'package:page/page/domain/use_cases/GetPageUseCase.dart';
import 'package:page/page/presentation/manager/page_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class MainController extends Cubit<MainState> {
  final GetPageUseCase getPageUseCase;


  MainController(
    this.getPageUseCase,

  ) : super(InitailMainState());
  static MainController get(context) => BlocProvider.of(context);
  PageEntity? pageEntity;
  RefreshController refreshController = RefreshController();
  int currentPage = 1;
  Future<void> getPage(String page,Services services) async {

    if (!isClosed) {
if(services.name== Services.NoData.name){
  currentPage = 1;
}

print('currentPage');
emit(RefreshGetPageState());
    }
    final resultCategories =
    await getPageUseCase(page).catchError((e) {
      print('ErrorGetPageState');
      if (!isClosed) {
        currentPage = 1;
        emit(ErrorGetPageState());
      }
    });
    resultCategories.fold((l) {

      if (!isClosed) {
        currentPage = 1;
        emit(ErrorGetPageState());
      }


    }, (date) {

      print('SuccesGetPageState');

      if(services.name== Services.Loading.name||services.name== Services.Refresh.name){
        date.data!.data!.forEach((element) {
          pageEntity!.data!.data!.add(element);
        });

      }else if(services.name== Services.Intial.name||services.name== Services.NoData.name){
        pageEntity = date;
      }
      currentPage++;
print(pageEntity!.data!.data!.length);
      if (!isClosed) {

        emit(SuccesGetPageState());
      }


    });
  }


}
