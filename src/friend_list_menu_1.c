#include "global.h"
#include "memory.h"
#include "text.h"
#include "input.h"
#include "menu.h"
#include "item.h"
#include "pokemon.h"
#include "moves.h"

struct unkStruct_203B2B4
{
    // size: 0x178
    s32 unk0;
    s32 state;
    u32 unk8;
    u8 unkC;
    u8 unkD;
    s16 unkE;
    u32 unk10;
    struct HeldItem unk14;
    u32 unk18;
    /* 0x1C */ struct PokemonStruct *pokeStruct;
    u32 unk20;
    u32 unk24;
    /* 0x28 */ struct PokemonMove moves[8];
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u8 fill7C[0xC8 - 0x7C]; 
    struct MenuItem unkC8[4];
    u8 fillE8[0x108 - 0xE8];
    s16 unk108[8];
    struct UnkTextStruct2 unk118[4];
};
extern struct unkStruct_203B2B4 *gUnknown_203B2B4;

extern struct UnkTextStruct2 gUnknown_80DD190;
extern struct UnkTextStruct2 gUnknown_80DD160;
extern struct UnkTextStruct2 gUnknown_80DD148;
extern struct UnkTextStruct2 gUnknown_80DD178;

extern u8 gAvailablePokemonNames[];
extern u8 gUnknown_80DD1A8[];
extern u8 gUnknown_80DD270[];
extern u8 gUnknown_80DD1C8[];
extern u8 gUnknown_80DD1EC[];
extern u8 gUnknown_80DD240[];

extern void sub_80141B4(const char *r0, u32, struct OpenedFile **r1, u32);
extern s16 sub_80A5728(void);
extern u8 sub_8002658(s16);
extern bool8 sub_8024108(u32);
extern void sub_8025434(s32);
extern void sub_80259F0(void);
extern void sub_8025A84(void);
extern void sub_8025BCC(void);
extern void sub_8025BE8(void);
extern void sub_8025C04(void);
extern void sub_8025CB4(void);
extern void sub_8025D90(void);
extern void sub_8025DAC(void);
extern void sub_8025E08(void);
extern void sub_8025E24(void);
extern void sub_8025E44(void);
extern void sub_802544C(void);
extern void sub_8025518(void);
extern void sub_8012CAC(struct UnkTextStruct2 *, struct MenuItem *);
extern void sub_8025728(void);
extern void sub_802591C(void);
extern u32 sub_801B3C0(struct ItemSlot *param_1);
extern void sub_8023868(u32, u32, u32, u32);
extern void sub_801F1B0(u32, u32);
extern void sub_801A5D8(u32,u32, u32, u32);
extern void sub_801A8D0(u32);
extern void sub_801A9E0(void);
extern void PlaySound(u32);
extern void sub_8012CAC(struct UnkTextStruct2 *, struct MenuItem *);
extern void sub_8012D60(u32 *, struct MenuItem *, u32, s16 *, u32, u32);
extern void sub_8024458(s16, u32);
extern void sub_801BEEC(s16);
extern void sub_8023B7C(u32);
extern void sub_8023DA4(void);

extern void sub_809401C(struct PokemonMove *, struct PokemonMove *); // TODO convert arg 0 to PokemonMove struct *
extern void sub_801EE10(u32, s16, struct PokemonMove *, u32, u32, u32);
extern void sub_8093560(u32, struct PokemonMove *, u32 *);
extern void sub_801F808(u32 *);
u32 sub_801602C(u32 r0, u8 *name);
extern void sub_8025E68(u32 , u32 *);

bool8 sub_80252F0(s32 param_1)
{
  
  if ((param_1 == 2) && (sub_8024108(4) != '\0')) {
    return FALSE;
  }
  else {
    gUnknown_203B2B4 = MemoryAlloc(0x178,8);
    gUnknown_203B2B4->unk70 = 0;
    gUnknown_203B2B4->unk0 = param_1;
    gUnknown_203B2B4->unkC = sub_8002658(sub_80A5728());
    gUnknown_203B2B4->unkD = 0;
    if (gUnknown_203B2B4->unk0 == 2) {
      sub_8025434(0);
    }
    else {
      sub_8025434(1);
    }
    return TRUE;
  }
}

u32 sub_8025354(void)
{
  switch(gUnknown_203B2B4->state) {
    case 0x13:
        return 3;
    case 1:
    case 2:
        sub_80259F0();
        break;
    case 3:
        sub_8025A84();
        break;
    case 4:
        sub_8025BCC();
        break;
    case 5:
        sub_8025BE8();
        break;
    case 0xb:
    case 0xc:
        sub_8025C04();
        break;
    case 0xd:
        sub_8025CB4();
        break;
    case 0xe:
        sub_8025D90();
        break;
    case 0xf:
    case 0x10:
        sub_8025DAC();
        break;
    case 0x11:
        sub_8025E08();
        break;
    case 0x12:
        sub_8025E24();
        break;
    default:
        sub_8025E44();
        break;
  }
  return 0;
}

u8 sub_802540C(void)
{
    return gUnknown_203B2B4->unkD;
}

void sub_8025418(void)
{
    if(gUnknown_203B2B4 != NULL)
    {
        MemoryFree(gUnknown_203B2B4);
        gUnknown_203B2B4 = NULL;
    }
}

void sub_8025434(s32 newState)
{
    gUnknown_203B2B4->state = newState;
    sub_802544C();
    sub_8025518();
}

void sub_802544C(void)
{
  s32 iVar5;
  
  sub_8006518(gUnknown_203B2B4->unk118);

  switch(gUnknown_203B2B4->state)
  {
    case 3:
        if (gUnknown_203B2B4->unk0 == 0) {
            gUnknown_203B2B4->unk118[3] = gUnknown_80DD190;
        }
        sub_8025728();
        gUnknown_203B2B4->unk118[2] = gUnknown_80DD160;
        sub_8012CAC(&gUnknown_203B2B4->unk118[2],gUnknown_203B2B4->unkC8);
        break;
    case 0xD:
        sub_802591C();
        gUnknown_203B2B4->unk118[2] = gUnknown_80DD178;
        sub_8012CAC(&gUnknown_203B2B4->unk118[2],gUnknown_203B2B4->unkC8);
        break;
    default:
        for(iVar5 = 0; iVar5 < 4; iVar5++)
        {
            gUnknown_203B2B4->unk118[iVar5] = gUnknown_80DD148;
        }
        break;

  }
  ResetUnusedInputStruct();
  sub_800641C(gUnknown_203B2B4->unk118,1,1);
}

void sub_8025518(void)
{
  u32 uVar3;
  struct ItemSlot item;

  switch(gUnknown_203B2B4->state)
  {
    case 0:
        gUnknown_203B2B4->unk8 = 1;
        sub_80141B4(gUnknown_80DD1A8,0,0,0x301);
        break;
    case 1:
        uVar3 = 4;
        if (gUnknown_203B2B4->unk0 == 0) {
            uVar3 = 2;
        }
        sub_8023868(uVar3,0,0,10);
        break;
    case 2:
        sub_8023B7C(1);
        break;
    case 3:
        if (gUnknown_203B2B4->unk0 == 0) {
            sub_8025E68(3,&gUnknown_203B2B4->unk18);
        }
        sub_8023DA4();
        PrintColoredPokeNameToBuffer(gAvailablePokemonNames,gUnknown_203B2B4->pokeStruct,7);
        PrintColoredPokeNameToBuffer(gAvailablePokemonNames + 0x50,gUnknown_203B2B4->pokeStruct,6);
        sub_8012D60(&gUnknown_203B2B4->unk78,gUnknown_203B2B4->unkC8,0,gUnknown_203B2B4->unk108,gUnknown_203B2B4->unk70,2);
        break;
    case 4:
        sub_8024458(gUnknown_203B2B4->unkE,2);
        break;
    case 5:
        sub_801BEEC(gUnknown_203B2B4->unkE);
        break;
    case 0xb:
        sub_801A5D8(1,0,0,10);
        break;
    case 0xc:
        sub_801A8D0(1);
        break;
    case 0xd:
        sub_801A9E0();
        sub_8012D60(&gUnknown_203B2B4->unk78,gUnknown_203B2B4->unkC8,0,gUnknown_203B2B4->unk108,gUnknown_203B2B4->unk74,2);
        break;
    case 0xe:
        HeldItemToSlot(&item, &gUnknown_203B2B4->unk14);
        sub_801B3C0(&item);
        break;
    case 8:
        gUnknown_203B2B4->unk8 = 2;
        sub_80141B4(gUnknown_80DD1C8,0,0,0x101);
        break;
    case 9:
        gUnknown_203B2B4->unk8 = 2;
        sub_80141B4(gUnknown_80DD1EC,0,0,0x101);
        break;
    case 10:
        gUnknown_203B2B4->unk8 = 2;
        sub_80141B4(gUnknown_80DD240,0,0,0x101);
        break;
    case 7:
        gUnknown_203B2B4->unk8 = 1;
        PlaySound(0xcf);
        sub_80141B4(gUnknown_80DD270,0,0,0x101);
        break;
    case 0xf:
        sub_809401C(gUnknown_203B2B4->moves,gUnknown_203B2B4->pokeStruct->moves);
        sub_801EE10(3,gUnknown_203B2B4->unkE,gUnknown_203B2B4->moves,0,0,0);
        break;
    case 0x10:
        sub_801F1B0(1,0);
        break;
    case 0x11:
        sub_8093560(gUnknown_203B2B4->unk20,gUnknown_203B2B4->moves,&gUnknown_203B2B4->unk68);
        sub_801F808(&gUnknown_203B2B4->unk68);
        break;
    case 0x12:
        sub_801602C(2,gUnknown_203B2B4->pokeStruct->name);
        break;
    case 0x13:
        break;
  }
}
