void main() {
  for (var i = 1; i <= 10; i++) {
    print("Multiplication table for $i");

    for (var j = 1; j <= 10; j++) {
      var result = i * j;
      print("$i * $j = $result");
    }
    print("");
  }
}