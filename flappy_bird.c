#include <gb/gb.h>
#include <gb/metasprites.h>
#include <rand.h>
#include <gb/cgb.h>
#include "hUGEDriver/hUGEDriver.h"
#include "music.c"
#include "bgs/pipes.c"
#include "bgs/pipes.h"
#include "bgs/bg.c"
#include "bgs/bg.h"
#include "bgs/title.c"
#include "bgs/title.h" 
#include "bird.h"
#include "sfx.c"
#define BIRD_X 30
//   NR10  NR11  NR12  NR13  NR14  D
//   NR10  NR11  NR12  NR13  NR14  D
const unsigned char sfx_jump[][6] = {
    {0x27, 0x83, 0xF1, 0x40, 0x86, 0}
};
//   NR21  NR22  NR23  NR24  D
const unsigned char sfx_pause[][5] = {
    {0x41, 0xF1, 0xD6, 0xC6, 5},
    {0x41, 0xF1, 0x1C, 0xC7, 5},
    {0x41, 0xF1, 0xD6, 0xC6, 5},
    {0x41, 0xF1, 0x1C, 0xC7, 5},
    {0x41, 0xF1, 0xD6, 0xC6, 0},
};
UWORD seed;
uint8_t gravity;
uint8_t cgb_enable;
uint8_t bird_flap_wing;
uint8_t bird_frame;
uint8_t bird_frame_delay;
uint8_t scroll_x;
uint8_t temp0;
joypads_t joypad_t_val;

uint8_t joypad_state;
uint8_t joypad_state_last;
uint8_t pause_sub_state;
uint8_t touched;
uint8_t state;
uint8_t bird_y;
int8_t drop_speed;
int8_t drop_speed_sub;
uint8_t flip_or_not;
void main(void)
{
    hUGE_init(&music_which_is_not_i_made);
    cgb_enable = 0;
    NR52_REG = 0x80;
    NR50_REG = 0xFF;
    NR51_REG = 0xFF;
    // disable_interrupts();
    // disable_interrupts();
    add_VBL(sfx_system_update);
    add_VBL(hUGE_dosound);
    enable_interrupts();
    cgb_compatibility();
    wait_vbl_done();
    sfx_sys_init();
    wait_vbl_done();
    if (_cpu == CGB_TYPE)
    {
        cpu_fast();
        cgb_enable = 1;
        set_bkg_palette(0, bg_PALETTE_COUNT, bg_palettes);
        set_sprite_palette(0, b00_PALETTE_COUNT, b00_palettes);
        set_sprite_palette(1, title_PALETTE_COUNT, title_palettes);
    }
    SPRITES_8x16;
    set_bkg_data(0, bg_TILE_COUNT, bg_tiles);
    set_bkg_data(bg_TILE_COUNT, pipes_TILE_COUNT, pipes_tiles);
    for (temp0 = 0; temp0 < 5; ++temp0)
        set_sprite_data(temp0 * 4, 4, bird_tiles[1][temp0]);
    set_bkg_tiles(0, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
    set_bkg_tiles(bg_WIDTH / 8, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
    set_sprite_data(20, title_TILE_COUNT, title_tiles);
    bird_y = 90;
    move_metasprite_ex(b00_metasprite0, 0, 0, 0, BIRD_X, 90);
    move_metasprite_ex(title_metasprite0, 20, 1, 2, 88, 90);
    state = 0;
    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;
    joypad_init(1, &joypad_t_val);
    bird_flap_wing = 1;
    seed |= (UWORD)DIV_REG << 8;
    initarand(seed);
    wait_vbl_done();
    while (1)
    {
        joypad_state = joypad();
        if (gravity == 1)
        {
            ++drop_speed_sub;
            if (drop_speed_sub >= 5)
            {
                drop_speed_sub = 0;
                ++drop_speed;
            }
            else if (drop_speed_sub <= -5)
            {
                drop_speed_sub = 0;
                --drop_speed;
            }
            if ((drop_speed >= 3) && (drop_speed <= -3))
            {
                if (drop_speed < 0)
                    drop_speed = -3;
                else if (drop_speed > 0)
                    drop_speed = 3;
            }
            bird_y += drop_speed;
            if ((drop_speed <= -2) && (drop_speed_sub <= -1))
                move_metasprite_ex(b00_metasprite0, 8, 0, 0, BIRD_X, bird_y);
            else if (drop_speed <= -2)
                move_metasprite_ex(b00_metasprite0, 4, 0, 0, BIRD_X, bird_y);
            else if ((drop_speed >= 2) && (drop_speed_sub >= 1))
                move_metasprite_ex(b00_metasprite0, 16, 0, 0, BIRD_X, bird_y);
            else if (drop_speed >= 2)
                move_metasprite_ex(b00_metasprite0, 12, 0, 0, BIRD_X, bird_y);
            else if ((drop_speed < 1) && (drop_speed > -1))
                move_metasprite_ex(b00_metasprite0, 0, 0, 0, BIRD_X, bird_y);
        }
        if ((cgb_enable == 1) && (bird_flap_wing == 1))
        {
            if (bird_frame_delay >= 5)
            {
                ++bird_frame;
                bird_frame_delay = 0;
                if (bird_frame >= 4)
                    bird_frame = 0;
            }
            else
                bird_frame_delay++;
            for (temp0 = 0; temp0 < 5; ++temp0)
                set_sprite_data(temp0 * 4, 4, bird_tiles[bird_frame][temp0]);
        }
        if (state == 0)
        {
            gravity = 0;
            move_metasprite_ex(title_metasprite0, 20, 1, 2, 88, 90);
            hUGE_mute_channel(HT_CH3, HT_CH_MUTE);
            hUGE_mute_channel(HT_CH4, HT_CH_MUTE);
            if (joypad_state & J_A)
            {
                hUGE_mute_channel(HT_CH3, HT_CH_PLAY);
                hUGE_mute_channel(HT_CH4, HT_CH_PLAY);
                
                gravity = 1;
                state = 1;
                drop_speed = -2;
                drop_speed_sub = -1;
                move_metasprite_ex(title_metasprite0, 20, 1, 2, 0, 0);
            }
            ++scroll_x;
            move_bkg(scroll_x, 0);
        }
        else if (state == 1)
        {
            if ((joypad_state & J_A) && (!(joypad_state_last & J_A)))
            {
                play_sfx_ch0(sfx_jump);
                drop_speed = -2;
                drop_speed_sub = -1;
            }
            if (joypad_state & J_START)
            {
                play_sfx_ch1(sfx_pause);
                hUGE_mute_channel(HT_CH1, HT_CH_MUTE);
                hUGE_mute_channel(HT_CH2, HT_CH_MUTE);
                hUGE_mute_channel(HT_CH3, HT_CH_MUTE);
                hUGE_mute_channel(HT_CH4, HT_CH_MUTE);
                delay(20);
                waitpadup();
                waitpad(J_START);
                waitpadup();
                hUGE_mute_channel(HT_CH1, HT_CH_PLAY);
                hUGE_mute_channel(HT_CH2, HT_CH_PLAY);
                hUGE_mute_channel(HT_CH3, HT_CH_PLAY);
                hUGE_mute_channel(HT_CH4, HT_CH_PLAY);
            }
            if ((bird_y >= 137) || (bird_y <= 20))
            {
                bird_flap_wing = 0;
                state = 2;
            }
            if ((scroll_x - 48) % 64 == 0)
            {
                set_bkg_tiles((scroll_x >> 3) - 2, 0, 2, 17, pipes_map + (rand() % 5) * 2);
            }
            touched = get_vram_byte(get_bkg_xy_addr((BIRD_X + scroll_x) >> 3,( bird_y >> 3) - 2));
            if ((touched >= 0x4D) && (touched != 0x53))
                state = 2;
            ++scroll_x;
            move_bkg(scroll_x, 0);
        }
        else if (state == 2)
        {
            hUGE_mute_channel(HT_CH3, HT_CH_MUTE);
            hUGE_mute_channel(HT_CH4, HT_CH_MUTE);
            if ((joypad_state & J_START) && (!(joypad_state_last & J_START)))
            {
                scroll_x = 0;
                move_bkg(0, 0);
                set_bkg_tiles(0, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
                set_bkg_tiles(bg_WIDTH / 8, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
                bird_flap_wing = 1;
                state = 0;
                drop_speed = 0;
                drop_speed_sub = 0;
                bird_y = 90;
                wait_vbl_done();
            }
            if (!(bird_y >= 137))
            {
                gravity = 1;
                bird_flap_wing = 1;
            }
            else
            {
                bird_flap_wing = 0;
                gravity = 0;
                bird_y = 137;
            }
        }
        joypad_state_last = joypad_state;
        wait_vbl_done();
    }
}