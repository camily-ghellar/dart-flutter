void main() {
  List<num> celcius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for (int i = 0; i < 8; i++) {
    num fahrenheit = 1.8 * celcius[i] + 32;
    num kelvin = 273 + celcius[i];
    print("Celcius: ${celcius[i]}, fahrenheit: $fahrenheit, kelvin: $kelvin");
  }
}
