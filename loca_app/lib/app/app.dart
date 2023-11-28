
import 'package:loca_app/Screens/Homescreen/homeView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';


@StackedApp(routes: 
[
MaterialRoute(page: Homeview, initial: true)
],
dependencies: [
  Singleton(classType: NavigationService)
])
class app{}