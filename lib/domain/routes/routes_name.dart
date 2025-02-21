class RoutesName {
  static final RoutesName _routesName = RoutesName._internal();

  

  static const String splash =  "/";
  static const String home = "/home";
  
  factory RoutesName() {
    return _routesName;
  }
  
  RoutesName._internal();

}