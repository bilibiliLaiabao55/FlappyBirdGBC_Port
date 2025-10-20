;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (MINGW64)
;--------------------------------------------------------
	.module flappy_bird
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _sfx_sys_init
	.globl _sfx_system_update
	.globl _play_sfx_ch3
	.globl _play_sfx_ch2
	.globl _play_sfx_ch1
	.globl _play_sfx_ch0
	.globl b___func_bu642
	.globl ___func_bu642
	.globl b___func_bu322
	.globl ___func_bu322
	.globl b___func_ba642
	.globl ___func_ba642
	.globl b___func_ba322
	.globl ___func_ba322
	.globl b___func_b02
	.globl ___func_b02
	.globl b___func_bu641
	.globl ___func_bu641
	.globl b___func_bu321
	.globl ___func_bu321
	.globl b___func_ba641
	.globl ___func_ba641
	.globl b___func_ba321
	.globl ___func_ba321
	.globl b___func_b01
	.globl ___func_b01
	.globl b___func_bu640
	.globl ___func_bu640
	.globl b___func_bu320
	.globl ___func_bu320
	.globl b___func_ba640
	.globl ___func_ba640
	.globl b___func_ba320
	.globl ___func_ba320
	.globl b___func_b00
	.globl ___func_b00
	.globl b___func_title
	.globl ___func_title
	.globl b___func_bg
	.globl ___func_bg
	.globl b___func_pipes
	.globl ___func_pipes
	.globl _hUGE_mute_channel
	.globl _hUGE_dosound
	.globl _hUGE_init
	.globl _cgb_compatibility
	.globl _cpu_fast
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _initarand
	.globl _rand
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _get_bkg_xy_addr
	.globl _get_vram_byte
	.globl _wait_vbl_done
	.globl _joypad_init
	.globl _waitpadup
	.globl _waitpad
	.globl _joypad
	.globl _delay
	.globl _add_VBL
	.globl _bird_tiles
	.globl _b2_tiles_s
	.globl _b1_tiles_s
	.globl _b0_tiles_s
	.globl _flip_or_not
	.globl _drop_speed_sub
	.globl _drop_speed
	.globl _bird_y
	.globl _state
	.globl _touched
	.globl _pause_sub_state
	.globl _joypad_state_last
	.globl _joypad_state
	.globl _joypad_t_val
	.globl _temp0
	.globl _scroll_x
	.globl _bird_frame_delay
	.globl _bird_frame
	.globl _bird_flap_wing
	.globl _cgb_enable
	.globl _gravity
	.globl _seed
	.globl _sfx_sys_sfx_adr_ch3
	.globl _sfx_sys_index_ch3
	.globl _delay_sfx_sys_ch3
	.globl _sfx_end_ch3
	.globl _sfx_sys_sfx_adr_ch2
	.globl _sfx_sys_index_ch2
	.globl _delay_sfx_sys_ch2
	.globl _sfx_end_ch2
	.globl _sfx_sys_sfx_adr_ch1
	.globl _sfx_sys_index_ch1
	.globl _delay_sfx_sys_ch1
	.globl _sfx_end_ch1
	.globl _sfx_sys_sfx_adr_ch0
	.globl _sfx_sys_index_ch0
	.globl _delay_sfx_sys_ch0
	.globl _sfx_end_ch0
	.globl _sfx_pause
	.globl _sfx_jump
	.globl _bu642_tiles
	.globl _bu642_palettes
	.globl _bu642_metasprite0
	.globl _bu322_tiles
	.globl _bu322_palettes
	.globl _bu322_metasprites
	.globl _bu322_metasprite0
	.globl _ba642_tiles
	.globl _ba642_palettes
	.globl _ba642_metasprites
	.globl _ba642_metasprite0
	.globl _ba322_tiles
	.globl _ba322_palettes
	.globl _ba322_metasprites
	.globl _ba322_metasprite0
	.globl _b02_tiles
	.globl _b02_palettes
	.globl _b02_metasprites
	.globl _b02_metasprite0
	.globl _bu641_tiles
	.globl _bu641_palettes
	.globl _bu641_metasprites
	.globl _bu641_metasprite0
	.globl _bu321_tiles
	.globl _bu321_palettes
	.globl _bu321_metasprites
	.globl _bu321_metasprite0
	.globl _ba641_tiles
	.globl _ba641_palettes
	.globl _ba321_tiles
	.globl _ba321_palettes
	.globl _b01_tiles
	.globl _b01_palettes
	.globl _bu640_tiles
	.globl _bu640_palettes
	.globl _bu640_metasprites
	.globl _bu640_metasprite0
	.globl _bu320_tiles
	.globl _bu320_palettes
	.globl _bu320_metasprites
	.globl _bu320_metasprite0
	.globl _ba640_tiles
	.globl _ba640_palettes
	.globl _ba640_metasprites
	.globl _ba640_metasprite0
	.globl _ba320_tiles
	.globl _ba320_palettes
	.globl _ba320_metasprites
	.globl _ba320_metasprite0
	.globl _b00_tiles
	.globl _b00_palettes
	.globl _b00_metasprites
	.globl _b00_metasprite0
	.globl _title_tiles
	.globl _title_palettes
	.globl _title_metasprites
	.globl _title_metasprite0
	.globl _bg_tiles
	.globl _bg_palettes
	.globl _bg_map
	.globl _pipes_tiles
	.globl _pipes_palettes
	.globl _pipes_map
	.globl _music_which_is_not_i_made
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_sfx_end_ch0::
	.ds 1
_delay_sfx_sys_ch0::
	.ds 1
_sfx_sys_index_ch0::
	.ds 1
_sfx_sys_sfx_adr_ch0::
	.ds 2
_sfx_end_ch1::
	.ds 1
_delay_sfx_sys_ch1::
	.ds 1
_sfx_sys_index_ch1::
	.ds 1
_sfx_sys_sfx_adr_ch1::
	.ds 2
_sfx_end_ch2::
	.ds 1
_delay_sfx_sys_ch2::
	.ds 1
_sfx_sys_index_ch2::
	.ds 1
_sfx_sys_sfx_adr_ch2::
	.ds 2
_sfx_end_ch3::
	.ds 1
_delay_sfx_sys_ch3::
	.ds 1
_sfx_sys_index_ch3::
	.ds 1
_sfx_sys_sfx_adr_ch3::
	.ds 2
_seed::
	.ds 2
_gravity::
	.ds 1
_cgb_enable::
	.ds 1
_bird_flap_wing::
	.ds 1
_bird_frame::
	.ds 1
_bird_frame_delay::
	.ds 1
_scroll_x::
	.ds 1
_temp0::
	.ds 1
_joypad_t_val::
	.ds 5
_joypad_state::
	.ds 1
_joypad_state_last::
	.ds 1
_pause_sub_state::
	.ds 1
_touched::
	.ds 1
_state::
	.ds 1
_bird_y::
	.ds 1
_drop_speed::
	.ds 1
_drop_speed_sub::
	.ds 1
_flip_or_not::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_b0_tiles_s::
	.ds 10
_b1_tiles_s::
	.ds 10
_b2_tiles_s::
	.ds 10
_bird_tiles::
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;bgs/pipes.c:7: BANKREF(pipes)
;	---------------------------------
; Function __func_pipes
; ---------------------------------
	b___func_pipes	= 0
___func_pipes::
	.local b___func_pipes 
	___bank_pipes = b___func_pipes 
	.globl ___bank_pipes 
;bgs/bg.c:7: BANKREF(bg)
;	---------------------------------
; Function __func_bg
; ---------------------------------
	b___func_bg	= 0
___func_bg::
	.local b___func_bg 
	___bank_bg = b___func_bg 
	.globl ___bank_bg 
;bgs/title.c:7: BANKREF(title)
;	---------------------------------
; Function __func_title
; ---------------------------------
	b___func_title	= 0
___func_title::
	.local b___func_title 
	___bank_title = b___func_title 
	.globl ___bank_title 
;bird/0/b0.c:7: BANKREF(b00)
;	---------------------------------
; Function __func_b00
; ---------------------------------
	b___func_b00	= 0
___func_b00::
	.local b___func_b00 
	___bank_b00 = b___func_b00 
	.globl ___bank_b00 
;bird/0/ba32.c:7: BANKREF(ba320)
;	---------------------------------
; Function __func_ba320
; ---------------------------------
	b___func_ba320	= 0
___func_ba320::
	.local b___func_ba320 
	___bank_ba320 = b___func_ba320 
	.globl ___bank_ba320 
;bird/0/ba64.c:7: BANKREF(ba640)
;	---------------------------------
; Function __func_ba640
; ---------------------------------
	b___func_ba640	= 0
___func_ba640::
	.local b___func_ba640 
	___bank_ba640 = b___func_ba640 
	.globl ___bank_ba640 
;bird/0/bu32.c:7: BANKREF(bu320)
;	---------------------------------
; Function __func_bu320
; ---------------------------------
	b___func_bu320	= 0
___func_bu320::
	.local b___func_bu320 
	___bank_bu320 = b___func_bu320 
	.globl ___bank_bu320 
;bird/0/bu64.c:7: BANKREF(bu640)
;	---------------------------------
; Function __func_bu640
; ---------------------------------
	b___func_bu640	= 0
___func_bu640::
	.local b___func_bu640 
	___bank_bu640 = b___func_bu640 
	.globl ___bank_bu640 
;bird/1/b0.c:7: BANKREF(b01)
;	---------------------------------
; Function __func_b01
; ---------------------------------
	b___func_b01	= 0
___func_b01::
	.local b___func_b01 
	___bank_b01 = b___func_b01 
	.globl ___bank_b01 
;bird/1/ba32.c:7: BANKREF(ba321)
;	---------------------------------
; Function __func_ba321
; ---------------------------------
	b___func_ba321	= 0
___func_ba321::
	.local b___func_ba321 
	___bank_ba321 = b___func_ba321 
	.globl ___bank_ba321 
;bird/1/ba64.c:7: BANKREF(ba641)
;	---------------------------------
; Function __func_ba641
; ---------------------------------
	b___func_ba641	= 0
___func_ba641::
	.local b___func_ba641 
	___bank_ba641 = b___func_ba641 
	.globl ___bank_ba641 
;bird/1/bu32.c:7: BANKREF(bu321)
;	---------------------------------
; Function __func_bu321
; ---------------------------------
	b___func_bu321	= 0
___func_bu321::
	.local b___func_bu321 
	___bank_bu321 = b___func_bu321 
	.globl ___bank_bu321 
;bird/1/bu64.c:7: BANKREF(bu641)
;	---------------------------------
; Function __func_bu641
; ---------------------------------
	b___func_bu641	= 0
___func_bu641::
	.local b___func_bu641 
	___bank_bu641 = b___func_bu641 
	.globl ___bank_bu641 
;bird/2/b0.c:7: BANKREF(b02)
;	---------------------------------
; Function __func_b02
; ---------------------------------
	b___func_b02	= 0
___func_b02::
	.local b___func_b02 
	___bank_b02 = b___func_b02 
	.globl ___bank_b02 
;bird/2/ba32.c:7: BANKREF(ba322)
;	---------------------------------
; Function __func_ba322
; ---------------------------------
	b___func_ba322	= 0
___func_ba322::
	.local b___func_ba322 
	___bank_ba322 = b___func_ba322 
	.globl ___bank_ba322 
;bird/2/ba64.c:7: BANKREF(ba642)
;	---------------------------------
; Function __func_ba642
; ---------------------------------
	b___func_ba642	= 0
___func_ba642::
	.local b___func_ba642 
	___bank_ba642 = b___func_ba642 
	.globl ___bank_ba642 
;bird/2/bu32.c:7: BANKREF(bu322)
;	---------------------------------
; Function __func_bu322
; ---------------------------------
	b___func_bu322	= 0
___func_bu322::
	.local b___func_bu322 
	___bank_bu322 = b___func_bu322 
	.globl ___bank_bu322 
;bird/2/bu64.c:7: BANKREF(bu642)
;	---------------------------------
; Function __func_bu642
; ---------------------------------
	b___func_bu642	= 0
___func_bu642::
	.local b___func_bu642 
	___bank_bu642 = b___func_bu642 
	.globl ___bank_bu642 
;sfx.c:22: void play_sfx_ch0(const uint8_t sfx_sequence[][6]) {
;	---------------------------------
; Function play_sfx_ch0
; ---------------------------------
_play_sfx_ch0::
	ld	hl, #_sfx_sys_sfx_adr_ch0
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;sfx.c:24: sfx_sys_index_ch0 = 0;
;sfx.c:25: delay_sfx_sys_ch0 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch0), a
	ld	(#_delay_sfx_sys_ch0),a
;sfx.c:26: sfx_end_ch0 = 0;
	xor	a, a
	ld	(#_sfx_end_ch0),a
;sfx.c:27: }
	ret
_order_cnt:
	.db #0x28	; 40
_P0:
	.db #0x04	; 4
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x04	; 4
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x0c	; 12
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x0c	; 12
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P1:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P3:
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P4:
	.db #0x07	; 7
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x07	; 7
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x13	; 19
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x0f	; 15
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x0f	; 15
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P5:
	.db #0x2f	; 47
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P6:
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P7:
	.db #0x1c	; 28
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0d	; 13
	.db #0x01	; 1
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P8:
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0b	; 11
	.db #0x05	; 5
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P9:
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P12:
	.db #0x2f	; 47
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P10:
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P11:
	.db #0x1c	; 28
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P13:
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P14:
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P15:
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P16:
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P17:
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P18:
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P19:
	.db #0x06	; 6
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x02	; 2
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x02	; 2
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x0e	; 14
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x0b	; 11
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P20:
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P21:
	.db #0x09	; 9
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x09	; 9
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x15	; 21
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x15	; 21
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x05	; 5
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x05	; 5
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0x29	; 41
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x40	; 64
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x0d	; 13
	.db #0x29	; 41
	.db #0xc0	; 192
	.db #0x5a	; 90	'Z'
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P22:
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2d	; 45
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P23:
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x25	; 37
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P24:
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P25:
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P26:
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P27:
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_itSquareSP1:
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x10	; 16
	.db #0x00	; 0
_itNoiseSP1:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x10	; 16
	.db #0x00	; 0
_itNoiseSP2:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x10	; 16
	.db #0x00	; 0
_itNoiseSP3:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x10	; 16
	.db #0x00	; 0
_order1:
	.dw _P0
	.dw _P4
	.dw _P0
	.dw _P4
	.dw _P0
	.dw _P4
	.dw _P0
	.dw _P4
	.dw _P0
	.dw _P4
	.dw _P0
	.dw _P4
	.dw _P19
	.dw _P21
	.dw _P19
	.dw _P21
	.dw _P19
	.dw _P21
	.dw _P19
	.dw _P21
_order2:
	.dw _P1
	.dw _P1
	.dw _P1
	.dw _P1
	.dw _P9
	.dw _P10
	.dw _P11
	.dw _P1
	.dw _P15
	.dw _P16
	.dw _P17
	.dw _P1
	.dw _P24
	.dw _P25
	.dw _P26
	.dw _P27
	.dw _P24
	.dw _P25
	.dw _P26
	.dw _P17
_order3:
	.dw _P1
	.dw _P1
	.dw _P1
	.dw _P1
	.dw _P5
	.dw _P6
	.dw _P7
	.dw _P1
	.dw _P12
	.dw _P13
	.dw _P14
	.dw _P1
	.dw _P18
	.dw _P20
	.dw _P22
	.dw _P23
	.dw _P18
	.dw _P20
	.dw _P22
	.dw _P8
_order4:
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
	.dw _P3
_duty_instruments:
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x75	; 117	'u'
	.dw _itSquareSP1
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0xf2	; 242
	.dw #0x0000
	.db #0x80	; 128
_wave_instruments:
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.dw #0x0000
	.db #0x80	; 128
_noise_instruments:
	.db #0xb1	; 177
	.dw _itNoiseSP1
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa1	; 161
	.dw _itNoiseSP2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb2	; 178
	.dw _itNoiseSP3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_waves:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
_music_which_is_not_i_made:
	.db #0x04	; 4
	.dw _order_cnt
	.dw _order1
	.dw _order2
	.dw _order3
	.dw _order4
	.dw _duty_instruments
	.dw _wave_instruments
	.dw _noise_instruments
	.dw #0x0000
	.dw _waves
_pipes_map:
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
_pipes_palettes:
	.dw #0x4790
	.dw #0x670e
	.dw #0x1a4f
	.dw #0x0000
_pipes_tiles:
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
_bg_map:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x18	; 24
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x18	; 24
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x0d	; 13
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x22	; 34
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
_bg_palettes:
	.dw #0x67dc
	.dw #0x4790
	.dw #0x670e
	.dw #0x1a4f
_bg_tiles:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xbc	; 188
	.db #0x00	; 0
	.db #0xa4	; 164
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x00	; 0
	.db #0xa9	; 169
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x01	; 1
	.db #0xaa	; 170
	.db #0x07	; 7
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x78	; 120	'x'
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xac	; 172
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xac	; 172
	.db #0x03	; 3
	.db #0xac	; 172
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0xf0	; 240
	.db #0x0a	; 10
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0xa5	; 165
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x3c	; 60
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0xcf	; 207
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x6b	; 107	'k'
	.db #0x00	; 0
	.db #0x6b	; 107	'k'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x78	; 120	'x'
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x4a	; 74	'J'
	.db #0x78	; 120	'x'
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0xa9	; 169
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0xa9	; 169
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x98	; 152
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x03	; 3
	.db #0x50	; 80	'P'
	.db #0x0f	; 15
	.db #0x50	; 80	'P'
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0x0d	; 13
	.db #0xf0	; 240
	.db #0x0d	; 13
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x07	; 7
	.db #0x60	; 96
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x81	; 129
	.db #0x54	; 84	'T'
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xe0	; 224
	.db #0x02	; 2
	.db #0xf8	; 248
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0xc3	; 195
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0xc0	; 192
	.db #0x15	; 21
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0xc1	; 193
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x6b	; 107	'k'
	.db #0x00	; 0
	.db #0x6b	; 107	'k'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x6b	; 107	'k'
	.db #0x80	; 128
	.db #0x6b	; 107	'k'
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x3c	; 60
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xe3	; 227
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xe3	; 227
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe3	; 227
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0x1e	; 30
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0x1e	; 30
	.db #0xff	; 255
	.db #0x3c	; 60
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x1e	; 30
	.db #0xff	; 255
	.db #0x3c	; 60
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
_title_metasprite0:
	.db #0xe0	; -32
	.db #0xf0	; -16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0xf0	; -16
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0xf8	; -8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0xe8	; -24
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_title_metasprites:
	.dw _title_metasprite0
_title_palettes:
	.dw #0x77bd
	.dw #0x6318
	.dw #0x04bf
	.dw #0x20ea
_title_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x22	; 34
	.db #0x9f	; 159
	.db #0x9e	; 158
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0x12	; 18
	.db #0xff	; 255
	.db #0x21	; 33
	.db #0xff	; 255
	.db #0x22	; 34
	.db #0xff	; 255
	.db #0x22	; 34
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x90	; 144
	.db #0xff	; 255
	.db #0x2f	; 47
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x21	; 33
	.db #0x1e	; 30
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x21	; 33
	.db #0x1e	; 30
	.db #0x11	; 17
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0xc2	; 194
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0xdc	; 220
	.db #0x22	; 34
	.db #0xdc	; 220
	.db #0xe2	; 226
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0xdc	; 220
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_b00_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_b00_metasprites:
	.dw _b00_metasprite0
_b00_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_b00_tiles:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x13	; 19
	.db #0x30	; 48	'0'
	.db #0x2f	; 47
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0xba	; 186
	.db #0xc7	; 199
	.db #0xfc	; 252
	.db #0x87	; 135
	.db #0xe8	; 232
	.db #0x9f	; 159
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfe	; 254
	.db #0x8a	; 138
	.db #0xfe	; 254
	.db #0x8a	; 138
	.db #0x7e	; 126
	.db #0xc2	; 194
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xfe	; 254
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ba320_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_ba320_metasprites:
	.dw _ba320_metasprite0
_ba320_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_ba320_tiles:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x3f	; 63
	.db #0x24	; 36
	.db #0x37	; 55	'7'
	.db #0x0c	; 12
	.db #0x67	; 103	'g'
	.db #0x5e	; 94
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x9a	; 154
	.db #0xff	; 255
	.db #0xbc	; 188
	.db #0xf7	; 247
	.db #0x7c	; 124
	.db #0x47	; 71	'G'
	.db #0x34	; 52	'4'
	.db #0x4f	; 79	'O'
	.db #0x7d	; 125
	.db #0x4d	; 77	'M'
	.db #0x38	; 56	'8'
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xf4	; 244
	.db #0x54	; 84	'T'
	.db #0xfa	; 250
	.db #0x1e	; 30
	.db #0xf6	; 246
	.db #0x3e	; 62
	.db #0x4e	; 78	'N'
	.db #0xfe	; 254
	.db #0xb2	; 178
	.db #0xfe	; 254
	.db #0xac	; 172
	.db #0xfc	; 252
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ba640_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_ba640_metasprites:
	.dw _ba640_metasprite0
_ba640_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_ba640_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x34	; 52	'4'
	.db #0x7f	; 127
	.db #0x46	; 70	'F'
	.db #0x7f	; 127
	.db #0x60	; 96
	.db #0x7f	; 127
	.db #0x61	; 97	'a'
	.db #0xfd	; 253
	.db #0xbb	; 187
	.db #0xc9	; 201
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0xc6	; 198
	.db #0xbf	; 191
	.db #0x4e	; 78	'N'
	.db #0x3b	; 59
	.db #0x4f	; 79	'O'
	.db #0x79	; 121	'y'
	.db #0x7f	; 127
	.db #0x71	; 113	'q'
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x1f	; 31
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xb0	; 176
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_bu320_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_bu320_metasprites:
	.dw _bu320_metasprite0
_bu320_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_bu320_tiles:
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x1d	; 29
	.db #0x70	; 112	'p'
	.db #0x7f	; 127
	.db #0xd8	; 216
	.db #0xbf	; 191
	.db #0xfe	; 254
	.db #0x87	; 135
	.db #0xda	; 218
	.db #0xa7	; 167
	.db #0x7e	; 126
	.db #0x77	; 119	'w'
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xb0	; 176
	.db #0xb8	; 184
	.db #0x48	; 72	'H'
	.db #0x3e	; 62
	.db #0xee	; 238
	.db #0x3e	; 62
	.db #0xe2	; 226
	.db #0x7e	; 126
	.db #0xc2	; 194
	.db #0x3f	; 63
	.db #0xc5	; 197
	.db #0x3f	; 63
	.db #0xe5	; 229
	.db #0x3f	; 63
	.db #0xf3	; 243
	.db #0x5e	; 94
	.db #0xfa	; 250
	.db #0x66	; 102	'f'
	.db #0xfe	; 254
	.db #0x98	; 152
	.db #0xfe	; 254
	.db #0x6c	; 108	'l'
	.db #0x7e	; 126
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_bu640_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_bu640_metasprites:
	.dw _bu640_metasprite0
_bu640_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_bu640_tiles:
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x68	; 104	'h'
	.db #0x7f	; 127
	.db #0x7c	; 124
	.db #0x0f	; 15
	.db #0xfc	; 252
	.db #0xc7	; 199
	.db #0x5e	; 94
	.db #0x77	; 119	'w'
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x60	; 96
	.db #0x7f	; 127
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x68	; 104	'h'
	.db #0xa8	; 168
	.db #0x58	; 88	'X'
	.db #0xa8	; 168
	.db #0x18	; 24
	.db #0xe8	; 232
	.db #0x3c	; 60
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0xec	; 236
	.db #0x7e	; 126
	.db #0x82	; 130
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x94	; 148
	.db #0xfc	; 252
	.db #0xd4	; 212
	.db #0x78	; 120	'x'
	.db #0xc8	; 200
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
_b01_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_b01_tiles:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x13	; 19
	.db #0x30	; 48	'0'
	.db #0x2f	; 47
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0xfe	; 254
	.db #0x83	; 131
	.db #0xba	; 186
	.db #0xc7	; 199
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfe	; 254
	.db #0x8a	; 138
	.db #0xfe	; 254
	.db #0x8a	; 138
	.db #0x7e	; 126
	.db #0xc2	; 194
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xfe	; 254
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ba321_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_ba321_tiles:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x3f	; 63
	.db #0x24	; 36
	.db #0x37	; 55	'7'
	.db #0x0c	; 12
	.db #0x67	; 103	'g'
	.db #0x5e	; 94
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x9c	; 156
	.db #0xff	; 255
	.db #0xfa	; 250
	.db #0xe7	; 231
	.db #0xfc	; 252
	.db #0xc7	; 199
	.db #0xfc	; 252
	.db #0x8f	; 143
	.db #0x30	; 48	'0'
	.db #0x7f	; 127
	.db #0x35	; 53	'5'
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xf4	; 244
	.db #0x54	; 84	'T'
	.db #0xfa	; 250
	.db #0x1e	; 30
	.db #0xf6	; 246
	.db #0x3e	; 62
	.db #0x4e	; 78	'N'
	.db #0xfe	; 254
	.db #0xb2	; 178
	.db #0xfe	; 254
	.db #0xac	; 172
	.db #0xfc	; 252
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ba641_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_ba641_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x34	; 52	'4'
	.db #0x7f	; 127
	.db #0x46	; 70	'F'
	.db #0x7f	; 127
	.db #0x60	; 96
	.db #0x7f	; 127
	.db #0x61	; 97	'a'
	.db #0xfd	; 253
	.db #0xbb	; 187
	.db #0xc9	; 201
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0xc4	; 196
	.db #0xbf	; 191
	.db #0xde	; 222
	.db #0xbb	; 187
	.db #0x5e	; 94
	.db #0x33	; 51	'3'
	.db #0x7e	; 126
	.db #0x73	; 115	's'
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x37	; 55	'7'
	.db #0x2f	; 47
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xb0	; 176
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_bu321_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_bu321_metasprites:
	.dw _bu321_metasprite0
_bu321_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_bu321_tiles:
	.db #0x2f	; 47
	.db #0x2d	; 45
	.db #0x25	; 37
	.db #0x3a	; 58
	.db #0xf8	; 248
	.db #0x9f	; 159
	.db #0xbc	; 188
	.db #0xcf	; 207
	.db #0xfc	; 252
	.db #0xc3	; 195
	.db #0x34	; 52	'4'
	.db #0x7f	; 127
	.db #0x5c	; 92
	.db #0x7f	; 127
	.db #0x62	; 98	'b'
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0x70	; 112	'p'
	.db #0x90	; 144
	.db #0x7c	; 124
	.db #0xdc	; 220
	.db #0x7c	; 124
	.db #0xc4	; 196
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0x7e	; 126
	.db #0x8a	; 138
	.db #0x7e	; 126
	.db #0xca	; 202
	.db #0x7e	; 126
	.db #0xe6	; 230
	.db #0xbc	; 188
	.db #0xf4	; 244
	.db #0xcc	; 204
	.db #0xfc	; 252
	.db #0x30	; 48	'0'
	.db #0xfc	; 252
	.db #0xd8	; 216
	.db #0xfc	; 252
	.db #0x68	; 104	'h'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_bu641_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_bu641_metasprites:
	.dw _bu641_metasprite0
_bu641_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_bu641_tiles:
	.db #0x2e	; 46
	.db #0x2e	; 46
	.db #0x19	; 25
	.db #0x2e	; 46
	.db #0x7c	; 124
	.db #0x67	; 103	'g'
	.db #0x7c	; 124
	.db #0x67	; 103	'g'
	.db #0x9e	; 158
	.db #0xe3	; 227
	.db #0x54	; 84	'T'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x4b	; 75	'K'
	.db #0x7f	; 127
	.db #0x29	; 41
	.db #0x3f	; 63
	.db #0x27	; 39
	.db #0x3f	; 63
	.db #0x1a	; 26
	.db #0x1f	; 31
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xd0	; 208
	.db #0x50	; 80	'P'
	.db #0xb0	; 176
	.db #0x50	; 80	'P'
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xd8	; 216
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
_b02_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_b02_metasprites:
	.dw _b02_metasprite0
_b02_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_b02_tiles:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x13	; 19
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0xfc	; 252
	.db #0x87	; 135
	.db #0xfe	; 254
	.db #0x83	; 131
	.db #0xba	; 186
	.db #0xc7	; 199
	.db #0x44	; 68	'D'
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfe	; 254
	.db #0x8a	; 138
	.db #0xfe	; 254
	.db #0x8a	; 138
	.db #0x7e	; 126
	.db #0xc2	; 194
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xfe	; 254
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ba322_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_ba322_metasprites:
	.dw _ba322_metasprite0
_ba322_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_ba322_tiles:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x12	; 18
	.db #0x1b	; 27
	.db #0x06	; 6
	.db #0x33	; 51	'3'
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0xfe	; 254
	.db #0xc3	; 195
	.db #0xfa	; 250
	.db #0x87	; 135
	.db #0xf8	; 248
	.db #0x87	; 135
	.db #0x44	; 68	'D'
	.db #0x7f	; 127
	.db #0x28	; 40
	.db #0x2f	; 47
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x30	; 48	'0'
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xfa	; 250
	.db #0x2a	; 42
	.db #0xfd	; 253
	.db #0x0f	; 15
	.db #0xfb	; 251
	.db #0x1f	; 31
	.db #0xa7	; 167
	.db #0xff	; 255
	.db #0x59	; 89	'Y'
	.db #0xff	; 255
	.db #0x56	; 86	'V'
	.db #0xfe	; 254
	.db #0x6c	; 108	'l'
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_ba642_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_ba642_metasprites:
	.dw _ba642_metasprite0
_ba642_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_ba642_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x34	; 52	'4'
	.db #0x7f	; 127
	.db #0x46	; 70	'F'
	.db #0x7f	; 127
	.db #0x60	; 96
	.db #0x7f	; 127
	.db #0x61	; 97	'a'
	.db #0xfd	; 253
	.db #0xbb	; 187
	.db #0xc9	; 201
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0xdc	; 220
	.db #0xbf	; 191
	.db #0xf8	; 248
	.db #0x87	; 135
	.db #0x78	; 120	'x'
	.db #0x47	; 71	'G'
	.db #0xfa	; 250
	.db #0xc7	; 199
	.db #0x73	; 115	's'
	.db #0x0f	; 15
	.db #0x6f	; 111	'o'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xb0	; 176
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_bu322_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_bu322_metasprites:
	.dw _bu322_metasprite0
_bu322_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_bu322_tiles:
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x3a	; 58
	.db #0xfa	; 250
	.db #0x8d	; 141
	.db #0x78	; 120	'x'
	.db #0x87	; 135
	.db #0xfc	; 252
	.db #0x87	; 135
	.db #0x95	; 149
	.db #0xef	; 239
	.db #0x70	; 112	'p'
	.db #0xff	; 255
	.db #0xa0	; 160
	.db #0xff	; 255
	.db #0xc4	; 196
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x1a	; 26
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0xb8	; 184
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xfc	; 252
	.db #0x14	; 20
	.db #0xfc	; 252
	.db #0x94	; 148
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x78	; 120	'x'
	.db #0xe8	; 232
	.db #0x98	; 152
	.db #0xf8	; 248
	.db #0x60	; 96
	.db #0xf8	; 248
	.db #0xb0	; 176
	.db #0xf8	; 248
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_bu642_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_bu642_palettes:
	.dw #0x7fff
	.dw #0x63bc
	.dw #0x167b
	.dw #0x20ea
_bu642_tiles:
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x6e	; 110	'n'
	.db #0x71	; 113	'q'
	.db #0x8a	; 138
	.db #0xf5	; 245
	.db #0x4e	; 78	'N'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x4b	; 75	'K'
	.db #0x7f	; 127
	.db #0x29	; 41
	.db #0x3f	; 63
	.db #0x27	; 39
	.db #0x3f	; 63
	.db #0x1a	; 26
	.db #0x1f	; 31
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xd0	; 208
	.db #0x50	; 80	'P'
	.db #0xb0	; 176
	.db #0x50	; 80	'P'
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xd8	; 216
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0xa8	; 168
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
;sfx.c:28: void play_sfx_ch1(const uint8_t sfx_sequence[][5]) {
;	---------------------------------
; Function play_sfx_ch1
; ---------------------------------
_play_sfx_ch1::
	ld	hl, #_sfx_sys_sfx_adr_ch1
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;sfx.c:30: sfx_sys_index_ch1 = 0;
;sfx.c:31: delay_sfx_sys_ch1 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch1), a
	ld	(#_delay_sfx_sys_ch1),a
;sfx.c:32: sfx_end_ch1 = 0;
	xor	a, a
	ld	(#_sfx_end_ch1),a
;sfx.c:33: }
	ret
;sfx.c:34: void play_sfx_ch2(const uint8_t sfx_sequence[][6]) {
;	---------------------------------
; Function play_sfx_ch2
; ---------------------------------
_play_sfx_ch2::
	ld	hl, #_sfx_sys_sfx_adr_ch2
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;sfx.c:36: sfx_sys_index_ch2 = 0;
;sfx.c:37: delay_sfx_sys_ch2 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch2), a
	ld	(#_delay_sfx_sys_ch2),a
;sfx.c:38: sfx_end_ch2 = 0;
	xor	a, a
	ld	(#_sfx_end_ch2),a
;sfx.c:39: }
	ret
;sfx.c:40: void play_sfx_ch3(const uint8_t sfx_sequence[][5]) {
;	---------------------------------
; Function play_sfx_ch3
; ---------------------------------
_play_sfx_ch3::
	ld	hl, #_sfx_sys_sfx_adr_ch3
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;sfx.c:42: sfx_sys_index_ch3 = 0;
;sfx.c:43: delay_sfx_sys_ch3 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch3), a
	ld	(#_delay_sfx_sys_ch3),a
;sfx.c:44: sfx_end_ch3 = 0;
	xor	a, a
	ld	(#_sfx_end_ch3),a
;sfx.c:45: }
	ret
;sfx.c:47: void sfx_system_update() {
;	---------------------------------
; Function sfx_system_update
; ---------------------------------
_sfx_system_update::
;sfx.c:48: if(sfx_end_ch0 == 0){
	ld	a, (#_sfx_end_ch0)
	or	a, a
	jr	NZ, 00108$
;sfx.c:49: if (delay_sfx_sys_ch0 > 0) {
	ld	hl, #_delay_sfx_sys_ch0
	ld	a, (hl)
	or	a, a
	jr	Z, 00105$
;sfx.c:50: --delay_sfx_sys_ch0;
	dec	(hl)
	jr	00108$
00105$:
;sfx.c:52: const uint8_t *frame = sfx_sys_sfx_adr_ch0[sfx_sys_index_ch0];
	ld	hl, #_sfx_sys_index_ch0
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	a, c
	ld	hl, #_sfx_sys_sfx_adr_ch0
	add	a, (hl)
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;sfx.c:53: NR10_REG = frame[0];
	ld	a, (bc)
	ldh	(_NR10_REG + 0), a
;sfx.c:54: NR11_REG = frame[1];
	ld	e, c
	ld	d, b
	inc	de
	ld	a, (de)
	ldh	(_NR11_REG + 0), a
;sfx.c:55: NR12_REG = frame[2];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR12_REG + 0), a
;sfx.c:56: NR13_REG = frame[3];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR13_REG + 0), a
;sfx.c:57: NR14_REG = frame[4];
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	ldh	(_NR14_REG + 0), a
;sfx.c:58: delay_sfx_sys_ch0 = frame[5];
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl)
	ld	(#_delay_sfx_sys_ch0),a
;sfx.c:60: if (delay_sfx_sys_ch0 == 0) {
	ld	a, (#_delay_sfx_sys_ch0)
;sfx.c:61: sfx_sys_sfx_adr_ch0 = NULL;
	or	a,a
	jr	NZ, 00102$
	ld	hl, #_sfx_sys_sfx_adr_ch0
	ld	(hl+), a
	ld	(hl), a
;sfx.c:62: sfx_end_ch0 = 1;
	ld	hl, #_sfx_end_ch0
	ld	(hl), #0x01
	jr	00108$
00102$:
;sfx.c:64: sfx_sys_index_ch0++;
	ld	hl, #_sfx_sys_index_ch0
	inc	(hl)
00108$:
;sfx.c:68: if(sfx_end_ch1 == 0){
	ld	a, (#_sfx_end_ch1)
	or	a, a
	jr	NZ, 00116$
;sfx.c:69: if (delay_sfx_sys_ch1 > 0) {
	ld	hl, #_delay_sfx_sys_ch1
	ld	a, (hl)
	or	a, a
	jr	Z, 00113$
;sfx.c:70: --delay_sfx_sys_ch1;
	dec	(hl)
	jr	00116$
00113$:
;sfx.c:72: const uint8_t *frame = sfx_sys_sfx_adr_ch1[sfx_sys_index_ch1];
	ld	hl, #_sfx_sys_index_ch1
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	ld	hl, #_sfx_sys_sfx_adr_ch1
	add	a, (hl)
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;sfx.c:73: NR21_REG = frame[0];
	ld	a, (bc)
	ldh	(_NR21_REG + 0), a
;sfx.c:74: NR22_REG = frame[1];
	ld	e, c
	ld	d, b
	inc	de
	ld	a, (de)
	ldh	(_NR22_REG + 0), a
;sfx.c:75: NR23_REG = frame[2];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR23_REG + 0), a
;sfx.c:76: NR24_REG = frame[3];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR24_REG + 0), a
;sfx.c:77: delay_sfx_sys_ch1 = frame[4];
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	ld	(#_delay_sfx_sys_ch1),a
;sfx.c:79: if (delay_sfx_sys_ch1 == 0) {
	ld	a, (#_delay_sfx_sys_ch1)
;sfx.c:80: sfx_sys_sfx_adr_ch1 = NULL;
	or	a,a
	jr	NZ, 00110$
	ld	hl, #_sfx_sys_sfx_adr_ch1
	ld	(hl+), a
	ld	(hl), a
;sfx.c:81: sfx_end_ch1 = 1;
	ld	hl, #_sfx_end_ch1
	ld	(hl), #0x01
	jr	00116$
00110$:
;sfx.c:83: sfx_sys_index_ch1++;
	ld	hl, #_sfx_sys_index_ch1
	inc	(hl)
00116$:
;sfx.c:87: if(sfx_end_ch2 == 0){
	ld	a, (#_sfx_end_ch2)
	or	a, a
	jr	NZ, 00124$
;sfx.c:88: if (delay_sfx_sys_ch2 > 0) {
	ld	hl, #_delay_sfx_sys_ch2
	ld	a, (hl)
	or	a, a
	jr	Z, 00121$
;sfx.c:89: --delay_sfx_sys_ch2;
	dec	(hl)
	jr	00124$
00121$:
;sfx.c:91: const uint8_t *frame = sfx_sys_sfx_adr_ch2[sfx_sys_index_ch2];
	ld	hl, #_sfx_sys_index_ch2
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	a, c
	ld	hl, #_sfx_sys_sfx_adr_ch2
	add	a, (hl)
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;sfx.c:92: NR30_REG = frame[0];
	ld	a, (bc)
	ldh	(_NR30_REG + 0), a
;sfx.c:93: NR31_REG = frame[1];
	ld	e, c
	ld	d, b
	inc	de
	ld	a, (de)
	ldh	(_NR31_REG + 0), a
;sfx.c:94: NR32_REG = frame[2];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR32_REG + 0), a
;sfx.c:95: NR33_REG = frame[3];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR33_REG + 0), a
;sfx.c:96: NR34_REG = frame[4];
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	ldh	(_NR34_REG + 0), a
;sfx.c:97: delay_sfx_sys_ch2 = frame[5];
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl)
	ld	(#_delay_sfx_sys_ch2),a
;sfx.c:99: if (delay_sfx_sys_ch2 == 0) {
	ld	a, (#_delay_sfx_sys_ch2)
;sfx.c:100: sfx_sys_sfx_adr_ch2 = NULL;
	or	a,a
	jr	NZ, 00118$
	ld	hl, #_sfx_sys_sfx_adr_ch2
	ld	(hl+), a
	ld	(hl), a
;sfx.c:101: sfx_end_ch2 = 1;
	ld	hl, #_sfx_end_ch2
	ld	(hl), #0x01
	jr	00124$
00118$:
;sfx.c:103: sfx_sys_index_ch2++;
	ld	hl, #_sfx_sys_index_ch2
	inc	(hl)
00124$:
;sfx.c:107: if(sfx_end_ch3 == 0){
	ld	a, (#_sfx_end_ch3)
	or	a, a
	ret	NZ
;sfx.c:108: if (delay_sfx_sys_ch3 > 0) {
	ld	hl, #_delay_sfx_sys_ch3
	ld	a, (hl)
	or	a, a
	jr	Z, 00129$
;sfx.c:109: --delay_sfx_sys_ch3;
	dec	(hl)
	ret
00129$:
;sfx.c:111: const uint8_t *frame = sfx_sys_sfx_adr_ch3[sfx_sys_index_ch3];
	ld	hl, #_sfx_sys_index_ch3
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	ld	hl, #_sfx_sys_sfx_adr_ch3
	add	a, (hl)
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;sfx.c:112: NR41_REG = frame[0];
	ld	a, (bc)
	ldh	(_NR41_REG + 0), a
;sfx.c:113: NR42_REG = frame[1];
	ld	e, c
	ld	d, b
	inc	de
	ld	a, (de)
	ldh	(_NR42_REG + 0), a
;sfx.c:114: NR43_REG = frame[2];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR43_REG + 0), a
;sfx.c:115: NR44_REG = frame[3];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ldh	(_NR44_REG + 0), a
;sfx.c:116: delay_sfx_sys_ch3 = frame[4];
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	ld	(#_delay_sfx_sys_ch3),a
;sfx.c:118: if (delay_sfx_sys_ch3 == 0) {
	ld	a, (#_delay_sfx_sys_ch3)
;sfx.c:119: sfx_sys_sfx_adr_ch3 = NULL;
	or	a,a
	jr	NZ, 00126$
	ld	hl, #_sfx_sys_sfx_adr_ch3
	ld	(hl+), a
	ld	(hl), a
;sfx.c:120: sfx_end_ch3 = 1;
	ld	hl, #_sfx_end_ch3
	ld	(hl), #0x01
	ret
00126$:
;sfx.c:122: sfx_sys_index_ch3++;
	ld	hl, #_sfx_sys_index_ch3
	inc	(hl)
;sfx.c:126: }
	ret
;sfx.c:127: void sfx_sys_init(){
;	---------------------------------
; Function sfx_sys_init
; ---------------------------------
_sfx_sys_init::
;sfx.c:128: sfx_end_ch0 = 1;
	ld	hl, #_sfx_end_ch0
	ld	(hl), #0x01
;sfx.c:130: sfx_sys_index_ch0 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch0),a
;sfx.c:131: sfx_end_ch1 = 1;
	ld	hl, #_sfx_end_ch1
	ld	(hl), #0x01
;sfx.c:133: sfx_sys_index_ch1 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch1),a
;sfx.c:134: sfx_end_ch2 = 1;
	ld	hl, #_sfx_end_ch2
	ld	(hl), #0x01
;sfx.c:136: sfx_sys_index_ch2 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch2),a
;sfx.c:137: sfx_end_ch3 = 1;
	ld	hl, #_sfx_end_ch3
	ld	(hl), #0x01
;sfx.c:139: sfx_sys_index_ch3 = 0;
	xor	a, a
	ld	(#_sfx_sys_index_ch3),a
;sfx.c:140: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;sfx.c:141: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;sfx.c:142: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;sfx.c:143: }
	ret
;flappy_bird.c:48: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
	dec	sp
;flappy_bird.c:50: hUGE_init(&music_which_is_not_i_made);
	ld	de, #_music_which_is_not_i_made
	call	_hUGE_init
;flappy_bird.c:51: cgb_enable = 0;
	xor	a, a
	ld	(#_cgb_enable),a
;flappy_bird.c:52: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;flappy_bird.c:53: NR50_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR50_REG + 0), a
;flappy_bird.c:54: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;flappy_bird.c:57: add_VBL(sfx_system_update);
	ld	de, #_sfx_system_update
	call	_add_VBL
;flappy_bird.c:58: add_VBL(hUGE_dosound);
	ld	de, #_hUGE_dosound
	call	_add_VBL
;f:\gbdk\include\gb\gb.h:795: __asm__("ei");
	ei
;flappy_bird.c:60: cgb_compatibility();
	call	_cgb_compatibility
;flappy_bird.c:61: wait_vbl_done();
	call	_wait_vbl_done
;flappy_bird.c:62: sfx_sys_init();
	call	_sfx_sys_init
;flappy_bird.c:63: wait_vbl_done();
	call	_wait_vbl_done
;flappy_bird.c:64: if (_cpu == CGB_TYPE)
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00102$
;flappy_bird.c:66: cpu_fast();
	call	_cpu_fast
;flappy_bird.c:67: cgb_enable = 1;
	ld	hl, #_cgb_enable
	ld	(hl), #0x01
;flappy_bird.c:68: set_bkg_palette(0, bg_PALETTE_COUNT, bg_palettes);
	ld	de, #_bg_palettes
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_palette
	add	sp, #4
;flappy_bird.c:69: set_sprite_palette(0, b00_PALETTE_COUNT, b00_palettes);
	ld	de, #_b00_palettes
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_palette
	add	sp, #4
;flappy_bird.c:70: set_sprite_palette(1, title_PALETTE_COUNT, title_palettes);
	ld	de, #_title_palettes
	push	de
	ld	hl, #0x101
	push	hl
	call	_set_sprite_palette
	add	sp, #4
00102$:
;flappy_bird.c:72: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;flappy_bird.c:73: set_bkg_data(0, bg_TILE_COUNT, bg_tiles);
	ld	de, #_bg_tiles
	push	de
	ld	hl, #0x4d00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;flappy_bird.c:74: set_bkg_data(bg_TILE_COUNT, pipes_TILE_COUNT, pipes_tiles);
	ld	de, #_pipes_tiles
	push	de
	ld	hl, #0xc4d
	push	hl
	call	_set_bkg_data
	add	sp, #4
;flappy_bird.c:75: for (temp0 = 0; temp0 < 5; ++temp0)
	xor	a, a
	ld	(#_temp0),a
00190$:
;flappy_bird.c:76: set_sprite_data(temp0 * 4, 4, bird_tiles[1][temp0]);
	ld	hl, #(_bird_tiles + 2)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (_temp0)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (_temp0)
	add	a, a
	add	a, a
	push	bc
	ld	h, #0x04
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;flappy_bird.c:75: for (temp0 = 0; temp0 < 5; ++temp0)
	ld	hl, #_temp0
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00190$
;flappy_bird.c:77: set_bkg_tiles(0, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
	ld	bc, #_bg_map
	push	bc
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;flappy_bird.c:78: set_bkg_tiles(bg_WIDTH / 8, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
	push	bc
	ld	hl, #0x1214
	push	hl
	ld	hl, #0x14
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;flappy_bird.c:79: set_sprite_data(20, title_TILE_COUNT, title_tiles);
	ld	de, #_title_tiles
	push	de
	ld	hl, #0x1614
	push	hl
	call	_set_sprite_data
	add	sp, #4
;flappy_bird.c:80: bird_y = 90;
	ld	hl, #_bird_y
	ld	(hl), #0x5a
;flappy_bird.c:81: move_metasprite_ex(b00_metasprite0, 0, 0, 0, BIRD_X, 90);
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_b00_metasprite0)
	inc	hl
	ld	(hl), #>(_b00_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(#___current_base_tile), a
	ld	(#___current_base_prop),a
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x5a1e
	xor	a, a
	call	___move_metasprite
;flappy_bird.c:82: move_metasprite_ex(title_metasprite0, 20, 1, 2, 88, 90);
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_title_metasprite0)
	inc	hl
	ld	(hl), #>(_title_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x14
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x5a58
	ld	a, #0x02
	call	___move_metasprite
;flappy_bird.c:83: state = 0;
	xor	a, a
	ld	(#_state),a
;flappy_bird.c:84: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;flappy_bird.c:85: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;flappy_bird.c:86: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;flappy_bird.c:87: joypad_init(1, &joypad_t_val);
	ld	de, #_joypad_t_val
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	call	_joypad_init
	add	sp, #3
;flappy_bird.c:88: bird_flap_wing = 1;
	ld	hl, #_bird_flap_wing
	ld	(hl), #0x01
;flappy_bird.c:89: seed |= (UWORD)DIV_REG << 8;
	ldh	a, (_DIV_REG + 0)
	ld	hl, #_seed + 1
	or	a, (hl)
;flappy_bird.c:90: initarand(seed);
	ld	(hl-), a
	ld	a, (hl+)
	ld	b, (hl)
	ld	c, a
	push	bc
	call	_initarand
	pop	hl
;flappy_bird.c:91: wait_vbl_done();
	call	_wait_vbl_done
;flappy_bird.c:92: while (1)
00175$:
;flappy_bird.c:94: joypad_state = joypad();
	call	_joypad
	ld	(#_joypad_state),a
;flappy_bird.c:95: if (gravity == 1)
	ld	a, (#_gravity)
	dec	a
	jp	NZ, 00135$
;flappy_bird.c:97: ++drop_speed_sub;
	ld	hl, #_drop_speed_sub
	inc	(hl)
;flappy_bird.c:98: if (drop_speed_sub >= 5)
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x85
	jr	C, 00107$
;flappy_bird.c:100: drop_speed_sub = 0;
	ld	(hl), #0x00
;flappy_bird.c:101: ++drop_speed;
	ld	hl, #_drop_speed
	inc	(hl)
	jr	00108$
00107$:
;flappy_bird.c:103: else if (drop_speed_sub <= -5)
	ld	hl, #_drop_speed_sub
	ld	e, (hl)
	ld	a,#0xfb
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00466$
	bit	7, d
	jr	NZ, 00467$
	cp	a, a
	jr	00467$
00466$:
	bit	7, d
	jr	Z, 00467$
	scf
00467$:
	jr	C, 00108$
;flappy_bird.c:105: drop_speed_sub = 0;
	xor	a, a
	ld	(#_drop_speed_sub),a
;flappy_bird.c:106: --drop_speed;
	ld	hl, #_drop_speed
	dec	(hl)
00108$:
;flappy_bird.c:108: if ((drop_speed >= 3) && (drop_speed <= -3))
	ld	hl, #_drop_speed
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x83
	jr	C, 00115$
	ld	e, (hl)
	ld	a,#0xfd
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00468$
	bit	7, d
	jr	NZ, 00469$
	cp	a, a
	jr	00469$
00468$:
	bit	7, d
	jr	Z, 00469$
	scf
00469$:
	jr	C, 00115$
;flappy_bird.c:110: if (drop_speed < 0)
	ld	hl, #_drop_speed
	bit	7, (hl)
	jr	Z, 00112$
;flappy_bird.c:111: drop_speed = -3;
	ld	(hl), #0xfd
	jr	00115$
00112$:
;flappy_bird.c:112: else if (drop_speed > 0)
	ld	hl, #_drop_speed
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00470$
	bit	7, d
	jr	NZ, 00471$
	cp	a, a
	jr	00471$
00470$:
	bit	7, d
	jr	Z, 00471$
	scf
00471$:
	jr	NC, 00115$
;flappy_bird.c:113: drop_speed = 3;
	ld	hl, #_drop_speed
	ld	(hl), #0x03
00115$:
;flappy_bird.c:115: bird_y += drop_speed;
	ld	a, (_bird_y)
	ld	hl, #_drop_speed
	add	a, (hl)
	ld	(#_bird_y),a
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
;flappy_bird.c:116: if ((drop_speed <= -2) && (drop_speed_sub <= -1))
	ld	hl, #_drop_speed
	ld	e, (hl)
	ld	a,#0xfe
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00472$
	bit	7, d
	jr	NZ, 00473$
	cp	a, a
	jr	00473$
00472$:
	bit	7, d
	jr	Z, 00473$
	scf
00473$:
	ld	a, #0x00
	rla
	ld	c, a
;flappy_bird.c:117: move_metasprite_ex(b00_metasprite0, 8, 0, 0, BIRD_X, bird_y);
	ld	a, (_bird_y)
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, a
	ld	e, #0x00
	ld	a, #0x1e
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), d
;flappy_bird.c:116: if ((drop_speed <= -2) && (drop_speed_sub <= -1))
	bit	0, c
	jr	NZ, 00131$
	ld	hl, #_drop_speed_sub
	ld	e, (hl)
	ld	a,#0xff
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00474$
	bit	7, d
	jr	NZ, 00475$
	cp	a, a
	jr	00475$
00474$:
	bit	7, d
	jr	Z, 00475$
	scf
00475$:
	jr	C, 00131$
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_b00_metasprite0)
	inc	hl
	ld	(hl), #>(_b00_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x08
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(#___current_base_prop),a
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	pop	de
	push	de
	xor	a, a
	call	___move_metasprite
;flappy_bird.c:117: move_metasprite_ex(b00_metasprite0, 8, 0, 0, BIRD_X, bird_y);
	jp	00135$
00131$:
;flappy_bird.c:118: else if (drop_speed <= -2)
	bit	0, c
	jr	NZ, 00128$
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_b00_metasprite0)
	inc	hl
	ld	(hl), #>(_b00_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x04
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(#___current_base_prop),a
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	pop	de
	push	de
	xor	a, a
	call	___move_metasprite
;flappy_bird.c:119: move_metasprite_ex(b00_metasprite0, 4, 0, 0, BIRD_X, bird_y);
	jp	00135$
00128$:
;flappy_bird.c:120: else if ((drop_speed >= 2) && (drop_speed_sub >= 1))
	ld	a, (#_drop_speed)
	xor	a, #0x80
	sub	a, #0x82
	ld	a, #0x00
	rla
	ld	c, a
	bit	0, c
	jr	NZ, 00124$
	ld	a, (#_drop_speed_sub)
	xor	a, #0x80
	sub	a, #0x81
	jr	C, 00124$
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_b00_metasprite0)
	inc	hl
	ld	(hl), #>(_b00_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x10
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(#___current_base_prop),a
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	pop	de
	push	de
	xor	a, a
	call	___move_metasprite
;flappy_bird.c:121: move_metasprite_ex(b00_metasprite0, 16, 0, 0, BIRD_X, bird_y);
	jr	00135$
00124$:
;flappy_bird.c:122: else if (drop_speed >= 2)
	bit	0, c
	jr	NZ, 00121$
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_b00_metasprite0)
	inc	hl
	ld	(hl), #>(_b00_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x0c
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(#___current_base_prop),a
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	pop	de
	push	de
	xor	a, a
	call	___move_metasprite
;flappy_bird.c:123: move_metasprite_ex(b00_metasprite0, 12, 0, 0, BIRD_X, bird_y);
	jr	00135$
00121$:
;flappy_bird.c:124: else if ((drop_speed < 1) && (drop_speed > -1))
	ld	hl, #_drop_speed
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x81
	jr	NC, 00135$
	ld	e, (hl)
	ld	a,#0xff
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00476$
	bit	7, d
	jr	NZ, 00477$
	cp	a, a
	jr	00477$
00476$:
	bit	7, d
	jr	Z, 00477$
	scf
00477$:
	jr	NC, 00135$
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_b00_metasprite0)
	inc	hl
	ld	(hl), #>(_b00_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(#___current_base_tile), a
	ld	(#___current_base_prop),a
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	pop	de
	push	de
	xor	a, a
	call	___move_metasprite
;flappy_bird.c:125: move_metasprite_ex(b00_metasprite0, 0, 0, 0, BIRD_X, bird_y);
00135$:
;flappy_bird.c:127: if ((cgb_enable == 1) && (bird_flap_wing == 1))
	ld	a, (#_cgb_enable)
	dec	a
	jr	NZ, 00143$
	ld	a, (#_bird_flap_wing)
	dec	a
	jr	NZ, 00143$
;flappy_bird.c:129: if (bird_frame_delay >= 5)
	ld	a, (#_bird_frame_delay)
	sub	a, #0x05
	jr	C, 00139$
;flappy_bird.c:131: ++bird_frame;
	ld	hl, #_bird_frame
	inc	(hl)
;flappy_bird.c:132: bird_frame_delay = 0;
	xor	a, a
	ld	(#_bird_frame_delay),a
;flappy_bird.c:133: if (bird_frame >= 4)
	ld	hl, #_bird_frame
	ld	a, (hl)
	sub	a, #0x04
	jr	C, 00140$
;flappy_bird.c:134: bird_frame = 0;
	ld	(hl), #0x00
	jr	00140$
00139$:
;flappy_bird.c:137: bird_frame_delay++;
	ld	hl, #_bird_frame_delay
	inc	(hl)
00140$:
;flappy_bird.c:138: for (temp0 = 0; temp0 < 5; ++temp0)
	xor	a, a
	ld	(#_temp0),a
00192$:
;flappy_bird.c:139: set_sprite_data(temp0 * 4, 4, bird_tiles[bird_frame][temp0]);
	ld	a, (_bird_frame)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	ld	de, #_bird_tiles
	add	hl, de
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (_temp0)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (_temp0)
	add	a, a
	add	a, a
	push	bc
	ld	h, #0x04
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;flappy_bird.c:138: for (temp0 = 0; temp0 < 5; ++temp0)
	ld	hl, #_temp0
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x05
	jr	C, 00192$
00143$:
;flappy_bird.c:141: if (state == 0)
	ld	a, (#_state)
;flappy_bird.c:143: gravity = 0;
	or	a,a
	jr	NZ, 00172$
	ld	(#_gravity),a
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_title_metasprite0)
	inc	hl
	ld	(hl), #>(_title_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x14
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x5a58
	ld	a, #0x02
	call	___move_metasprite
;flappy_bird.c:145: hUGE_mute_channel(HT_CH3, HT_CH_MUTE);
	ld	e, #0x01
	ld	a, #0x02
	call	_hUGE_mute_channel
;flappy_bird.c:146: hUGE_mute_channel(HT_CH4, HT_CH_MUTE);
	ld	e, #0x01
	ld	a, #0x03
	call	_hUGE_mute_channel
;flappy_bird.c:147: if (joypad_state & J_A)
	ld	a, (_joypad_state)
	bit	4, a
	jr	Z, 00146$
;flappy_bird.c:149: hUGE_mute_channel(HT_CH3, HT_CH_PLAY);
	ld	e, #0x00
	ld	a, #0x02
	call	_hUGE_mute_channel
;flappy_bird.c:150: hUGE_mute_channel(HT_CH4, HT_CH_PLAY);
	ld	e, #0x00
	ld	a, #0x03
	call	_hUGE_mute_channel
;flappy_bird.c:152: gravity = 1;
	ld	hl, #_gravity
	ld	(hl), #0x01
;flappy_bird.c:153: state = 1;
	ld	hl, #_state
	ld	(hl), #0x01
;flappy_bird.c:154: drop_speed = -2;
	ld	hl, #_drop_speed
	ld	(hl), #0xfe
;flappy_bird.c:155: drop_speed_sub = -1;
	ld	hl, #_drop_speed_sub
	ld	(hl), #0xff
;f:\gbdk\include\gb\metasprites.h:160: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_title_metasprite0)
	inc	hl
	ld	(hl), #>(_title_metasprite0)
;f:\gbdk\include\gb\metasprites.h:161: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x14
;f:\gbdk\include\gb\metasprites.h:162: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x01
;f:\gbdk\include\gb\metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	a, #0x02
	call	___move_metasprite
;flappy_bird.c:156: move_metasprite_ex(title_metasprite0, 20, 1, 2, 0, 0);
00146$:
;flappy_bird.c:158: ++scroll_x;
	ld	hl, #_scroll_x
	inc	(hl)
;flappy_bird.c:159: move_bkg(scroll_x, 0);
	ld	a, (hl)
	ldh	(_SCX_REG + 0), a
;f:\gbdk\include\gb\gb.h:1461: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCY_REG + 0), a
;flappy_bird.c:159: move_bkg(scroll_x, 0);
	jp	00173$
00172$:
;flappy_bird.c:161: else if (state == 1)
	ld	a, (#_state)
	dec	a
	jp	NZ, 00169$
;flappy_bird.c:163: if ((joypad_state & J_A) && (!(joypad_state_last & J_A)))
	ld	a, (_joypad_state)
	bit	4, a
	jr	Z, 00148$
	ld	a, (_joypad_state_last)
	bit	4, a
	jr	NZ, 00148$
;flappy_bird.c:165: play_sfx_ch0(sfx_jump);
	ld	de, #_sfx_jump
	call	_play_sfx_ch0
;flappy_bird.c:166: drop_speed = -2;
	ld	hl, #_drop_speed
	ld	(hl), #0xfe
;flappy_bird.c:167: drop_speed_sub = -1;
	ld	hl, #_drop_speed_sub
	ld	(hl), #0xff
00148$:
;flappy_bird.c:169: if (joypad_state & J_START)
	ld	a, (_joypad_state)
	rlca
	jr	NC, 00151$
;flappy_bird.c:171: play_sfx_ch1(sfx_pause);
	ld	de, #_sfx_pause
	call	_play_sfx_ch1
;flappy_bird.c:172: hUGE_mute_channel(HT_CH1, HT_CH_MUTE);
	ld	e, #0x01
	xor	a, a
	call	_hUGE_mute_channel
;flappy_bird.c:173: hUGE_mute_channel(HT_CH2, HT_CH_MUTE);
	ld	a,#0x01
	ld	e,a
	call	_hUGE_mute_channel
;flappy_bird.c:174: hUGE_mute_channel(HT_CH3, HT_CH_MUTE);
	ld	e, #0x01
	ld	a, #0x02
	call	_hUGE_mute_channel
;flappy_bird.c:175: hUGE_mute_channel(HT_CH4, HT_CH_MUTE);
	ld	e, #0x01
	ld	a, #0x03
	call	_hUGE_mute_channel
;flappy_bird.c:176: delay(20);
	ld	de, #0x0014
	call	_delay
;flappy_bird.c:177: waitpadup();
	call	_waitpadup
;flappy_bird.c:178: waitpad(J_START);
	ld	a, #0x80
	call	_waitpad
;flappy_bird.c:179: waitpadup();
	call	_waitpadup
;flappy_bird.c:180: hUGE_mute_channel(HT_CH1, HT_CH_PLAY);
	xor	a, a
	ld	e, a
	call	_hUGE_mute_channel
;flappy_bird.c:181: hUGE_mute_channel(HT_CH2, HT_CH_PLAY);
	ld	e, #0x00
	ld	a, #0x01
	call	_hUGE_mute_channel
;flappy_bird.c:182: hUGE_mute_channel(HT_CH3, HT_CH_PLAY);
	ld	e, #0x00
	ld	a, #0x02
	call	_hUGE_mute_channel
;flappy_bird.c:183: hUGE_mute_channel(HT_CH4, HT_CH_PLAY);
	ld	e, #0x00
	ld	a, #0x03
	call	_hUGE_mute_channel
00151$:
;flappy_bird.c:185: if ((bird_y >= 137) || (bird_y <= 20))
	ld	hl, #_bird_y
	ld	a, (hl)
	sub	a, #0x89
	jr	NC, 00152$
	ld	a, #0x14
	sub	a, (hl)
	jr	C, 00153$
00152$:
;flappy_bird.c:187: bird_flap_wing = 0;
	xor	a, a
	ld	(#_bird_flap_wing),a
;flappy_bird.c:188: state = 2;
	ld	hl, #_state
	ld	(hl), #0x02
00153$:
;flappy_bird.c:190: if ((scroll_x - 48) % 64 == 0)
	ld	a, (_scroll_x)
	ld	c, #0x00
	add	a, #0xd0
	ld	e, a
	ld	a, c
	adc	a, #0xff
	ld	bc, #0x0040
	ld	d, a
	call	__modsint
	ld	a, b
	or	a, c
	jr	NZ, 00156$
;flappy_bird.c:192: set_bkg_tiles((scroll_x >> 3) - 2, 0, 2, 17, pipes_map + (rand() % 5) * 2);
	call	_rand
	ld	a, e
	ld	e, #0x05
	call	__moduchar
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	de, #_pipes_map
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #_scroll_x
	ld	a, (hl)
	swap	a
	rlca
	and	a, #0x1f
	dec	a
	dec	a
	push	bc
	ld	h, #0x11
	push	hl
	inc	sp
	ld	h, #0x02
	push	hl
	inc	sp
	ld	h, #0x00
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
00156$:
;flappy_bird.c:194: touched = get_vram_byte(get_bkg_xy_addr((BIRD_X + scroll_x) >> 3,( bird_y >> 3) - 2));
	ld	a, (#_bird_y)
	swap	a
	rlca
	and	a, #0x1f
	ld	b, a
	dec	b
	dec	b
	ld	a, (_scroll_x)
	ld	e, a
	ld	d, #0x00
	ld	hl, #0x001e
	add	hl, de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a, l
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_get_bkg_xy_addr
	pop	hl
	call	_get_vram_byte
	ld	hl, #_touched
	ld	(hl), a
;flappy_bird.c:195: if ((touched >= 0x4D) && (touched != 0x53))
	ld	a, (hl)
	sub	a, #0x4d
	jr	C, 00158$
	ld	a, (hl)
	sub	a, #0x53
	jr	Z, 00158$
;flappy_bird.c:196: state = 2;
	ld	hl, #_state
	ld	(hl), #0x02
00158$:
;flappy_bird.c:197: ++scroll_x;
	ld	hl, #_scroll_x
	inc	(hl)
;flappy_bird.c:198: move_bkg(scroll_x, 0);
	ld	a, (hl)
	ldh	(_SCX_REG + 0), a
;f:\gbdk\include\gb\gb.h:1461: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCY_REG + 0), a
;flappy_bird.c:198: move_bkg(scroll_x, 0);
	jp	00173$
00169$:
;flappy_bird.c:200: else if (state == 2)
	ld	a, (#_state)
	sub	a, #0x02
	jr	NZ, 00173$
;flappy_bird.c:202: hUGE_mute_channel(HT_CH3, HT_CH_MUTE);
	ld	e, #0x01
	ld	a, #0x02
	call	_hUGE_mute_channel
;flappy_bird.c:203: hUGE_mute_channel(HT_CH4, HT_CH_MUTE);
	ld	e, #0x01
	ld	a, #0x03
	call	_hUGE_mute_channel
;flappy_bird.c:204: if ((joypad_state & J_START) && (!(joypad_state_last & J_START)))
	ld	a, (_joypad_state)
	rlca
	jr	NC, 00161$
	ld	a, (_joypad_state_last)
	rlca
	jr	C, 00161$
;flappy_bird.c:206: scroll_x = 0;
;f:\gbdk\include\gb\gb.h:1461: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ld	(#_scroll_x), a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
;flappy_bird.c:77: set_bkg_tiles(0, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
	ld	bc, #_bg_map
;flappy_bird.c:208: set_bkg_tiles(0, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
	push	bc
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;flappy_bird.c:209: set_bkg_tiles(bg_WIDTH / 8, 0, bg_WIDTH / 8, bg_HEIGHT / 8, bg_map);
	push	bc
	ld	hl, #0x1214
	push	hl
	ld	hl, #0x14
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;flappy_bird.c:210: bird_flap_wing = 1;
	ld	hl, #_bird_flap_wing
	ld	(hl), #0x01
;flappy_bird.c:211: state = 0;
;flappy_bird.c:212: drop_speed = 0;
	xor	a, a
	ld	(#_state), a
	ld	(#_drop_speed),a
;flappy_bird.c:213: drop_speed_sub = 0;
	xor	a, a
	ld	(#_drop_speed_sub),a
;flappy_bird.c:214: bird_y = 90;
	ld	hl, #_bird_y
	ld	(hl), #0x5a
;flappy_bird.c:215: wait_vbl_done();
	call	_wait_vbl_done
00161$:
;flappy_bird.c:217: if (!(bird_y >= 137))
	ld	a, (#_bird_y)
	sub	a, #0x89
	jr	NC, 00164$
;flappy_bird.c:219: gravity = 1;
	ld	hl, #_gravity
	ld	(hl), #0x01
;flappy_bird.c:220: bird_flap_wing = 1;
	ld	hl, #_bird_flap_wing
	ld	(hl), #0x01
	jr	00173$
00164$:
;flappy_bird.c:224: bird_flap_wing = 0;
;flappy_bird.c:225: gravity = 0;
	xor	a, a
	ld	(#_bird_flap_wing), a
	ld	(#_gravity),a
;flappy_bird.c:226: bird_y = 137;
	ld	hl, #_bird_y
	ld	(hl), #0x89
00173$:
;flappy_bird.c:229: joypad_state_last = joypad_state;
	ld	a, (#_joypad_state)
	ld	(#_joypad_state_last),a
;flappy_bird.c:230: wait_vbl_done();
	call	_wait_vbl_done
	jp	00175$
;flappy_bird.c:232: }
	inc	sp
	inc	sp
	ret
_sfx_jump:
	.db #0x27	; 39
	.db #0x83	; 131
	.db #0xf1	; 241
	.db #0x40	; 64
	.db #0x86	; 134
	.db #0x00	; 0
_sfx_pause:
	.db #0x41	; 65	'A'
	.db #0xf1	; 241
	.db #0xd6	; 214
	.db #0xc6	; 198
	.db #0x05	; 5
	.db #0x41	; 65	'A'
	.db #0xf1	; 241
	.db #0x1c	; 28
	.db #0xc7	; 199
	.db #0x05	; 5
	.db #0x41	; 65	'A'
	.db #0xf1	; 241
	.db #0xd6	; 214
	.db #0xc6	; 198
	.db #0x05	; 5
	.db #0x41	; 65	'A'
	.db #0xf1	; 241
	.db #0x1c	; 28
	.db #0xc7	; 199
	.db #0x05	; 5
	.db #0x41	; 65	'A'
	.db #0xf1	; 241
	.db #0xd6	; 214
	.db #0xc6	; 198
	.db #0x00	; 0
	.area _CODE
	.area _INITIALIZER
__xinit__b0_tiles_s:
	.dw _b00_tiles
	.dw _ba320_tiles
	.dw _ba640_tiles
	.dw _bu320_tiles
	.dw _bu640_tiles
__xinit__b1_tiles_s:
	.dw _b01_tiles
	.dw _ba321_tiles
	.dw _ba641_tiles
	.dw _bu321_tiles
	.dw _bu641_tiles
__xinit__b2_tiles_s:
	.dw _b02_tiles
	.dw _ba322_tiles
	.dw _ba642_tiles
	.dw _bu322_tiles
	.dw _bu642_tiles
__xinit__bird_tiles:
	.dw _b0_tiles_s
	.dw _b1_tiles_s
	.dw _b2_tiles_s
	.dw _b1_tiles_s
	.area _CABS (ABS)
