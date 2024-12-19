class PrayTime {
  String prayTime;
  String prayName;
  int index;
  PrayTime(
      {required this.prayName, required this.prayTime, required this.index});

  static int get length => prayNames.length;

  static PrayTime getPrayTime(int index) {
    return PrayTime(
        prayName: prayNames[index], prayTime: prayTimes[index], index: index);
  }

  static List<String> prayNames = [
    'Fajr',
    'Sunrise',
    'Dhuhr',
    'Asr',
    'Maghrib',
    'Ishaa',
  ];
  static List<String> prayTimes = [
    '05:14',
    '06:47',
    '11:51',
    '02:38',
    '04:56',
    '06:20',
  ];
}
