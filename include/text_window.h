#ifndef GUARD_TEXT_WINDOW_H
#define GUARD_TEXT_WINDOW_H

#define WINDOW_FRAMES_COUNT 20

struct TilesPal
{
    const u8 *tiles;
    const u16 *pal;
};

extern const u8 gTextWindowFrame1_Gfx[];
extern const u16 gTextWindowFrame1_Pal[];

const struct TilesPal* GetWindowFrameTilesPal(u8 id);
void copy_textbox_border_tile_patterns_to_vram(u8 windowId, u16 destOffset, u8 palOffset);
void sub_809882C(u8 windowId, u16 destOffset, u8 palOffset);
void sub_80987D4(u8 windowId, u8 frameId, u16 destOffset, u8 palOffset);
void box_border_load_tiles_and_pal(u8 windowId, u16 destOffset, u8 palOffset);
void sub_8098858(u8 windowId, u16 tileNum, u8 palNum);
void sub_80989E0(u8 windowId, u16 tileNum, u8 palNum);
void rbox_fill_rectangle(u8 windowId);
const u16 *stdpal_get(u8 id);
const u16 *GetOverworldTextboxPalettePtr(void);
void sub_8098C6C(u8 bg, u16 destOffset, u8 palOffset);

#endif // GUARD_TEXT_WINDOW_H
