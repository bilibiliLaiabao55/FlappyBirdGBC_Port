#include "bird/0/b0.c"
#include "bird/0/b0.h"
#include "bird/0/ba32.c"
#include "bird/0/ba32.h"
#include "bird/0/ba64.c"
#include "bird/0/ba64.h"
#include "bird/0/bu32.c"
#include "bird/0/bu32.h"
#include "bird/0/bu64.c"
#include "bird/0/bu64.h"

#include "bird/1/b0.c"
#include "bird/1/b0.h"
#include "bird/1/ba32.c"
#include "bird/1/ba32.h"
#include "bird/1/ba64.c"
#include "bird/1/ba64.h"
#include "bird/1/bu32.c"
#include "bird/1/bu32.h"
#include "bird/1/bu64.c"
#include "bird/1/bu64.h"

#include "bird/2/b0.c"
#include "bird/2/b0.h"
#include "bird/2/ba32.c"
#include "bird/2/ba32.h"
#include "bird/2/ba64.c"
#include "bird/2/ba64.h"
#include "bird/2/bu32.c"
#include "bird/2/bu32.h"
#include "bird/2/bu64.c"
#include "bird/2/bu64.h"
const uint8_t* b0_tiles_s[]={b00_tiles, ba320_tiles, ba640_tiles, bu320_tiles, bu640_tiles};
const uint8_t* b1_tiles_s[]={b01_tiles, ba321_tiles, ba641_tiles, bu321_tiles, bu641_tiles};
const uint8_t* b2_tiles_s[]={b02_tiles, ba322_tiles, ba642_tiles, bu322_tiles, bu642_tiles};
const uint8_t** bird_tiles[] = {
	b0_tiles_s, 
	b1_tiles_s, 
	b2_tiles_s, 
	b1_tiles_s, 
};