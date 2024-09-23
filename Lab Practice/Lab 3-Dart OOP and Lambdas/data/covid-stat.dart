class CovidStat {
  late final int totalCases;
  late final int totalDeatheas;
  late final int newDeaths;
  late final int totalReciverd;
  late final int newRecovered;
  late final int activeCases;
  late final int population;

  CovidStat({required totalCases, required this.totalDeatheas,required this.newDeaths,required this.totalReciverd, required this.newRecovered,required this.activeCases, required this.population});


  Map<String,dynamic> fromJson={}
}
