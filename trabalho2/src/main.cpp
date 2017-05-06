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

  //lendo o arquivo para a memoria do mips
  textf.open(argv[1], ios::in|ios::binary);
  dataf.open(argv[2], ios::in|ios::binary);

  //lendo o arquivo de text
  for (unsigned int i = TEXT_START; i <= TEXT_END ; i+=4) {
    if (textf.eof()) {
      break;
    }
    int32_t  buffer =  0;
    textf.read((char*)&buffer, sizeof(int32_t));

    mem[i/4] = buffer;
  }
  //lendo o arquivo de dados
  for (unsigned int i = DATA_START; i < MEM_SIZE*4 ; i+=4) {
    if (textf.eof()) {
      break;
    }
    int32_t  buffer =  0;
    textf.read((char*)&buffer, sizeof(int32_t));

    mem[i/4] = buffer;
  }

  run();
  dump_mem(TEXT_START, TEXT_END, 'h');
  dump_reg('d');


  return 0;
}
