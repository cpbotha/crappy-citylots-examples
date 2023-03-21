/* 
cc -O3 -o parse_lots_c parse_lots.c yyjson.c
/usr/bin/time -l ./parse_lots_c
*/
#include <stdio.h>
#include <stdlib.h>
#include "yyjson.h"

char* read_file(const char* filename) {
  FILE* file = fopen(filename, "r");

  fseek(file, 0, SEEK_END);
  long file_size = ftell(file);
  fseek(file, 0, SEEK_SET);

  char* file_contents = (char*) malloc(file_size + 1);

  fread(file_contents, 1, file_size, file);
  fclose(file);

  file_contents[file_size] = '\0';
  return file_contents;
}

int main() {
  char* file_contents = read_file("citylots.json");

  yyjson_doc *doc = yyjson_read(file_contents, strlen(file_contents), 0);
  yyjson_val *root = yyjson_doc_get_root(doc);

  free(file_contents);
  return 0;
}
