// write by  FoamAngel32/Cloovar in 30/6/2025

#ifndef __SFX_SYS_BY_CLOOVAR_FOAM_ANGEL_32__
#define __SFX_SYS_BY_CLOOVAR_FOAM_ANGEL_32__
#include <gb/gb.h>
uint8_t sfx_end_ch0;
uint8_t delay_sfx_sys_ch0;
uint8_t sfx_sys_index_ch0;
const uint8_t (*sfx_sys_sfx_adr_ch0)[6];
uint8_t sfx_end_ch1;
uint8_t delay_sfx_sys_ch1;
uint8_t sfx_sys_index_ch1;
const uint8_t (*sfx_sys_sfx_adr_ch1)[5];
uint8_t sfx_end_ch2;
uint8_t delay_sfx_sys_ch2;
uint8_t sfx_sys_index_ch2;
const uint8_t (*sfx_sys_sfx_adr_ch2)[6];
uint8_t sfx_end_ch3;
uint8_t delay_sfx_sys_ch3;
uint8_t sfx_sys_index_ch3;
const uint8_t (*sfx_sys_sfx_adr_ch3)[5];
void play_sfx_ch0(const uint8_t sfx_sequence[][6]) {
    sfx_sys_sfx_adr_ch0 = sfx_sequence;
    sfx_sys_index_ch0 = 0;
    delay_sfx_sys_ch0 = 0;
    sfx_end_ch0 = 0;
}
void play_sfx_ch1(const uint8_t sfx_sequence[][5]) {
    sfx_sys_sfx_adr_ch1 = sfx_sequence;
    sfx_sys_index_ch1 = 0;
    delay_sfx_sys_ch1 = 0;
    sfx_end_ch1 = 0;
}
void play_sfx_ch2(const uint8_t sfx_sequence[][6]) {
    sfx_sys_sfx_adr_ch2 = sfx_sequence;
    sfx_sys_index_ch2 = 0;
    delay_sfx_sys_ch2 = 0;
    sfx_end_ch2 = 0;
}
void play_sfx_ch3(const uint8_t sfx_sequence[][5]) {
    sfx_sys_sfx_adr_ch3 = sfx_sequence;
    sfx_sys_index_ch3 = 0;
    delay_sfx_sys_ch3 = 0;
    sfx_end_ch3 = 0;
}

void sfx_system_update() {
    if(sfx_end_ch0 == 0){
        if (delay_sfx_sys_ch0 > 0) {
            --delay_sfx_sys_ch0;
        } else {
            const uint8_t *frame = sfx_sys_sfx_adr_ch0[sfx_sys_index_ch0];
            NR10_REG = frame[0];
            NR11_REG = frame[1];
            NR12_REG = frame[2];
            NR13_REG = frame[3];
            NR14_REG = frame[4];
            delay_sfx_sys_ch0 = frame[5];

            if (delay_sfx_sys_ch0 == 0) {
                sfx_sys_sfx_adr_ch0 = NULL;
                sfx_end_ch0 = 1;
            } else {
                sfx_sys_index_ch0++;
            }
        }
    }
    if(sfx_end_ch1 == 0){
        if (delay_sfx_sys_ch1 > 0) {
            --delay_sfx_sys_ch1;
        } else {
            const uint8_t *frame = sfx_sys_sfx_adr_ch1[sfx_sys_index_ch1];
            NR21_REG = frame[0];
            NR22_REG = frame[1];
            NR23_REG = frame[2];
            NR24_REG = frame[3];
            delay_sfx_sys_ch1 = frame[4];

            if (delay_sfx_sys_ch1 == 0) {
                sfx_sys_sfx_adr_ch1 = NULL;
                sfx_end_ch1 = 1;
            } else {
                sfx_sys_index_ch1++;
            }
        }
    }
    if(sfx_end_ch2 == 0){
        if (delay_sfx_sys_ch2 > 0) {
            --delay_sfx_sys_ch2;
        } else {
            const uint8_t *frame = sfx_sys_sfx_adr_ch2[sfx_sys_index_ch2];
            NR30_REG = frame[0];
            NR31_REG = frame[1];
            NR32_REG = frame[2];
            NR33_REG = frame[3];
            NR34_REG = frame[4];
            delay_sfx_sys_ch2 = frame[5];

            if (delay_sfx_sys_ch2 == 0) {
                sfx_sys_sfx_adr_ch2 = NULL;
                sfx_end_ch2 = 1;
            } else {
                sfx_sys_index_ch2++;
            }
        }
    }
    if(sfx_end_ch3 == 0){
        if (delay_sfx_sys_ch3 > 0) {
            --delay_sfx_sys_ch3;
        } else {
            const uint8_t *frame = sfx_sys_sfx_adr_ch3[sfx_sys_index_ch3];
            NR41_REG = frame[0];
            NR42_REG = frame[1];
            NR43_REG = frame[2];
            NR44_REG = frame[3];
            delay_sfx_sys_ch3 = frame[4];

            if (delay_sfx_sys_ch3 == 0) {
                sfx_sys_sfx_adr_ch3 = NULL;
                sfx_end_ch3 = 1;
            } else {
                sfx_sys_index_ch3++;
            }
        }
    }
}
void sfx_sys_init(){
    sfx_end_ch0 = 1;
    sfx_sys_index_ch0 = 0;
    sfx_sys_index_ch0 = 0;
    sfx_end_ch1 = 1;
    sfx_sys_index_ch1 = 0;
    sfx_sys_index_ch1 = 0;
    sfx_end_ch2 = 1;
    sfx_sys_index_ch2 = 0;
    sfx_sys_index_ch2 = 0;
    sfx_end_ch3 = 1;
    sfx_sys_index_ch3 = 0;
    sfx_sys_index_ch3 = 0;
    NR52_REG = 0x80;
    NR50_REG = 0x77;
    NR51_REG = 0xFF;
}
#endif