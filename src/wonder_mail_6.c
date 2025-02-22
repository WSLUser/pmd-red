#include "global.h"
#include "memory.h"
#include "input.h"
#include "file_system.h"
#include "text.h"
#include "pokemon.h"
#include "menu.h"
#include "code_8094F88.h"

extern bool8 sub_8030C20(u32);

struct unkStruct_203B328
{
    // size: 0x11C
    u32 state;
    u8 unk4;
    u32 unk8;
    u8 fillC[0x58 - 0xC];
    u32 unk58;
    u8 fill5C[0xA8 - 0x5C];
    struct UnkTextStruct2 unkA8[4];
    /* 0x108 */ struct OpenedFile *faceFile;
    /* 0x10C */ u8 *faceData;
    u16 unk110;
    u16 unk112;
    /* 0x114 */ u8 unk114;
    /* 0x115 */ u8 unk115;
    /* 0x116 */ u8 unk116;
    u32 wonderMailMode;
};
extern struct unkStruct_203B328 *gUnknown_203B328;
extern struct unkStruct_203B480 *gUnknown_203B480;

extern u8 gUnknown_80E0A0C[];
extern u8 gUnknown_80E09D8[];

extern struct UnkTextStruct2 gUnknown_80E0990;
extern struct UnkTextStruct2 gUnknown_80E09A8;
extern struct MenuItem gUnknown_80E0968;
extern struct UnkTextStruct2 gUnknown_80E09C0;
extern struct MenuItem gUnknown_80E0948;

extern void sub_8012CAC(struct UnkTextStruct2 *, struct MenuItem *);
extern void sub_80306A8(s32, u32, u32, u32);
extern void sub_80141B4(char *r0, u32, struct OpenedFile **r1, u32);
extern void sub_8031300(void);
extern void sub_803136C(void);
extern void sub_80313D8(u32);
extern void sub_8031498(void);
extern void sub_803084C(void);
extern void sub_80310FC();
extern void sub_8031258();
extern u32 sub_8030768(u32);
extern u8 sub_80307EC(void);
extern u32 sub_8030DA0(void);
extern void sub_8030DE4();

extern void sub_8030810(u32);
extern void sub_803092C(void);
extern void sub_8030D40(u8, u32);
extern void sub_8012EA4(u32 *, u32);
extern void sub_8012D60(u32 *, struct MenuItem *, u32, u32, u32, u32);
extern u8 sub_8012FD8(u32 *);
extern void sub_8013114(u32 *, s32 *);
extern void sub_8095240(u8);

bool8 sub_8030F58(u32 wonderMailMode)
{
  struct OpenedFile *iVar3;
  
  ResetUnusedInputStruct();
  sub_800641C(0,1,1);
  if (gUnknown_203B328 == NULL) {
    gUnknown_203B328 = MemoryAlloc(sizeof(struct unkStruct_203B328),8);
    MemoryFill8((u8 *)gUnknown_203B328,0,sizeof(struct unkStruct_203B328));
  }
  gUnknown_203B328->wonderMailMode = wonderMailMode;
  iVar3 = GetDialogueSpriteDataPtr(SPECIES_PELIPPER);
  gUnknown_203B328->faceFile = iVar3;
  gUnknown_203B328->faceData = iVar3->data;
  gUnknown_203B328->unk114 = 0;
  gUnknown_203B328->unk115 = 0;
  gUnknown_203B328->unk116 = 0;
  gUnknown_203B328->unk110 = 2;
  gUnknown_203B328->unk112 = 8;

  if (sub_8030C20(wonderMailMode)) {
    switch(wonderMailMode)
    {
        case 2:
            // "You don{APOSTROPHE}t have any {COLOR_1 LIGHT_BLUE_2}SOS Mail{END_COLOR_TEXT_1}.\0"
            sub_80141B4(gUnknown_80E09D8,0,&gUnknown_203B328->faceFile,0x101);
            break;
        case 4:
            // "You don{APOSTROPHE}t have any {COLOR_1 LIGHT_BLUE_2}A-OK Mail{END_COLOR_TEXT_1}.\0"
            sub_80141B4(gUnknown_80E0A0C,0,&gUnknown_203B328->faceFile,0x101);
            break;
    }
    gUnknown_203B328->state = 5;
  }
  else {
    gUnknown_203B328->state = 0;
    sub_80306A8(wonderMailMode,0,0,8);
  }
  return TRUE;
}

s32 sub_8031050(void)
{
    switch(gUnknown_203B328->state)
    {
        case 0:
            sub_8031300();
            break;
        case 1:
            sub_803136C();
            break;
        case 2:
        case 3:
            sub_80313D8(gUnknown_203B328->state);
            break;
        case 4:
            sub_8031498();
            break;
        case 5:
        case 6:
            return 3;
    }
    return 0;
}

void sub_80310B4(void)
{
    sub_803084C();
    if (gUnknown_203B328 != NULL) {
        CloseFile(gUnknown_203B328->faceFile);
        MemoryFree(gUnknown_203B328);
        gUnknown_203B328 = NULL;
    }
}

void sub_80310E4(u32 newState)
{
    gUnknown_203B328->state = newState;
    sub_80310FC();
    sub_8031258();
}

void sub_80310FC(void)
{
    sub_8006518(gUnknown_203B328->unkA8);
    switch(gUnknown_203B328->state)
    {
        case 0:
            gUnknown_203B328->unkA8[1] = gUnknown_80E0990;
            gUnknown_203B328->unkA8[2] = gUnknown_80E0990;
            gUnknown_203B328->unkA8[3] = gUnknown_80E0990;
            break;
        case 1:
            gUnknown_203B328->unkA8[1] = gUnknown_80E09A8;
            gUnknown_203B328->unkA8[2] = gUnknown_80E0990;
            gUnknown_203B328->unkA8[3] = gUnknown_80E0990;
            sub_8012CAC(&gUnknown_203B328->unkA8[1], &gUnknown_80E0968);
            break;
        case 2:
        case 3:
            gUnknown_203B328->unkA8[2] = gUnknown_80E09C0;
            sub_8012CAC(&gUnknown_203B328->unkA8[2], &gUnknown_80E0948);
            break;
        case 4:
            gUnknown_203B328->unkA8[0] = gUnknown_80E0990;
            gUnknown_203B328->unkA8[1] = gUnknown_80E0990;
            gUnknown_203B328->unkA8[2] = gUnknown_80E0990;
            gUnknown_203B328->unkA8[3] = gUnknown_80E0990;
            break;
        case 5:
        case 6:
        default:
            ResetUnusedInputStruct();
            sub_800641C(0, 1, 1);
            break;
    }
    ResetUnusedInputStruct();
    sub_800641C(gUnknown_203B328->unkA8, 1, 1);
}

void sub_8031258(void)
{
    switch(gUnknown_203B328->state)
    {
        case 0:
            sub_8030810(1);
            break;
        case 1:
            sub_803092C();
            sub_8012D60(&gUnknown_203B328->unk8, &gUnknown_80E0968, 0, 0, 4, 1);
            break;
        case 2:
        case 3:
            sub_803092C();
            sub_8012EA4(&gUnknown_203B328->unk8, 0);
            sub_8012D60(&gUnknown_203B328->unk58, &gUnknown_80E0948, 0, 0, 3, 2);
            break;
        case 4:
            sub_8030D40(gUnknown_203B328->unk4, 3);
            break;
        case 5:
        case 6:
        default:
            break;
    }
}

void sub_8031300(void)
{
    switch(sub_8030768(1))
    {
        case 3:
            gUnknown_203B328->unk4 = sub_80307EC();
            sub_80310E4(1);
            break;
        case 4:
            gUnknown_203B328->unk4 = sub_80307EC();
            sub_80310E4(4);
            break;
        case 2:
            sub_80310E4(6);
            break;
        case 0:
        case 1:
            break;
    }
}

void sub_803136C(void)
{
  s32 local_c;
  
  local_c = 0;
  sub_8030768(0);
  if (sub_8012FD8(&gUnknown_203B328->unk8) == '\0') {
    sub_8013114(&gUnknown_203B328->unk8,&local_c);
  }

  switch(local_c)
  {
    case 1:
        sub_80310E4(0);
        break;
    case 6:
        sub_80310E4(3);
        break;
    case 4:
        sub_80310E4(2);
        break;
    case 5:
        sub_80310E4(4);
        break;

  }
}

#ifdef NONMATCHING
void sub_80313D8(u32 param_1)
{
  s32 iVar2;
  s32 local_10;
  
  local_10 = 0;
  sub_8030768(0);
  sub_8012FD8(&gUnknown_203B328->unk8);
  if (sub_8012FD8(&gUnknown_203B328->unk58) == '\0') {
    sub_8013114(&gUnknown_203B328->unk58,&local_10);
  }

  switch(local_10)
  {
    case 1:
    case 3:
        sub_80310E4(0);
        break;
    case 2:
        switch(param_1)
        {
            case 2:
                sub_8095240(gUnknown_203B328->unk4);
                break;
            case 3:
                for(iVar2 = 0; iVar2 < 0x20; iVar2++)
                {
                    gUnknown_203B480[iVar2].unk0 = 0;
                    gUnknown_203B480[iVar2].unk22 = 0;
                }
                break;
        }
        if ((gUnknown_203B328->wonderMailMode == 2) || (gUnknown_203B328->wonderMailMode == 4)) {
            if (sub_8030C20(gUnknown_203B328->wonderMailMode) != '\0') {
                sub_80310E4(5);
            }
            else {
                sub_80310E4(0);
            }
        }
        break;

  }
}
#else
NAKED
void sub_80313D8(u32 param_1)
{
    asm_unified(
	"\tpush {r4,r5,lr}\n"
	"\tsub sp, 0x4\n"
	"\tadds r5, r0, 0\n"
	"\tmovs r0, 0\n"
	"\tstr r0, [sp]\n"
	"\tbl sub_8030768\n"
	"\tldr r4, _08031418\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0x8\n"
	"\tbl sub_8012FD8\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0x58\n"
	"\tbl sub_8012FD8\n"
	"\tlsls r0, 24\n"
	"\tcmp r0, 0\n"
	"\tbne _08031408\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0x58\n"
	"\tmov r1, sp\n"
	"\tbl sub_8013114\n"
"_08031408:\n"
	"\tldr r0, [sp]\n"
	"\tcmp r0, 0x2\n"
	"\tbeq _08031428\n"
	"\tcmp r0, 0x2\n"
	"\tbgt _0803141C\n"
	"\tcmp r0, 0x1\n"
	"\tbeq _08031420\n"
	"\tb _0803148E\n"
	"\t.align 2, 0\n"
"_08031418: .4byte gUnknown_203B328\n"
"_0803141C:\n"
	"\tcmp r0, 0x3\n"
	"\tbne _0803148E\n"
"_08031420:\n"
	"\tmovs r0, 0\n"
	"\tbl sub_80310E4\n"
	"\tb _0803148E\n"
"_08031428:\n"
	"\tcmp r5, 0x2\n"
	"\tbeq _08031432\n"
	"\tcmp r5, 0x3\n"
	"\tbeq _0803143C\n"
	"\tb _0803145A\n"
"_08031432:\n"
	"\tldr r0, [r4]\n"
	"\tldrb r0, [r0, 0x4]\n"
	"\tbl sub_8095240\n"
	"\tb _0803145A\n"
"_0803143C:\n"
	"\tldr r4, _08031480\n"
	"\tmovs r3, 0\n"
	"\tmovs r1, 0\n"
	"\tmovs r2, 0x1F\n"
"_08031444:\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, r1\n"
	"\tstrb r3, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, r1\n"
	"\tadds r0, 0x22\n"
	"\tstrb r3, [r0]\n"
	"\tadds r1, 0x30\n"
	"\tsubs r2, 0x1\n"
	"\tcmp r2, 0\n"
	"\tbge _08031444\n"
"_0803145A:\n"
	"\tldr r0, _08031484\n"
	"\tldr r0, [r0]\n"
	"\tmovs r1, 0x8C\n"
	"\tlsls r1, 1\n"
	"\tadds r0, r1\n"
	"\tldr r0, [r0]\n"
	"\tcmp r0, 0x2\n"
	"\tbeq _0803146E\n"
	"\tcmp r0, 0x4\n"
	"\tbne _0803148E\n"
"_0803146E:\n"
	"\tbl sub_8030C20\n"
	"\tlsls r0, 24\n"
	"\tcmp r0, 0\n"
	"\tbeq _08031488\n"
	"\tmovs r0, 0x5\n"
	"\tbl sub_80310E4\n"
	"\tb _0803148E\n"
	"\t.align 2, 0\n"
"_08031480: .4byte gUnknown_203B480\n"
"_08031484: .4byte gUnknown_203B328\n"
"_08031488:\n"
	"\tmovs r0, 0\n"
	"\tbl sub_80310E4\n"
"_0803148E:\n"
	"\tadd sp, 0x4\n"
	"\tpop {r4,r5}\n"
	"\tpop {r0}\n"
	"\tbx r0"
    );
}
#endif

void sub_8031498(void)
{
    switch(sub_8030DA0())
    {
        case 0:
        case 1:
            break;
        case 2:
        case 3:
            sub_8030DE4();
            sub_80310E4(0);
            break;
    }
}

