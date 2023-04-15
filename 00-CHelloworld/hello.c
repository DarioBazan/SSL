#include <stdio.h>

int main() {
  FILE *salida = fopen("output.txt", "w");
  if (salida == NULL) {
    printf("Error al abrir el archivo de salida");
    return 1;
  }

  fprintf(salida, "Hello, World!");
  fclose(salida);
  return 0;
}


