#include "global.h"
#include "constants/mailbox.h"
#include "input.h"
#include "memory.h"
#include "text.h"
#include "menu.h"

struct unkStruct_802C39C
{
    /* 0x0 */ u32 unk0[2];
    /* 0x8 */ struct DungeonLocation *unk8;
    /* 0xC */ u8 *unkC;
    /* 0x10 */ s16 unk10;
    /* 0x12 */ s16 unk12;
    /* 0x14 */ u8 unk14;
    /* 0x15 */ u8 fill15[0x1B];
    /* 0x36 */ u8 fill36[0x3C - 0x36];
    /* 0x3C */ u8 unk3C[0xC];
    /* 0x48 */ u8 fill48[4];
    /* 0x4C */ u32 unk4C;
    /* 0x50 */ u32 unk50[3];
};

struct unkStruct_203B2E8
{
    // size: 0xA8
    u8 unk0[MAX_ACCEPTED_JOBS];
    u32 unk8;
    u8 fillC[0x20 - 0xC];
    s16 unk20;
    s16 unk22;
    s16 unk24;
    s16 unk26;
    u16 unk28;
    u16 unk2A;
    u16 unk2C;
    u8 fill2E[0x3C - 0x2E]; 
    u32 unk3C;
    struct UnkTextStruct2 *unk40;
    struct UnkTextStruct2 unk44[4];
    u8 unkA4[4];
};

struct unkStruct_203B2F0
{
    // size: 0x1FC
    u32 unk0;
    u32 state;
    u8 unk8[0xC - 0x8];
    u8 unkC;
    u8 fillD[0x10 - 0xD];
    u32 unk10;
    u8 fill14[0x68 - 0x14];
    u32 unk68;
    u8 fill6C[0xBC - 0x6C];
    u8 unkBC[0x10C - 0xBC];
    struct MenuItem unk10C[8];
    struct MenuItem unk14C[8];
    u8 fill18C[0x19C - 0x18C];
    struct UnkTextStruct2 unk19C[4];
};

extern struct unkStruct_203B2F0 *gUnknown_203B2F0;
extern struct unkStruct_203B2E8* gUnknown_203B2E8;
extern struct unkStruct_203B2E8* gUnknown_203B2E0;

u16 gUnknown_203B2EC;

const struct UnkTextStruct2 gUnknown_80DFCE4 =
{
    0x00, 0x00, 0x00, 0x00,
    0x03, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    NULL
};

const struct UnkTextStruct2 gUnknown_80DFCFC =
{
    0x00, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x02, 0x00,
    0x18, 0x0E,
    0x0E, 0x00,
    NULL
};

const u8 gUnknown_80DFD14[] = "Job List";
static const u8 wonder_mail_fill[] = "pksdir0";

const struct UnkTextStruct2 gUnknown_80DFD28 =
{
    0x00, 0x00, 0x00, 0x00,
    0x03, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    NULL
};

const struct UnkTextStruct2 gUnknown_80DFD40 =
{
    0x00, 0x00, 0x00, 0x00,
    0x04, 0x00, 0x00, 0x00,
    0x15, 0x00, 0x06, 0x00,
    0x07, 0x03,
    0x03, 0x00,
    NULL
};

const struct UnkTextStruct2 gUnknown_80DFD58 =
{
    0x00, 0x00, 0x00, 0x00,
    0x04, 0x00, 0x00, 0x00,
    0x15, 0x00, 0x0f, 0x00,
    0x06, 0x03,
    0x03, 0x00,
    NULL
};

const u8 gUnknown_80DFD70[] = "Take Job";
const u8 gUnknown_80DFD7C[] = "Suspend";
static const u8 wonder_mail_fill0[] = "pksdir0";

const struct UnkTextStruct2 gUnknown_80DFD8C =
{
    0x00, 0x00, 0x00, 0x00,
    0x03, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    NULL
};

const struct UnkTextStruct2 gUnknown_80DFDA4 =
{
    0x00, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x02, 0x00,
    0x18, 0x0e,
    0x0e, 0x00,
    NULL
};

const u8 gUnknown_80DFDBC[] = "RESCUE EVENT";
static const u8 wonder_mail_fill1[] = "pksdir0";

extern void sub_8012CAC(struct UnkTextStruct2 *, struct MenuItem *);
extern void sub_802CAA4(void);
extern u8 IsJobSlotEmpty(u8);
extern void sub_8008C54(u32);
extern void sub_80073B8(u32);
extern void sub_8013C68(u32 *);
extern void sub_80073E0(u32);
extern struct WonderMail* GetJobSlotInfo(u8);
extern s32 sub_8013800(void *, u32);
extern void sub_803B35C(void *, u32 *);
extern void xxx_call_draw_string(u32, u32, const u8 *, u32, u32);
extern void sub_8012BC4(u32 x, u32 y, u32, u32, u32, u32);
extern void CreateRescueTitle(void *);

extern void sub_8013984(u32 *);
extern void sub_802C6DC(void);
extern void sub_802C750(void);
extern void AddMenuCursorSprite(u32 *);
extern u8 sub_80138B8(void *, u32);
extern s32 GetKeyPress(void *);
extern void PlayMenuSoundEffect(u32);
extern void sub_8013660(void *);
extern void sub_8013848(u32 *, s32, u32, u32);
extern void sub_8012D34(struct UnkTextStruct2 *, u32);
extern bool8 sub_809658C(u8);
extern void sub_802C910(u32);
extern void sub_802CC00(void);
extern void sub_802CC70(void);
extern void sub_802CD38(void);
extern void sub_802CDB8(void);
extern void sub_802C928(void);
extern void sub_802C9D8(void);
extern void sub_8012D60(u8 *, struct MenuItem *, u32, u16 *, u32, u32);
extern void sub_802DE84(u32 *);
extern void sub_8012EA4(u8 *, u32);
extern void sub_802CBAC(void);

s32 CountAcceptedJobs(void);
bool8 HasNoAcceptedJobs(void);

s32 sub_802C474(void)
{
  s32 index;
  s32 counter = 0;
  for(index = 0; index < MAX_ACCEPTED_JOBS; index++)
  {
      if(!sub_809658C(index))
      {
          gUnknown_203B2E0->unk0[counter] = index;
          counter++;
      }
  }
  return counter;
}

bool8 sub_802C4A4(void)
{
  s32 index;
  for(index = 0; index < MAX_ACCEPTED_JOBS; index++)
  {
      if(!sub_809658C(index))
        return FALSE;
  }
  return TRUE;
}

bool8 sub_802C4C8(int param_1,struct UnkTextStruct2_sub *param_2,u32 param_3)
{
  if (HasNoAcceptedJobs()) {
      return FALSE;
  }
  else
  {
    gUnknown_203B2E8 = MemoryAlloc(sizeof(struct unkStruct_203B2E8),8);
    gUnknown_203B2E8->unk3C = param_1;
    gUnknown_203B2E8->unk40 = &gUnknown_203B2E8->unk44[param_1];
    sub_8006518(gUnknown_203B2E8->unk44);

    gUnknown_203B2E8->unk44[gUnknown_203B2E8->unk3C] = gUnknown_80DFCFC;

    gUnknown_203B2E8->unk40->unk14 = gUnknown_203B2E8->unkA4;
    if (param_2 != NULL) {
      gUnknown_203B2E8->unk44[gUnknown_203B2E8->unk3C].unk08 = *param_2;
    }
    sub_8012D34(gUnknown_203B2E8->unk40,param_3);
    ResetUnusedInputStruct();
    sub_800641C(gUnknown_203B2E8->unk44,1,1);
    sub_8013848(&gUnknown_203B2E8->unk8,CountAcceptedJobs(),param_3,param_1);
    gUnknown_203B2E8->unk20 = gUnknown_203B2EC;
    sub_8013984(&gUnknown_203B2E8->unk8);
    sub_802C6DC();
    sub_802C750();
    return TRUE;
  }
}

u32 sub_802C598(u8 param_1)
{
  if (param_1 == '\0') {
    sub_8013660(&gUnknown_203B2E8->unk8);
    return 0;
  }
  else {
        switch(GetKeyPress(&gUnknown_203B2E8->unk8))
        {
            case 2:
                PlayMenuSoundEffect(1);
                return 2;
            case 1:
                PlayMenuSoundEffect(0);
                return 3;
            case 4:
                PlayMenuSoundEffect(4);
                return 4;
                break;
        }
        if (sub_80138B8(&gUnknown_203B2E8->unk8, 1) != '\0') {
            sub_802C6DC();
            sub_802C750();
            return 1;
        }
        else {
            return 0;
        }
    }
}

u8 sub_802C620(void)
{
    return gUnknown_203B2E8->unk0[gUnknown_203B2E8->unk26 * gUnknown_203B2E8->unk24 + gUnknown_203B2E8->unk20];
}

void sub_802C640(u32 r0)
{
    u8 r0_u8;
    r0_u8 = r0;
    ResetUnusedInputStruct();
    sub_800641C(gUnknown_203B2E8->unk44, 0, 0);
    gUnknown_203B2E8->unk2A = CountAcceptedJobs();
    sub_8013984(&gUnknown_203B2E8->unk8);
    sub_802C6DC();
    sub_802C750();
    if(r0_u8)
        AddMenuCursorSprite(&gUnknown_203B2E8->unk8);
}

void sub_802C688(void)
{
    if(gUnknown_203B2E8 != NULL)
    {
        gUnknown_203B2EC = gUnknown_203B2E8->unk20;
        gUnknown_203B2E8->unk44[gUnknown_203B2E8->unk3C] = gUnknown_80DFCE4;
        ResetUnusedInputStruct();
        sub_800641C(gUnknown_203B2E8->unk44, 1, 1);
        MemoryFree(gUnknown_203B2E8);
        gUnknown_203B2E8 = NULL;
    }
}

NAKED
void sub_802C6DC(void)
{
	asm_unified("\tpush {r4,lr}\n"
	"\tldr r4, _0802C74C\n"
	"\tldr r0, [r4]\n"
	"\tldrh r1, [r0, 0x28]\n"
	"\tadds r0, 0xA4\n"
	"\tmovs r2, 0\n"
	"\tstrb r1, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tldrh r1, [r0, 0x26]\n"
	"\tadds r0, 0xA5\n"
	"\tstrb r1, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0xA6\n"
	"\tmovs r1, 0xC\n"
	"\tstrb r1, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0xA7\n"
	"\tstrb r2, [r0]\n"
	"\tldr r0, [r4]\n"
	"\tmovs r1, 0x22\n"
	"\tldrsh r0, [r0, r1]\n"
	"\tmovs r1, 0x18\n"
	"\tbl sub_8009614\n"
	"\tadds r0, 0x2\n"
	"\tlsls r0, 16\n"
	"\tldr r2, [r4]\n"
	"\tldr r3, [r2, 0x3C]\n"
	"\tlsls r1, r3, 1\n"
	"\tadds r1, r3\n"
	"\tlsls r1, 3\n"
	"\tadds r1, r2, r1\n"
	"\tadds r1, 0x52\n"
	"\tasrs r3, r0, 16\n"
	"\tlsrs r0, 16\n"
	"\tstrh r0, [r1]\n"
	"\tldr r1, [r2, 0x3C]\n"
	"\tlsls r0, r1, 1\n"
	"\tadds r0, r1\n"
	"\tlsls r0, 3\n"
	"\tadds r2, r0\n"
	"\tadds r3, 0x2\n"
	"\tadds r2, 0x54\n"
	"\tstrh r3, [r2]\n"
	"\tbl ResetUnusedInputStruct\n"
	"\tldr r0, [r4]\n"
	"\tadds r0, 0x44\n"
	"\tmovs r1, 0x1\n"
	"\tmovs r2, 0x1\n"
	"\tbl sub_800641C\n"
	"\tpop {r4}\n"
	"\tpop {r0}\n"
	"\tbx r0\n"
	"\t.align 2, 0\n"
"_0802C74C: .4byte gUnknown_203B2E8");

}

void sub_802C750(void)
{
  struct WonderMail *uVar1;
  int iVar2;
  s32 r4;
  s32 r5;
  struct unkStruct_802C39C local;
  
  sub_8008C54(gUnknown_203B2E8->unk3C);
  sub_80073B8(gUnknown_203B2E8->unk3C);
  r4 = gUnknown_203B2E8->unk26 * 8;
  r5 = r4;
  r5 += 10;
  xxx_call_draw_string(r5,0,gUnknown_80DFD14,gUnknown_203B2E8->unk3C,0); // "Job List"
  r4 += 4;
  r5 = r4 + gUnknown_203B2E8->unkA4[2] * 8;
  sub_8012BC4(r5,0,gUnknown_203B2E8->unk26 + 1,2,7,gUnknown_203B2E8->unk3C);
  iVar2 = 0;

  if(( iVar2 < gUnknown_203B2E8->unk22))
    do
    {
        uVar1 = GetJobSlotInfo(gUnknown_203B2E8->unk0[gUnknown_203B2E8->unk26 * gUnknown_203B2E8->unk24 + iVar2]);
        local.unk0[0] = gUnknown_203B2E8->unk3C;
        local.unk4C = sub_8013800(&gUnknown_203B2E8->unk8,iVar2);
        sub_803B35C(uVar1,local.unk0);
        CreateRescueTitle(&local);
        iVar2++;
    } while( iVar2 < gUnknown_203B2E8->unk22);
  sub_80073E0(gUnknown_203B2E8->unk3C);
}

s32 CountAcceptedJobs(void)
{
    s32 index;
    s32 counter = 0;
    for(index = 0; index < MAX_ACCEPTED_JOBS; index++)
    {
        if(!IsJobSlotEmpty(index))
        {
            gUnknown_203B2E8->unk0[counter] = index;
            counter++;
        }
    }
    return counter;
}

bool8 HasNoAcceptedJobs(void)
{
    s32 index;
    for(index = 0; index < MAX_ACCEPTED_JOBS; index++)
    {
        if(!IsJobSlotEmpty(index))
            return FALSE;
    }
    return TRUE;
}

bool8 sub_802C860(u32 r0)
{
    if(HasNoAcceptedJobs())
    {
        return FALSE;
    }
    else
    {
        gUnknown_203B2F0 = MemoryAlloc(sizeof(struct unkStruct_203B2F0), 0x8);
        gUnknown_203B2F0->unk68 = 0;
        gUnknown_203B2F0->unk0 = r0;
        sub_802C910(0);
        return TRUE;
    }
}

u32 sub_802C898(void)
{
    switch(gUnknown_203B2F0->state)
    {
        case 0:
        case 1:
            sub_802CC00();
            break;
        case 2:
            sub_802CC70();
            break;
        case 3:
            sub_802CD38();
            break;
        case 4:
            sub_802CDB8();
            break;
        case 5:
        default:
            return 3;
    }
    return 0;
}

void sub_802C8F4(void)
{
    if(gUnknown_203B2F0 != NULL)
    {
        MemoryFree(gUnknown_203B2F0);
        gUnknown_203B2F0 = NULL;
    }
}

void sub_802C910(u32 newState)
{
    gUnknown_203B2F0->state = newState;
    sub_802C928();
    sub_802C9D8();
}

void sub_802C928(void)
{
    s32 index;
    sub_8006518(gUnknown_203B2F0->unk19C);
    switch(gUnknown_203B2F0->state)
    {
        case 2:
            sub_802CAA4();
            gUnknown_203B2F0->unk19C[2] = gUnknown_80DFD40;
            sub_8012CAC(&gUnknown_203B2F0->unk19C[2], gUnknown_203B2F0->unk10C);
            break;
        case 3:
            gUnknown_203B2F0->unk19C[3] = gUnknown_80DFD58;
            break;
        default:
            for(index = 0; index < 4; index++)
            {
                gUnknown_203B2F0->unk19C[index] = gUnknown_80DFD28;
            }
            break;
    }
    ResetUnusedInputStruct();
    sub_800641C(gUnknown_203B2F0->unk19C, 1, 1);
}

void sub_802C9D8(void)
{
    switch(gUnknown_203B2F0->state)
    {
        case 0:
            sub_802C4C8(0, 0, 4);
            break;
        case 1:
            sub_802C640(1);
            break;
        case 2:
            sub_802C750();
            sub_8012D60(gUnknown_203B2F0->fill6C, gUnknown_203B2F0->unk10C, 0, 0, gUnknown_203B2F0->unk68, 2);
            break;
        case 3:
            sub_802CBAC();
            sub_802C750();
            sub_8012EA4(gUnknown_203B2F0->fill6C, 0);
            sub_8012D60(gUnknown_203B2F0->unkBC, gUnknown_203B2F0->unk14C, 0, 0, 6, 3);
            break;
        case 4:
            sub_803B35C(GetJobSlotInfo(gUnknown_203B2F0->unkC), &gUnknown_203B2F0->unk10);
            gUnknown_203B2F0->unk10 = 3;
            sub_802DE84(&gUnknown_203B2F0->unk10);
            break;
        case 5:
        default:
            break;
    }
}

