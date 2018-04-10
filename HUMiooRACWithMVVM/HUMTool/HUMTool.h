//
//  HUMTool.h
//  HUMiooUIDemo
//
//  Created by 赵春生 on 2018/3/26.
//  Copyright © 2018年 HUMiooZcs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HUMTool : NSObject
//web标准色
typedef enum : NSUInteger {
    HUMToolStandard_LavenderBlush_FFF0F5,       //薰衣草红
    HUMToolStandard_LightPink_FFB6C1,           //浅　粉
    HUMToolStandard_Pink_FFC0CB,                //粉　色
    HUMToolStandard_HotPink_FF69B4,             //艳　粉
    HUMToolStandard_PaleVioletRed_DB7093,       //白紫红
    HUMToolStandard_DeepPink_FF1493,            //深　粉
    HUMToolStandard_MediumVioletRed_C71585,     //中紫红
    HUMToolStandard_Crimson_DC143C,             //绯　红
    
    HUMToolStandard_Lavender_E6E6FA,            //薰衣草紫
    HUMToolStandard_Thistle_D8BFD8,             //蓟　紫
    HUMToolStandard_Plum_DDA0DD,                //李　紫
    HUMToolStandard_Violet_EE82EE,              //紫罗兰色
    HUMToolStandard_Orchid_DA70D6,              //洋兰紫
    HUMToolStandard_MagentaAndFuchisa_FF00FF,   //洋　红
    HUMToolStandard_MediumOrchid_BA55D3,        //中洋兰紫
    HUMToolStandard_MediumPurple_9370DB,        //中　紫
    HUMToolStandard_BlueViolet_8A2BE2,          //蓝紫色
    HUMToolStandard_DarkViolet_9400D3,          //深　紫
    HUMToolStandard_DarkOrchid_9932CC,          //深洋兰紫
    HUMToolStandard_DarkMagenta_8B008B,         //深品红
    HUMToolStandard_Purple_8B0080,              //紫　色
    HUMToolStandard_Indigo_4B0082,              //靛　蓝
    
    HUMToolStandard_AliceBlue_F0F8FF,           //爱丽丝蓝
    HUMToolStandard_Azure_F0FFFF,               //青白色
    HUMToolStandard_LightBlue_ADD8E6,           //浅　蓝
    HUMToolStandard_PowderBlue_B0E0E6,          //粉末蓝
    HUMToolStandard_LightSkyBlue_87CEFA,        //浅天蓝
    HUMToolStandard_SkyBlue_87CEEB,             //天　蓝
    HUMToolStandard_DeepSkyBlue_00BFFF,         //深天蓝
    HUMToolStandard_CornflowerBlue_6495ED,      //矢车菊蓝
    HUMToolStandard_DodgerBlue_1E90FF,          //湖　蓝
    HUMToolStandard_RoyalBlue_4169E1,           //品　蓝
    HUMToolStandard_LightSteelBlue_B0C4DE,      //浅钢青
    HUMToolStandard_CadetBlue_5F9EA0,           //军服蓝
    HUMToolStandard_SteelBlue_4682B4,           //钢　青
    
    HUMToolStandard_LightSlateGray_778899,      //浅岩灰
    HUMToolStandard_SlateGray_708090,           //岩　灰
    HUMToolStandard_MediumSlateBlue_7B68EE,     //中岩蓝
    HUMToolStandard_SlateBlue_6A5ACD,           //岩　蓝
    HUMToolStandard_DarkSlateBlue_483D88,       //深岩蓝
    HUMToolStandard_Blue_0000FF,                //蓝　色
    HUMToolStandard_MediumBlue_0000CD,          //中　蓝
    HUMToolStandard_MidnightBlue_191970,        //午夜蓝
    HUMToolStandard_DarkBlue_00008B,            //深　蓝
    HUMToolStandard_Navy_000080,                //藏　青
    
    HUMToolStandard_LightCyan_E0FFFF,           //浅　青
    HUMToolStandard_CyanAndAqua_00FFFF,         //青　色
    HUMToolStandard_DarkSlateGray_2F4F4F,       //深岩灰
    HUMToolStandard_DarkCyan_008B8B,            //深　青
    HUMToolStandard_Teal_008080,                //鸭翅绿
    HUMToolStandard_PaleTurquoise_AFEEEE,       //白松石绿
    HUMToolStandard_Aquamarine_7FFFD4,          //碧　绿
    HUMToolStandard_MediumAquamarine_66CDAA,    //中碧绿
    HUMToolStandard_Turquoise_40E0D0,           //松石绿
    HUMToolStandard_MediumTurquoise_48D1CC,     //中松石绿
    HUMToolStandard_DarkTurquoise_00CED1,       //深松石绿
    
    HUMToolStandard_LightGreen_90FF90,          //浅　绿
    HUMToolStandard_PaleGreen_98FB98,           //白绿色
    HUMToolStandard_MediumSpringGreen_00FA9A,   //中嫩绿
    HUMToolStandard_SpringGreen_00FF7F,         //春　绿
    HUMToolStandard_LightSeaGreen_20B2AA,       //浅海藻绿
    HUMToolStandard_SeaGreen_2E8B57,            //海藻绿
    HUMToolStandard_MediumSeaGreen_3CB371,      //中海藻绿
    HUMToolStandard_DarkSeaGreen_8FBC8F,        //深海藻绿
    HUMToolStandard_ForestGreen_228B22,         //森林绿
    HUMToolStandard_Green_008000,               //调和绿
    HUMToolStandard_DarkGreen_006400,           //深　绿
    
    HUMToolStandard_Lime_00FF00,                //绿　色
    HUMToolStandard_LimeGreen_32CD32,           //青柠绿
    HUMToolStandard_LawnGreen_7CFC00,           //草坪绿
    HUMToolStandard_Chartreuse_7FFF00,          //查特酒绿
    HUMToolStandard_GreenYellow_ADFF2F,         //黄绿色
    HUMToolStandard_YellowGreen_9ACD32,         //暗黄绿色
    
    HUMToolStandard_LightYellow_FFFFE0,         //浅　黄
    HUMToolStandard_Cornsilk_FFF8DC,            //玉米穗黄
    HUMToolStandard_Beige_F5F5DC,               //米　色
    HUMToolStandard_LightGoldenrodYellow_FAFAD2,//浅金菊黄
    HUMToolStandard_OldLace_FDF5E6,             //旧蕾丝白
    HUMToolStandard_Linen_FAF0E6,               //亚麻色
    HUMToolStandard_LemonChiffon_FFFACD,        //柠檬绸黄
    HUMToolStandard_PapayaWhip_FFEFCD,          //番木瓜橙
    HUMToolStandard_BlanchedAlmond_FFEBCD,      //杏仁白
    HUMToolStandard_Bisque_FFE4C4,              //陶坯黄
    HUMToolStandard_Wheat_F5DEB3,               //麦　色
    HUMToolStandard_Moccasin_FFE4B5,            //鹿皮色
    HUMToolStandard_NavajoWhite_FFDEAD,         //土著白
    HUMToolStandard_PaleGoldenrod_EEE8AA,       //白金菊黄
    HUMToolStandard_Khaki_F0E68C,               //卡其色
    HUMToolStandard_DarkKhaki_BDB76B,           //深卡其色
    HUMToolStandard_Yellow_FFFF00,              //黄　色
    HUMToolStandard_Gold_FFD700,                //金　色
    HUMToolStandard_Goldenrod_DAA520,           //金菊黄
    HUMToolStandard_DarkGoldenrod_B8860B,       //深金菊黄
    
    HUMToolStandard_Olive_808000,               //橄榄色
    HUMToolStandard_OliveDrab_6B8E23,           //橄榄绿
    HUMToolStandard_DarkOliveGreen_556B2F,      //深橄榄绿
    
    HUMToolStandard_Orange_FFA500,              //橙　色
    HUMToolStandard_Tan_D2B48C,                 //日晒褐
    HUMToolStandard_BurlyWood_DEB887,           //硬木褐
    HUMToolStandard_SandyBrown_F4A460,          //沙　褐
    HUMToolStandard_Chocolate_D2691E,           //巧克力色
    HUMToolStandard_Peru_CD853F,                //秘鲁红
    HUMToolStandard_SaddleBrown_8B4513,         //鞍　褐
    HUMToolStandard_Sienna_A0522D,              //土黄赭
    HUMToolStandard_MistyRose_FFE4E1,           //雾玫瑰红
    HUMToolStandard_PeachPuff_FFDAB9,           //粉扑桃色
    HUMToolStandard_LightSalmon_FFA07A,         //浅鲑红
    HUMToolStandard_Coral_FF7F550,              //珊瑚红
    HUMToolStandard_DarkOrange_FF8C00,          //深　橙
    HUMToolStandard_LightCoral_F08080,          //浅珊瑚红
    HUMToolStandard_RosyBrown_BC8F8F,           //玫瑰褐
    HUMToolStandard_IndianRed_CD5C5C,           //印度红
    HUMToolStandard_Salmon_FA8072,              //鲑　红
    HUMToolStandard_DarkSalmon_E9967A,          //深鲑红
    HUMToolStandard_Tomato_FF6347,              //番茄红
    HUMToolStandard_OrangeRed_FF4500,           //橘　红
    HUMToolStandard_Red_FF0000,                 //红　色
    HUMToolStandard_Brown_A52A2A,               //褐　色
    HUMToolStandard_FireBrick_B2222,            //火砖红
    HUMToolStandard_DarkRed_8B0000,             //深　红
    HUMToolStandard_Maroon_800000,              //栗　色
    
    HUMToolStandard_White_FFFFFF,               //白　色
    HUMToolStandard_Snow_FFFAFA,                //雪　白
    HUMToolStandard_FloralWhite_FFFAF0,         //花卉白
    HUMToolStandard_Ivory_FFFFF0,               //象牙白
    HUMToolStandard_Seashell_FFF5EE,            //贝壳白
    HUMToolStandard_MintCream_F5FFFA,           //薄荷乳白
    HUMToolStandard_GhostWhite_F8F8FF,          //幽灵白
    HUMToolStandard_Honeydew_F0FFF0,            //蜜瓜绿
    HUMToolStandard_WhiteSmoke_F5F5F5,          //烟雾白
    HUMToolStandard_AntiqueWhite_FAEBD7,        //古董白
    
    HUMToolStandard_Gainsboro_DCDCDC,           //庚氏灰
    HUMToolStandard_LightGray_D3D3D3,           //亮　灰
    HUMToolStandard_Silver_C0C0C0,              //银　色
    HUMToolStandard_DarkGray_A9A9A9,            //暗　灰
    HUMToolStandard_Gray_808080,                //灰　色
    HUMToolStandard_DimGray_696969,             //昏　灰
    HUMToolStandard_Black_000000,               //黑　色
} HUMToolWebStandardColor;
//web安全色
typedef enum : NSUInteger {
    HUMToolSafe_White_FFFFFF,
} HUMToolWebSafeColor;
//自定义色
typedef enum : NSUInteger {
    HUMToolCustomColor_MikuGreen_66FFCC,
    HUMToolCustomColor_TianYiBlue_66CCFF,
} HUMToolCustomColor;
/**
 web标准色
 
 @param HUMToolWebStandardColor WebStandardColor
 @return UIColor
 */
+ (UIColor *)colorWithHUMToolWebStandardColor:(NSInteger)HUMToolWebStandardColor;
/**
 web安全色 已弃用无需考虑
 
 @param HUMToolWebSafeColor WebSafeColor
 @return UIColor
 */
+ (UIColor *)colorWithHUMToolWebSafeColorColor:(NSInteger)HUMToolWebSafeColor NS_DEPRECATED_IOS(2_0,11_0, "Use -         colorWithHUMToolWebStandardColor:") __TVOS_PROHIBITED;;

/**
 自定义色

 @param HUMToolCustomColor HUMToolCustomColor
 @return UIColor
 */
+ (UIColor *)colorWithHUMToolCustomColorColor:(NSInteger)HUMToolCustomColor;
@end
