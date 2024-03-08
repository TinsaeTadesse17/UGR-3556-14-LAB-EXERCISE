import 'dart:io';

void main() {
  const int speedOfLight = 299792458; 
  double distance = 0.0;

  stdout.write('Enter the distance in meters: ');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    try {
      distance = double.parse(input);
      if (distance >= 0) {
        double time = distance / speedOfLight;
        print('Time taken for light to travel $distance meters is $time seconds.');
      } else {
        print('Distance cannot be negative.');
      }
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('No input provided.');
  }
}
