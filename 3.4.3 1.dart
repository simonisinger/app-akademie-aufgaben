void main() {
  List<Map<String, double?>> weatherData = [
    {
      'temp': 5.3,
      'rain': 0.9,
      'wind': null,
    },
    {
      'temp': 4.5,
      'rain': null,
      'wind': 16.8
    },
    {
      'temp': null,
      'rain': 3.8,
      'wind': null
    }
  ];

  Map<String, List<double>> data = {};
  for (Map<String, double?> singleWeatherData in weatherData) {
    for (String key in singleWeatherData.keys) {
      if (singleWeatherData[key] != null) {
        String dataKey = key + 's';
        if (!data.containsKey(key)) {
          data[dataKey] = [];
        }
        data[dataKey]?.add(singleWeatherData[key]!);
      }
    }
  }

  Map<String, double> avgData = data.map((key, data) {
    double avgValue = data
        .cast<double>()
        .reduce((a, b) => a + b) / weatherData.length;
    return MapEntry(key, avgValue);
  });

  print(avgData.toString().replaceAll(RegExp('[{}]'), ''));
}