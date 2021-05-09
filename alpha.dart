import 'dart:io';

void main() {
  int i, j, k, n = 6, l, m;
//printting I and T
  print("");
  for (k = 1; k <= n; k++) {
    stdout.write(" *");
  }
  stdout.write(" " * 4);
  for (k = 1; k <= n; k++) {
    stdout.write(" *");
  }
  print("");
  for (i = 1; i <= n; i++) {
    for (j = 1; j <= 3; j++) {
      stdout.write(" " * 2);
    }
    for (k = i; k <= i; k++) {
      stdout.write("*");
    }
    for (j = 1; j <= 3; j++) {
      stdout.write(" " * 5);
    }
    for (k = i; k <= i; k++) {
      stdout.write("*");
    }
    print("");
  }
  stdout.write("    " * 4);
  for (k = 1; k <= n; k++) {
    stdout.write(" *");
  }
  print("");
  print("_______________________________");
  print("");
  //printing L and O
  for (k = 1; k <= n - 1; k++) {
    stdout.write(" *");
  }
  for (i = 1; i <= n; i++) {
    for (j = i; j <= i; j++) {
      stdout.write("*");
    }
    for (k = i; k <= i; k++) {
      stdout.write("  " * 4);
      stdout.write(" *");
    }
    for (l = i; l <= i; l++) {
      stdout.write(" " * 4);
      stdout.write(" *");
    }

    print("");
  }
  for (k = 1; k <= n - 1; k++) {
    stdout.write(" *");
  }
  stdout.write(" " * 5);
  for (k = 1; k <= n - 1; k++) {
    stdout.write(" *");
  }
  print("");
  print("_________________________");
  print("");
//printing V
  for (i = 1; i <= n; i++) {
    for (j = 1; j <= i; j++) {
      stdout.write(" ");
    }
    for (k = i; k <= i; k++) {
      stdout.write("*");
    }
    for (j = n; j >= i; j--) {
      stdout.write(" " * 2);
    }
    for (k = i; k <= i; k++) {
      stdout.write("*");
    }
    print("");
  }
  print("");
  print("_________________________");
  print("");
//printing n

  for (i = 1; i <= n; i++) {
    for (l = i; l <= i; l++) {
      stdout.write("*");
    }

    for (j = 1; j <= i; j++) {
      stdout.write(" ");
    }
    for (k = i; k <= i; k++) {
      stdout.write("*");
    }
    for (j = n; j >= i; j--) {
      stdout.write(" ");
    }
    for (m = i; m <= i; m++) {
      stdout.write("*");
    }
    print("");
  }
}
