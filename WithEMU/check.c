/* Based on https://github.com/TheCodeman/Nabu_PC */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
   if( argc == 2 ) {
      printf("Patching file %s\n", argv[1]);
   }
   else {
      printf("Filename expected...\n");
	  exit(1);
   }

	FILE *fp;
	uint16_t check=0;
	uint16_t index=0;
	uint8_t c=0;
	uint16_t sz;
	
   fp=fopen(argv[1],"rb+");
   fseek(fp, 0L, SEEK_END);
   sz = ftell(fp);
   rewind(fp);
   
   if(sz < 4097) {
	   sz = 4096;
   }
   else { 
	   sz = 8192;
   }
   
    printf("Filesize is %u \n\r",sz);
   
	if(fp!=NULL) {
		printf("starting\n\r");
		for(index=0;index<(sz-2);index++){
			fread(&c, 1,1, fp);
			check+=c;
		}
	printf("Checksum value: %04x\n\r",check);
	printf("Index value: %04x\n\r",index);
	}
	fseek(fp, ftell(fp), SEEK_SET);
	c=check&0x00ff;
	fwrite(&c, 1, 1, fp);
	c=(check>>8);
	fwrite(&c, 1, 1, fp);
	fclose(fp);
	printf("File %s patched\n", argv[1]);
}
