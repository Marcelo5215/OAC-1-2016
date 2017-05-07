#include <iostream>
#include <cstring>
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

  //Não ecreve arquivo texto
  writetxt = 0;

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
  for (unsigned int i = DATA_START; i <= MEM_SIZE*4 ; i+=4) {
    if (textf.eof()) {
      break;
    }
    int32_t  buffer =  0;
    dataf.read((char*)&buffer, sizeof(int32_t));

    mem[i/4] = buffer;
  }

  if(*(mode).c_str() == 'p'){
      int menu = 0;

      while (menu != 5) {
          std::cout << "\n\n";

          std::cout << "Defina o numero funcao desejada:\n";
          std::cout << "1. step\n";
          std::cout << "* ***************************************** *\n";
          std::cout << "*  step() => fetch(), decode(), execute()   *\n";
          std::cout << "* ***************************************** *\n";
          std::cout << "2. run\n";
          std::cout << "* ************************************************************** *\n";
          std::cout << "*  Essa função executa o programa até encontrar uma chamada de   *\n";
          std::cout << "*  sistema para encerramento, ou até o pc ultrapassar o limite   *\n";
          std::cout << "*  do segmento de código (2k words).                             *\n";
          std::cout << "* ************************************************************** *\n";
          std::cout << "3. dump_mem\n";
          std::cout << "* ************************************************************ *\n";
          std::cout << "*  Imprime o conteudo da memoria a partir do endereco start    *\n";
          std::cout << "*  ate o endereco end, em hexadecimal (format = h), ou         *\n";
          std::cout << "*  decimal (format = d).                                       *\n";
          std::cout << "* ************************************************************ *\n";
          std::cout << "4. dump_reg\n";
          std::cout << "* **************************************************************** *\n";
          std::cout << "*  Essa	 função imprime o conteúdo dos registradores do MIPS,      *\n";
          std::cout << "*  incluindo o banco de registradores e os registradores pc, hi e  *\n";
          std::cout << "*  lo. O formato pode ser em hexa (‘h’) ou decimal (‘d’).          *\n";
          std::cout << "* **************************************************************** *\n";
          std::cout << "5. exit\n";

          std::cin >> menu;
          std::cout << "\n\n";

          switch (menu) {
               case 1:
                   step();
                   break;
               case 2:
                   run();
                   break;
               case 3:
                   char formato;
                   int start, end;

                   std::cout << "Qual formato de saida deseja? (d - decimal / h - hexadecimal)" << '\n';
                   std::cin >> formato;
                   std::cout << "Por qual endereco deseja comecar? (0 - 4096)" << '\n';
                   std::cin >> start;
                   std::cout << "Ate onde?" << '\n';
                   std::cin >> end;

                   dump_mem(start,end,formato);
                   break;
               case 4:
                   char format;

                   std::cout << "Qual formato de saida deseja? (d - decimal / h - hexadecimal)" << '\n';
                   std::cin >> format;

                   dump_reg(format);
                   break;
               case 5:
                   break;
               default:
                   std::cout << "Opcao fora do menu! Escolha novamente." << '\n';
          }

      }

  }else{
      //Escreve arquivo texto
      writetxt = 1;
      run();
      dump_mem(TEXT_START, TEXT_END, 'h');
      dump_reg('h');
  }

  return 0;
}
