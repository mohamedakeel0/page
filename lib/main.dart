import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page/core/component/MyCustomFooter.dart';
import 'package:page/core/enums.dart';
import 'package:page/core/network/dio_helper.dart';
import 'package:page/core/services/services_locator.dart';
import 'package:page/page/presentation/manager/page_cubic.dart';
import 'package:page/page/presentation/manager/page_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'page/presentation/pages/my_home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>
    sl<MainController>()..getPage('1',Services.Intial)),


      ],
      child: BlocConsumer<MainController,MainState>(listener: (context, state) {

      },builder: (context, state) {
        List colors=[
          Colors.blue,
          Colors.yellowAccent,
          Colors.red,
          Colors.black,

        ];

       var cubic = MainController.get(context);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a purple toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).
            //
            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            //
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: false,
          ),
          home:cubic.pageEntity!=null? Scaffold(appBar: AppBar(),
            body: SmartRefresher(
                enablePullUp: true,
                enablePullDown: true,
                controller:  cubic.refreshController,
                onRefresh: () {
                if (cubic.pageEntity!.data!.nextPageUrl!=null) {
                  cubic.getPage("${cubic.currentPage}",Services.Refresh);}
                print('object1');
                print('object1${cubic.currentPage}');
                },
                onLoading: () {

                  if (cubic.pageEntity!.data!.nextPageUrl!=null) {
                    print('object2');
                    cubic.getPage("${cubic.currentPage}",Services.Loading);
                  }
                },
                header: WaterDropMaterialHeader(),
                footer: MyCustomFooter(),
                child: CustomScrollView(slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.yellow,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children:cubic.pageEntity!.data!.data!.map<Widget>(
                              (item) {

                            return HomePage(color: colors[cubic.currentPage],);
                          },
                        ).toList(),
                      ),
                    ),
                  )
                ])),
          ):Center(child: CircularProgressIndicator(),),
        );
      },)
    );

  }

}


