#include "global.h"
#include "input.h"
#include "gba/io_reg.h"
#include "memory.h"
#include "text.h"

struct AdventureLog
{
    // size: 0xA0
    u8 fill0[0x1A];
    /* 0x1A */ s16 unk1A;
    /* 0x1C */ s16 unk1C;
    /* 0x1E */ s16 currPage;
    s16 unk20;
    u8 fill22[0x34 - 0x22];
    u32 unk34;
    struct UnkTextStruct2 *unk38;
    struct UnkTextStruct2 unk3C[4];
    u8 unk9C[4];
};

extern struct AdventureLog *gAdventureLog;

const struct UnkTextStruct2 gUnknown_80E1FF0 = {
   0x00, 0x00, 0x00, 0x00,
   0x03, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00,
   0x00, 0x00,
   0x00, 0x00,
   NULL
};
const struct UnkTextStruct2 gUnknown_80E2008 = {
    0x00, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x02, 0x00,
    0x1A, 0x04,
    0x06, 0x00,
    NULL
};

// Adventure Log Text
const u8 gAdventureLogHeaderText[] = "Adventure Log";
const u8 gUnknown_80E2030[] = "~95~95~95~95~95~95~95~95~95~95~95~95~95~95~95 "; // string of ???????
const u8 fill_adven[] = "pksdir0";

void sub_8032084();
void DisplayAdventureLog();
extern void sub_8013818(void *, u32, u32, u32);
extern bool8 sub_8013938(void *);
extern void sub_8013660(void *);
extern void PlayMenuSoundEffect(u32);
extern u32 GetKeyPress(void *);
extern bool8 sub_8097710(u8);

extern s16 sub_80978B8();
extern s16 sub_8097880();
extern s16 sub_8097838();
extern s16 sub_8097870();
extern s32 sub_80977B8();
extern s32 sub_80977F8();
extern void xxx_call_draw_string(s32, u32, const u8 *, u32, u32);
extern void sub_8008C54(u32);
extern void sub_80073B8(u32);
extern void sub_80073E0(u32);
extern void sub_8012BC4(u32 x, u32 y, u32, u32, u32, u32);
extern void xxx_format_and_draw(u32, u32, const char *, u32, u32);
const u8 *GetAdventureLogLine(u8 index);
extern s32 sub_8013800(void *, s32);
extern u32 gUnknown_202DE30;

u32 CreateAdventureLogScreen(u32 param_1)
{
  gAdventureLog = MemoryAlloc(sizeof(struct AdventureLog),8);
  gAdventureLog->unk34 = param_1;
  gAdventureLog->unk38 = &gAdventureLog->unk3C[param_1];
  sub_8006518(gAdventureLog->unk3C);
  gAdventureLog->unk3C[gAdventureLog->unk34] = gUnknown_80E2008;
  gAdventureLog->unk38->unk14 = gAdventureLog->unk9C;

  ResetUnusedInputStruct();
  sub_800641C(gAdventureLog->unk3C,1,1);
  sub_8013818(gAdventureLog,0x20,8,param_1);
  sub_8032084();
  DisplayAdventureLog();
  return 1;
}

u32 HandleAdventureLogInput(u8 param_1)
{
  if (param_1 == 0) {
    sub_8013660(gAdventureLog);
    return 0;
  }
  else {
    switch(GetKeyPress(gAdventureLog))
    {
        case B_BUTTON:
            PlayMenuSoundEffect(1);
            return 2;
        case A_BUTTON:
            PlayMenuSoundEffect(0);
            return 3;
        default:
            if (sub_8013938(gAdventureLog)) {
                sub_8032084();
                DisplayAdventureLog();
                return 1;
            }
            else {
                return 0;
            }
    }
  }
}

void CleanAdventureLogScreen(void)
{
  if (gAdventureLog != NULL) {
    gAdventureLog->unk3C[gAdventureLog->unk34] = gUnknown_80E1FF0;
    ResetUnusedInputStruct();
    sub_800641C(gAdventureLog->unk3C,1,1);
    MemoryFree(gAdventureLog);
    gAdventureLog = 0;
  }
}


#ifdef NONMATCHING
void sub_8032084(void)
{
  u32 sVar2;
  
  gAdventureLog->unk9C[0] = gAdventureLog->unk20;
  gAdventureLog->unk9C[1]= gAdventureLog->currPage;
  gAdventureLog->unk9C[2]= 0xb;
  gAdventureLog->unk9C[3]= 0;
  // So a sign extend..
  sVar2 = sub_80095E4(gAdventureLog->unk1A,0xc) + 2 << 0x10;
  // TODO needs asr r3, r0, r16
  //        and lsr r0, r0, r16
  gAdventureLog->unk3C[gAdventureLog->unk34].unkE = sVar2;
  // Good past here except regs for this store
  gAdventureLog->unk3C[gAdventureLog->unk34].unk10 = sVar2 + 2;
  ResetUnusedInputStruct();
  sub_800641C(gAdventureLog->unk3C,1,1);
}
#else
NAKED
void sub_8032084(void)
{
	asm_unified("\tpush {r4,lr}\n"
	"\tldr r4, _080320F4\n"
	"\tldr r0, [r4]\n"
	"\tldrh r1, [r0, 0x20]\n"
	"\tadds r0, 0x9C\n"
	"\tmovs r2, 0\n"
	"\tstrb r1, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tldrh r1, [r0, 0x1E]\n"
	"\tadds r0, 0x9D\n"
	"\tstrb r1, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0x9E\n"
	"\tmovs r1, 0xB\n"
	"\tstrb r1, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0x9F\n"
	"\tstrb r2, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tmovs r1, 0x1A\n"
	"\tldrsh r0, [r0, r1]\n"
	"\tmovs r1, 0xC\n"
	"\tbl sub_80095E4\n"
	"\tadds r0, 0x2\n"
	"\tlsls r0, 16\n"
	"\tldr r2, [r4]\n"
	"\tldr r3, [r2, 0x34]\n"
	"\tlsls r1, r3, 1\n"
	"\tadds r1, r3\n"
	"\tlsls r1, 3\n"
	"\tadds r1, r2, r1\n"
	"\tadds r1, 0x4A\n"
	"\tasrs r3, r0, 16\n"
	"\tlsrs r0, 16\n"
	"\tstrh r0, [r1]\n"
	"\tldr r1, [r2, 0x34]\n"
	"\tlsls r0, r1, 1\n"
	"\tadds r0, r1\n"
	"\tlsls r0, 3\n"
	"\tadds r2, r0\n"
	"\tadds r3, 0x2\n"
	"\tadds r2, 0x4C\n"
	"\tstrh r3, [r2]\n"
	"\tbl ResetUnusedInputStruct\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0x3C\n"
	"\tmovs r1, 0x1\n"
	"\tmovs r2, 0x1\n"
	"\tbl sub_800641C\n"
	"\tpop {r4}\n"
	"\tpop {r0}\n"
	"\tbx r0\n"
	"\t.align 2, 0\n"
"_080320F4: .4byte gAdventureLog");
}
#endif

void DisplayAdventureLog(void)
{
  s32 counter;
  s32 r4; // r4
  s32 r6; // r6
  u8 temp;
  s32 v1, v2, v3, v4, v5, v6;
  
  sub_8008C54(gAdventureLog->unk34);
  sub_80073B8(gAdventureLog->unk34);
  r4 = gAdventureLog->currPage * 8;
  r6 = r4;
  r6 += 10;
  // Draw Header
  xxx_call_draw_string(r6, 0, gAdventureLogHeaderText, gAdventureLog->unk34, 0);
  r4 += 4;
  r6 = r4 + gAdventureLog->unk9C[2] * 8;
  // Draw Page #
  sub_8012BC4(r6, 0, gAdventureLog->currPage + 1, 1, 7, gAdventureLog->unk34);

  for(counter = 0; counter < gAdventureLog->unk1A; counter++)
  {
    temp = gAdventureLog->currPage * gAdventureLog->unk1C + counter;
    if(sub_8097710(temp)){
        switch(temp) {
            case 0xc:
                v1 = sub_80978B8();
                gUnknown_202DE30 = (s16)v1;
                xxx_format_and_draw(8, sub_8013800(gAdventureLog, counter), GetAdventureLogLine(temp), gAdventureLog->unk34, 0);
                break;
            case 7:
                v2 = sub_8097880();
                gUnknown_202DE30 = (s16)v2;
                xxx_format_and_draw(8, sub_8013800(gAdventureLog, counter), GetAdventureLogLine(temp), gAdventureLog->unk34, 0);
                break;
            case 0xb:
                v3 = sub_8097838();
                gUnknown_202DE30 = (s16)v3;
                xxx_format_and_draw(8, sub_8013800(gAdventureLog, counter), GetAdventureLogLine(temp), gAdventureLog->unk34, 0);
                break;
            case 8:
                v4 = sub_80977B8();
                gUnknown_202DE30 = v4;
                xxx_format_and_draw(8, sub_8013800(gAdventureLog, counter), GetAdventureLogLine(temp), gAdventureLog->unk34, 0);
                break;
            case 9:
                v5 = sub_80977F8();
                gUnknown_202DE30 = v5;
                xxx_format_and_draw(8, sub_8013800(gAdventureLog, counter), GetAdventureLogLine(temp), gAdventureLog->unk34, 0);
                break;
            case 10:
                v6 = sub_8097870();
                gUnknown_202DE30 = (s16)v6;
                // fallthrough
            default:
                xxx_format_and_draw(8, sub_8013800(gAdventureLog, counter), GetAdventureLogLine(temp), gAdventureLog->unk34, 0);
                break;
        }
    }
    else
    {
        // Draw the ?????????? across the row
        xxx_call_draw_string(8, sub_8013800(gAdventureLog, counter), gUnknown_80E2030, gAdventureLog->unk34, 0);
    }
   }
   sub_80073E0(gAdventureLog->unk34);
}
