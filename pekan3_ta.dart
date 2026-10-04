class SensorUdara {
  String lokasi;
  int indeksAQI;
  String statusKualitas = "Belum dianalisis";

  
  SensorUdara.data({
    required this.lokasi,
    required this.indeksAQI,
  });

  void analisisUdara() {
    if (indeksAQI <= 50) {
      statusKualitas = "Udara Bersih";
    } else {
      statusKualitas = "Polusi, Wajib Masker!";
    }
  }

  void cetakLaporan() {
    print(
      "Lokasi: $lokasi | AQI: $indeksAQI | Status: $statusKualitas",
    );
  }
}

void main() {
  List<SensorUdara> daftarSensor = [];

  daftarSensor.add(
    SensorUdara.data(
      lokasi: "Alun-Alun Bandung",
      indeksAQI: 85,
    ),
  );

  daftarSensor.add(
    SensorUdara.data(
      lokasi: "Dago Car Free Day",
      indeksAQI: 30,
    ),
  );

  daftarSensor.add(
    SensorUdara.data(
      lokasi: "Pasar Gedebage",
      indeksAQI: 120,
    ),
  );

  print("=== LAPORAN KUALITAS UDARA KOTA BANDUNG ===");

  for (SensorUdara sensor in daftarSensor) {
    sensor.analisisUdara();
    sensor.cetakLaporan();
  }
}