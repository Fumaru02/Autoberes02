class PageVehicle {
  final String nameTipe,
      brand,
      modelType,
      fuel,
      transmission,
      color,
      plateNumber;
  final int year;
  PageVehicle(this.nameTipe, this.color, this.brand, this.fuel, this.modelType,
      this.plateNumber, this.transmission, this.year);
}

List<PageVehicle> pageVehicleList = [
  PageVehicle("New Avanza", "Brown", "Toyota", "Gasoline", "MPV", "B 2453 UBD",
      "Automatic", 2019),
  PageVehicle("New Vario", "White", "Honda", "Gasoline", "MPV", "B 2453 UBD",
      "Automatic", 2015),
];
