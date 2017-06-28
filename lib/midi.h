#ifndef PICLIB_MIDI_H
#define PICLIB_MIDI_H 1

#include "typedef.h"

#define MIDI_NOTE_ON  0b10010000
#define MIDI_NOTE_OFF 0b10000000
#define MIDI_DEF_VELO 0b00111111
#define MIDI_MAX_VELO 0b01111111


#define MIDI_NOTE_C__1  0
#define MIDI_NOTE_Db_1  1
#define MIDI_NOTE_D__1  2
#define MIDI_NOTE_Eb_1  3
#define MIDI_NOTE_E__1  4
#define MIDI_NOTE_F__1  5
#define MIDI_NOTE_Gb_1  6
#define MIDI_NOTE_G__1  7
#define MIDI_NOTE_Ab_1  8
#define MIDI_NOTE_A__1  9
#define MIDI_NOTE_Bb_1 10
#define MIDI_NOTE_B__1 11
#define MIDI_NOTE_C_0  12
#define MIDI_NOTE_Db0  13
#define MIDI_NOTE_D_0  14
#define MIDI_NOTE_Eb0  15
#define MIDI_NOTE_E_0  16
#define MIDI_NOTE_F_0  17
#define MIDI_NOTE_Gb0  18
#define MIDI_NOTE_G_0  19
#define MIDI_NOTE_Ab0  20
#define MIDI_NOTE_A_0  21
#define MIDI_NOTE_Bb0  22
#define MIDI_NOTE_B_0  23
#define MIDI_NOTE_C_1  24
#define MIDI_NOTE_Db1  25
#define MIDI_NOTE_D_1  26
#define MIDI_NOTE_Eb1  27
#define MIDI_NOTE_E_1  28
#define MIDI_NOTE_F_1  29
#define MIDI_NOTE_Gb1  30
#define MIDI_NOTE_G_1  31
#define MIDI_NOTE_Ab1  32
#define MIDI_NOTE_A_1  33
#define MIDI_NOTE_Bb1  34
#define MIDI_NOTE_B_1  35
#define MIDI_NOTE_C_2  36
#define MIDI_NOTE_Db2  37
#define MIDI_NOTE_D_2  38
#define MIDI_NOTE_Eb2  39
#define MIDI_NOTE_E_2  40
#define MIDI_NOTE_F_2  41
#define MIDI_NOTE_Gb2  42
#define MIDI_NOTE_G_2  43
#define MIDI_NOTE_Ab2  44
#define MIDI_NOTE_A_2  45
#define MIDI_NOTE_Bb2  46
#define MIDI_NOTE_B_2  47
#define MIDI_NOTE_C_3  48
#define MIDI_NOTE_Db3  49
#define MIDI_NOTE_D_3  50
#define MIDI_NOTE_Eb3  51
#define MIDI_NOTE_E_3  52
#define MIDI_NOTE_F_3  53
#define MIDI_NOTE_Gb3  54
#define MIDI_NOTE_G_3  55
#define MIDI_NOTE_Ab3  56
#define MIDI_NOTE_A_3  57
#define MIDI_NOTE_Bb3  58
#define MIDI_NOTE_B_3  59
#define MIDI_NOTE_C_4  60
#define MIDI_NOTE_Db4  61
#define MIDI_NOTE_D_4  62
#define MIDI_NOTE_Eb4  63
#define MIDI_NOTE_E_4  64
#define MIDI_NOTE_F_4  65
#define MIDI_NOTE_Gb4  66
#define MIDI_NOTE_G_4  67
#define MIDI_NOTE_Ab4  68
#define MIDI_NOTE_A_4  69
#define MIDI_NOTE_Bb4  70
#define MIDI_NOTE_B_4  71
#define MIDI_NOTE_C_5  72
#define MIDI_NOTE_Db5  73
#define MIDI_NOTE_D_5  74
#define MIDI_NOTE_Eb5  75
#define MIDI_NOTE_E_5  76
#define MIDI_NOTE_F_5  77
#define MIDI_NOTE_Gb5  78
#define MIDI_NOTE_G_5  79
#define MIDI_NOTE_Ab5  80
#define MIDI_NOTE_A_5  81
#define MIDI_NOTE_Bb5  82
#define MIDI_NOTE_B_5  83
#define MIDI_NOTE_C_6  84
#define MIDI_NOTE_Db6  85
#define MIDI_NOTE_D_6  86
#define MIDI_NOTE_Eb6  87
#define MIDI_NOTE_E_6  88
#define MIDI_NOTE_F_6  89
#define MIDI_NOTE_Gb6  90
#define MIDI_NOTE_G_6  91
#define MIDI_NOTE_Ab6  92
#define MIDI_NOTE_A_6  93
#define MIDI_NOTE_Bb6  94
#define MIDI_NOTE_B_6  95
#define MIDI_NOTE_C_7  96
#define MIDI_NOTE_Db7  97
#define MIDI_NOTE_D_7  98
#define MIDI_NOTE_Eb7  99
#define MIDI_NOTE_E_7 100
#define MIDI_NOTE_F_7 101
#define MIDI_NOTE_Gb7 102
#define MIDI_NOTE_G_7 103
#define MIDI_NOTE_Ab7 104
#define MIDI_NOTE_A_7 105
#define MIDI_NOTE_Bb7 106
#define MIDI_NOTE_B_7 107
#define MIDI_NOTE_C_8 108
typedef void (*putch_ptr)(uint8_t);

void
midi_send(const putch_ptr putch, uint8_t cmd, uint8_t d1, uint8_t d2, uint8_t chan);

#endif
 

