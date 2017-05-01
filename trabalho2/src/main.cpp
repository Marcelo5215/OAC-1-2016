#include <iostream>
#define EXTERN
#include "mips.hpp"

using namespace std;

int main(int argc, char const *argv[]) {

  if (argc < 4) {
    cout << "Argumentos Faltando: ./main <arg1> <arg2> <arg3>" << endl;
    return -1;
  }

  textf_name.assign(argv[1], strlen(argv[1]));
  dataf_name.assign(argv[2], strlen(argv[2]));
  string mode(argv[3]);

  cout << mode << endl;
  run();

  return 0;
}
