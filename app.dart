//@dart = 2.1
import 'dart:io';
import 'dart:math';

enum Direction {
  topLeft,
  topRight,
  topCenter,
  center,
  bottomLeft,
  bottomRight,
  bottomCenter
}

void add_power(var userDirection) {
  var rng = Random();
  stdout.write("Type your shoot power (from 1 to 100) ");
  final user_p = stdin.readLineSync();
  if (_isNumeric(user_p)) {
    Direction ai_d = Direction.values[rng.nextInt(6)];
    int ai_p = rng.nextInt(101);
    if (ai_d != userDirection) {
      print(
          "You shoot in the ${enumToStr(userDirection)} with the $user_p power and ai jumped in the ${enumToStr(ai_d)} with $ai_p so you won! \n ");
    } else if (int.parse(user_p) > ai_p) {
      print(
          "You shoot in the ${enumToStr(userDirection)} with the $user_p power and ai jumped in the ${enumToStr(ai_d)} with $ai_p so you won! \n ");
    } else {
      print(
          "You shoot in the ${enumToStr(userDirection)} with the $user_p power and ai jumped in the ${enumToStr(ai_d)} with $ai_p so you lost! \n ");
    }
  } else {
    print("Invalid Power");
  }
}

String enumToStr(var input) {
  switch (input) {
    case Direction.topRight:
      return "top right";
    case Direction.topLeft:
      return "top left";
    case Direction.topCenter:
      return "top center";
    case Direction.center:
      return "center";
    case Direction.bottomLeft:
      return "bottom left";
    case Direction.bottomCenter:
      return "bottom center";
    case Direction.bottomRight:
      return "bottom right";
  }
}

bool _isNumeric(String str) {
  if (str == null) {
    return false;
  } else if (double.tryParse(str) != null && int.parse(str) >= 1) {
    return true;
  } else {
    return false;
  }
}

void main() {
  while (true) {
    stdout.write(
        "Choose your direction (Top left => TL, Top right => TR, Top center => TC, Center => C, Bottom left => BL, Bottom right => BR, Bottom center => BC ) ");
    final user_d = stdin.readLineSync().toUpperCase();
    Direction user_direction;

    if (user_d == "a") {}

    if (user_d == "Q") {
      break;
    } else {
      switch (user_d) {
        case "TL":
          user_direction = Direction.topLeft;
          add_power(user_direction);
          break;
        case "TR":
          user_direction = Direction.topRight;
          add_power(user_direction);

          break;
        case "TC":
          user_direction = Direction.topCenter;
          add_power(user_direction);

          break;
        case "BL":
          user_direction = Direction.bottomLeft;
          add_power(user_direction);

          break;
        case "BC":
          user_direction = Direction.bottomCenter;
          add_power(user_direction);

          break;
        case "BR":
          user_direction = Direction.bottomRight;
          add_power(user_direction);

          break;

        case "C":
          user_direction = Direction.center;
          add_power(user_direction);

          break;
        default:
          print("Invalid input");
      }
    }
  }
}
