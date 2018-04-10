//
//  HUMTool.m
//  HUMiooUIDemo
//
//  Created by 赵春生 on 2018/3/26.
//  Copyright © 2018年 HUMiooZcs. All rights reserved.
//

#import "HUMTool.h"
#define HUMColor(r,g,b)             ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0])
#define HUM_ScreenWidth             ([UIScreen mainScreen].bounds.size.width)
#define HUM_ScreenHeight            ([UIScreen mainScreen].bounds.size.height)
#define HUM_StatusBarHeight         ([[UIApplication sharedApplication] statusBarFrame].size.height)
#define HUM_NavigationBarHeight     (self.navigationController.navigationBar.frame.size.height)
#define HUM_NavAndStatusBarHeight   (HUM_StatusBarHeight+HUM_NavigationBarHeight)
@implementation HUMTool
+(UIColor *)colorWithHUMToolWebStandardColor:(NSInteger)HUMToolWebStandardColor {
    switch (HUMToolWebStandardColor) {
        case HUMToolStandard_LavenderBlush_FFF0F5:
            return HUMColor(255, 240, 245);
        case HUMToolStandard_LightPink_FFB6C1:
            return HUMColor(255, 182, 193);
        case HUMToolStandard_Pink_FFC0CB:
            return HUMColor(255, 192, 203);
        case HUMToolStandard_HotPink_FF69B4:
            return HUMColor(255, 105, 180);
        case HUMToolStandard_PaleVioletRed_DB7093:
            return HUMColor(219, 112, 147);
        case HUMToolStandard_DeepPink_FF1493:
            return HUMColor(255, 20, 147);
        case HUMToolStandard_MediumVioletRed_C71585:
            return HUMColor(199, 21, 133);
        case HUMToolStandard_Crimson_DC143C:
            return HUMColor(220, 20, 60);
        case HUMToolStandard_Lavender_E6E6FA:
            return HUMColor(230, 230, 250);
        case HUMToolStandard_Thistle_D8BFD8:
            return HUMColor(216, 191, 216);
        case HUMToolStandard_Plum_DDA0DD:
            return HUMColor(221, 191, 216);
        case HUMToolStandard_Violet_EE82EE:
            return HUMColor(238, 130, 238);
        case HUMToolStandard_Orchid_DA70D6:
            return HUMColor(218, 112, 214);
        case HUMToolStandard_MagentaAndFuchisa_FF00FF:
            return HUMColor(255, 0, 255);
        case HUMToolStandard_MediumOrchid_BA55D3:
            return HUMColor(186, 85, 211);
        case HUMToolStandard_MediumPurple_9370DB:
            return HUMColor(147, 112, 219);
        case HUMToolStandard_BlueViolet_8A2BE2:
            return HUMColor(138, 43, 226);
        case HUMToolStandard_DarkViolet_9400D3:
            return HUMColor(148, 0, 211);
        case HUMToolStandard_DarkOrchid_9932CC:
            return HUMColor(153, 50, 204);
        case HUMToolStandard_DarkMagenta_8B008B:
            return HUMColor(139, 0, 139);
        case HUMToolStandard_Purple_8B0080:
            return HUMColor(128, 0, 128);
        case HUMToolStandard_Indigo_4B0082:
            return HUMColor(75, 0, 130);
        case HUMToolStandard_AliceBlue_F0F8FF:
            return HUMColor(240, 248, 255);
        case HUMToolStandard_Azure_F0FFFF:
            return HUMColor(240, 255, 255);
        case HUMToolStandard_LightBlue_ADD8E6:
            return HUMColor(173, 216, 230);
        case HUMToolStandard_PowderBlue_B0E0E6:
            return HUMColor(176, 224, 230);
        case HUMToolStandard_SkyBlue_87CEEB:
            return HUMColor(135, 206, 250);
        case HUMToolStandard_DeepSkyBlue_00BFFF:
            return HUMColor(0, 191, 255);
        case HUMToolStandard_CornflowerBlue_6495ED:
            return HUMColor(100, 149, 237);
        case HUMToolStandard_DodgerBlue_1E90FF:
            return HUMColor(30, 144, 255);
        case HUMToolStandard_RoyalBlue_4169E1:
            return HUMColor(65, 105, 225);
        case HUMToolStandard_LightSteelBlue_B0C4DE:
            return HUMColor(176, 196, 222);
        case HUMToolStandard_CadetBlue_5F9EA0:
            return HUMColor(95, 158, 160);
        case HUMToolStandard_SteelBlue_4682B4:
            return HUMColor(70, 130, 180);
        case HUMToolStandard_LightSlateGray_778899:
            return HUMColor(119, 136, 153);
        case HUMToolStandard_SlateGray_708090:
            return HUMColor(112, 128, 144);
        case HUMToolStandard_MediumSlateBlue_7B68EE:
            return HUMColor(123, 104, 238);
        case HUMToolStandard_SlateBlue_6A5ACD:
            return HUMColor(106, 90, 205);
        case HUMToolStandard_DarkSlateBlue_483D88:
            return HUMColor(72, 61, 139);
        case HUMToolStandard_Blue_0000FF:
            return HUMColor(0, 0, 255);
        case HUMToolStandard_MediumBlue_0000CD:
            return HUMColor(0, 0, 205);
        case HUMToolStandard_MidnightBlue_191970:
            return HUMColor(25, 25, 112);
        case HUMToolStandard_DarkBlue_00008B:
            return HUMColor(0, 0, 139);
        case HUMToolStandard_Navy_000080:
            return HUMColor(0, 0, 128);
        case HUMToolStandard_LightCyan_E0FFFF:
            return HUMColor(224, 255, 255);
        case HUMToolStandard_CyanAndAqua_00FFFF:
            return HUMColor(0, 255, 255);
        case HUMToolStandard_DarkSlateGray_2F4F4F:
            return HUMColor(47, 79, 79);
        case HUMToolStandard_DarkCyan_008B8B:
            return HUMColor(0, 139, 139);
        case HUMToolStandard_Teal_008080:
            return HUMColor(0, 128, 128);
        case HUMToolStandard_PaleTurquoise_AFEEEE:
            return HUMColor(175, 238, 238);
        case HUMToolStandard_Aquamarine_7FFFD4:
            return HUMColor(127, 255, 212);
        case HUMToolStandard_MediumAquamarine_66CDAA:
            return HUMColor(102, 205, 170);
        case HUMToolStandard_Turquoise_40E0D0:
            return HUMColor(64, 244, 208);
        case HUMToolStandard_MediumTurquoise_48D1CC:
            return HUMColor(72, 209, 204);
        case HUMToolStandard_DarkTurquoise_00CED1:
            return HUMColor(0, 206, 209);
        case HUMToolStandard_LightGreen_90FF90:
            return HUMColor(144, 238, 144);
        case HUMToolStandard_PaleGreen_98FB98:
            return HUMColor(152, 251, 152);
        case HUMToolStandard_MediumSpringGreen_00FA9A:
            return HUMColor(0, 250, 154);
        case HUMToolStandard_SpringGreen_00FF7F:
            return HUMColor(0, 255, 127);
        case HUMToolStandard_LightSeaGreen_20B2AA:
            return HUMColor(32, 178, 170);
        case HUMToolStandard_SeaGreen_2E8B57:
            return HUMColor(46, 139, 87);
        case HUMToolStandard_MediumSeaGreen_3CB371:
            return HUMColor(60, 179, 113);
        case HUMToolStandard_DarkSeaGreen_8FBC8F:
            return HUMColor(143, 188, 143);
        case HUMToolStandard_ForestGreen_228B22:
            return HUMColor(34, 139, 34);
        case HUMToolStandard_Green_008000:
            return HUMColor(0, 128, 0);
        case HUMToolStandard_DarkGreen_006400:
            return HUMColor(0, 100, 0);
        case HUMToolStandard_Lime_00FF00:
            return HUMColor(0, 255, 0);
        case HUMToolStandard_LimeGreen_32CD32:
            return HUMColor(50, 205, 50);
        case HUMToolStandard_LawnGreen_7CFC00:
            return HUMColor(124, 252, 0);
        case HUMToolStandard_Chartreuse_7FFF00:
            return HUMColor(127, 255, 0);
        case HUMToolStandard_GreenYellow_ADFF2F:
            return HUMColor(173, 255, 47);
        case HUMToolStandard_YellowGreen_9ACD32:
            return HUMColor(154, 205, 50);
        case HUMToolStandard_LightYellow_FFFFE0:
            return HUMColor(255, 255, 223);
        case HUMToolStandard_Cornsilk_FFF8DC:
            return HUMColor(255, 248, 220);
        case HUMToolStandard_Beige_F5F5DC:
            return HUMColor(245, 248, 220);
        case HUMToolStandard_LightGoldenrodYellow_FAFAD2:
            return HUMColor(250, 250, 210);
        case HUMToolStandard_OldLace_FDF5E6:
            return HUMColor(253, 245, 230);
        case HUMToolStandard_Linen_FAF0E6:
            return HUMColor(250, 240, 230);
        case HUMToolStandard_LemonChiffon_FFFACD:
            return HUMColor(255, 250, 205);
        case HUMToolStandard_PapayaWhip_FFEFCD:
            return HUMColor(255, 239, 213);
        case HUMToolStandard_BlanchedAlmond_FFEBCD:
            return HUMColor(255, 235, 205);
        case HUMToolStandard_Bisque_FFE4C4:
            return HUMColor(255, 228, 196);
        case HUMToolStandard_Wheat_F5DEB3:
            return HUMColor(245, 222, 179);
        case HUMToolStandard_Moccasin_FFE4B5:
            return HUMColor(155, 228, 181);
        case HUMToolStandard_NavajoWhite_FFDEAD:
            return HUMColor(255, 222, 173);
        case HUMToolStandard_PaleGoldenrod_EEE8AA:
            return HUMColor(238, 232, 173);
        case HUMToolStandard_Khaki_F0E68C:
            return HUMColor(240, 230, 140);
        case HUMToolStandard_DarkKhaki_BDB76B:
            return HUMColor(189, 183, 107);
        case HUMToolStandard_Yellow_FFFF00:
            return HUMColor(255, 255, 0);
        case HUMToolStandard_Gold_FFD700:
            return HUMColor(255, 215, 0);
        case HUMToolStandard_Goldenrod_DAA520:
            return HUMColor(218, 165, 32);
        case HUMToolStandard_DarkGoldenrod_B8860B:
            return HUMColor(184, 134, 11);
        case HUMToolStandard_Olive_808000:
            return HUMColor(128, 128, 0);
        case HUMToolStandard_OliveDrab_6B8E23:
            return HUMColor(107, 142, 35);
        case HUMToolStandard_DarkOliveGreen_556B2F:
            return HUMColor(85, 107, 47);
        case HUMToolStandard_Orange_FFA500:
            return HUMColor(255, 165, 0);
        case HUMToolStandard_Tan_D2B48C:
            return HUMColor(210, 180, 140);
        case HUMToolStandard_BurlyWood_DEB887:
            return HUMColor(222, 184, 135);
        case HUMToolStandard_SandyBrown_F4A460:
            return HUMColor(244, 164, 96);
        case HUMToolStandard_Chocolate_D2691E:
            return HUMColor(210, 105, 30);
        case HUMToolStandard_Peru_CD853F:
            return HUMColor(205, 133, 63);
        case HUMToolStandard_SaddleBrown_8B4513:
            return HUMColor(139, 69, 19);
        case HUMToolStandard_Sienna_A0522D:
            return HUMColor(160, 82, 45);
        case HUMToolStandard_MistyRose_FFE4E1:
            return HUMColor(255, 228, 225);
        case HUMToolStandard_PeachPuff_FFDAB9:
            return HUMColor(255, 218, 185);
        case HUMToolStandard_LightSalmon_FFA07A:
            return HUMColor(255, 160, 122);
        case HUMToolStandard_Coral_FF7F550:
            return HUMColor(255, 127, 80);
        case HUMToolStandard_DarkOrange_FF8C00:
            return HUMColor(255, 140, 0);
        case HUMToolStandard_LightCoral_F08080:
            return HUMColor(240, 128, 128);
        case HUMToolStandard_RosyBrown_BC8F8F:
            return HUMColor(188, 143, 143);
        case HUMToolStandard_IndianRed_CD5C5C:
            return HUMColor(205, 92, 92);
        case HUMToolStandard_Salmon_FA8072:
            return HUMColor(250, 92, 92);
        case HUMToolStandard_DarkSalmon_E9967A:
            return HUMColor(233, 150, 122);
        case HUMToolStandard_Tomato_FF6347:
            return HUMColor(255, 99, 71);
        case HUMToolStandard_OrangeRed_FF4500:
            return HUMColor(255, 69, 0);
        case HUMToolStandard_Red_FF0000:
            return HUMColor(255, 0, 0);
        case HUMToolStandard_Brown_A52A2A:
            return HUMColor(165, 42, 42);
        case HUMToolStandard_FireBrick_B2222:
            return HUMColor(178, 34, 34);
        case HUMToolStandard_DarkRed_8B0000:
            return HUMColor(139, 0, 0);
        case HUMToolStandard_Maroon_800000:
            return HUMColor(128, 0, 0);
        case HUMToolStandard_White_FFFFFF:
            return HUMColor(255, 255, 255);
        case HUMToolStandard_Snow_FFFAFA:
            return HUMColor(255, 250, 250);
        case HUMToolStandard_FloralWhite_FFFAF0:
            return HUMColor(255, 250, 240);
        case HUMToolStandard_Ivory_FFFFF0:
            return HUMColor(255, 255, 240);
        case HUMToolStandard_Seashell_FFF5EE:
            return HUMColor(255, 245, 238);
        case HUMToolStandard_MintCream_F5FFFA:
            return HUMColor(245, 255, 250);
        case HUMToolStandard_GhostWhite_F8F8FF:
            return HUMColor(248, 248, 255);
        case HUMToolStandard_Honeydew_F0FFF0:
            return HUMColor(240, 255, 240);
        case HUMToolStandard_WhiteSmoke_F5F5F5:
            return HUMColor(245, 245, 245);
        case HUMToolStandard_AntiqueWhite_FAEBD7:
            return HUMColor(250, 235, 215);
        case HUMToolStandard_Gainsboro_DCDCDC:
            return HUMColor(220, 220, 220);
        case HUMToolStandard_LightGray_D3D3D3:
            return HUMColor(211, 211, 211);
        case HUMToolStandard_Silver_C0C0C0:
            return HUMColor(192, 192, 192);
        case HUMToolStandard_DarkGray_A9A9A9:
            return HUMColor(169, 169, 169);
        case HUMToolStandard_Gray_808080:
            return HUMColor(128, 128, 128);
        case HUMToolStandard_DimGray_696969:
            return HUMColor(105, 105, 105);
        case HUMToolStandard_Black_000000:
            return HUMColor(0, 0, 0);
        default:
            return [UIColor clearColor];
    }
}
+(UIColor *)colorWithHUMToolWebSafeColorColor:(NSInteger)HUMToolWebSafeColor {
    return [UIColor clearColor];
}
+ (UIColor *)colorWithHUMToolCustomColorColor:(NSInteger)HUMToolCustomColor {
    switch (HUMToolCustomColor) {
        case HUMToolCustomColor_MikuGreen_66FFCC:
            return HUMColor(102, 255, 204);
        case HUMToolCustomColor_TianYiBlue_66CCFF:
            return HUMColor(102, 204, 255);
        default:
            return [UIColor clearColor];
    }
}
@end
