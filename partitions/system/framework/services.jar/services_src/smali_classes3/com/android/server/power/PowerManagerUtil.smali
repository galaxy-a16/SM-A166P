.class public abstract Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# static fields
.field public static final A23X_PROJECT:Z

.field public static final A53X_PROJECT:Z

.field public static final AUTO_BRIGHTNESS_TYPE:I

.field public static CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

.field public static final DEBUG_LOW:Z

.field public static final DEBUG_UNKNOWN:Z

.field public static final DIAMOND_PROJECT:Z

.field public static final EUREKA_PROJECT:Z

.field public static final HBM_LUX:I

.field public static final PALETTE_PROJECT:Z

.field public static final RAINBOW_PROJECT:Z

.field public static final SECURITY_FINGERPRINT_IN_DISPLAY:Z

.field public static final SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

.field public static final SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

.field public static final SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

.field public static final SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

.field public static final SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

.field public static final SEC_FEATURE_BATTERY_SIMULATION:Z

.field public static final SEC_FEATURE_DEX_DUAL_VIEW:Z

.field public static final SEC_FEATURE_DISPLAY_QUALITY:Z

.field public static final SEC_FEATURE_DUAL_DISPLAY:Z

.field public static final SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

.field public static final SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FEATURE_FLIP_COVER_DISPLAY:Z

.field public static final SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

.field public static final SEC_FEATURE_FOLD_COVER_DISPLAY:Z

.field public static final SEC_FEATURE_FULLSCREEN_AOD:Z

.field public static final SEC_FEATURE_HOMEHUB:Z

.field public static final SEC_FEATURE_HQM_SEND_DPUC:Z

.field public static final SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

.field public static final SEC_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY:Z

.field public static final SEC_FEATURE_PAPAYA_DQE:Z

.field public static final SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

.field public static final SEC_FEATURE_SCREEN_CURTAIN:Z

.field public static final SEC_FEATURE_SEAMLESS_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

.field public static final SEC_FEATURE_SUPPORT_HBM:Z

.field public static final SEC_FEATURE_SUPPORT_LEGACY_MISC_POWER_HAL:Z

.field public static final SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

.field public static final SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

.field public static final SEC_FEATURE_TABLET:Z

.field public static final SEC_FEATURE_USE_AFC:Z

.field public static final SEC_FEATURE_USE_GED_DOZE:Z

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_USE_SFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_AFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

.field public static final SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

.field public static final SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

.field public static final SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

.field public static final SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

.field public static final SHIP_BUILD:Z

.field public static final USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

.field public static USE_SEC_LONG_TERM_MODEL:Z

.field public static final USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

.field public static final YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

.field public static final deviceType:Ljava/lang/String;

.field public static final homeHubFeature:Ljava/lang/String;

.field public static final mProductName:Ljava/lang/String;

.field public static final sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

.field public static final sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

.field public static final sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

.field public static final sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const-string/jumbo v0, "ro.product.vendor.device"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "o1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "t2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "p3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->PALETTE_PROJECT:Z

    const-string/jumbo v4, "r0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "g0"

    if-nez v5, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "b0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->RAINBOW_PROJECT:Z

    const-string v7, "a53x"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->A53X_PROJECT:Z

    const-string v8, "a23xq"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->A23X_PROJECT:Z

    const-string v8, "dm1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "dm2"

    if-nez v9, :cond_5

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "dm3"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    move v9, v2

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v9, 0x1

    :goto_5
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->DIAMOND_PROJECT:Z

    const-string v11, "e1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "e2"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "e3"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    move v11, v2

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v11, 0x1

    :goto_7
    sput-boolean v11, Lcom/android/server/power/PowerManagerUtil;->EUREKA_PROJECT:Z

    const-string v12, "5"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    const/4 v13, 0x3

    if-lt v12, v13, :cond_8

    const/4 v13, 0x1

    goto :goto_8

    :cond_8
    move v13, v2

    :goto_8
    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    const/4 v14, 0x4

    if-ne v12, v14, :cond_9

    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    move v14, v2

    :goto_9
    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    const/4 v14, 0x5

    if-ne v12, v14, :cond_a

    const/4 v12, 0x1

    goto :goto_a

    :cond_a
    move v12, v2

    :goto_a
    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    xor-int/lit8 v12, v5, 0x1

    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    const-string v12, "Unknown"

    const-string/jumbo v13, "ro.boot.debug_level"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    const-string v14, "0x4f4c"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    const-string/jumbo v14, "ro.product_ship"

    const-string/jumbo v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v12, :cond_b

    if-nez v13, :cond_b

    const/4 v15, 0x1

    goto :goto_b

    :cond_b
    move v15, v2

    :goto_b
    sput-boolean v15, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-nez v12, :cond_c

    if-nez v13, :cond_c

    if-nez v14, :cond_c

    const/4 v15, 0x1

    goto :goto_c

    :cond_c
    move v15, v2

    :goto_c
    sput-boolean v15, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    if-nez v12, :cond_d

    if-nez v13, :cond_d

    if-nez v14, :cond_d

    const/4 v12, 0x1

    goto :goto_d

    :cond_d
    move v12, v2

    :goto_d
    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    const-string/jumbo v12, "ro.product.first_api_level"

    invoke-static {v12, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/16 v14, 0x1e

    if-ge v13, v14, :cond_e

    const/4 v13, 0x1

    goto :goto_e

    :cond_e
    move v13, v2

    :goto_e
    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string v14, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "aodversion"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    move-object/from16 v16, v12

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    move-object/from16 v17, v2

    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v12, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "INFINITY"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v12, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN"

    move/from16 v18, v7

    const/4 v7, -0x1

    invoke-virtual {v2, v12, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_f

    const/4 v2, 0x1

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FULLSCREEN_AOD:Z

    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    sput-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_CLOCKPACK_ITEM"

    invoke-virtual {v2, v3, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clockpackversion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    sget-boolean v2, Lcom/android/server/aod/AODConfig;->SUPPORT_SUB_DISPLAY_COVER:Z

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/server/aod/AODConfig;->SUPPORT_FRONT_SUB_DISPLAY_WATCHFACE:Z

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_BRIGHTNESS_ANIMATION"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    :cond_13
    :goto_12
    const/4 v0, 0x1

    :goto_13
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_TX"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_OPTION"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_NIGHT_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-nez v0, :cond_15

    if-eqz v2, :cond_14

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    :cond_15
    :goto_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-nez v0, :cond_17

    if-nez v1, :cond_17

    if-nez v5, :cond_17

    if-nez v9, :cond_17

    if-eqz v11, :cond_16

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    :cond_17
    :goto_16
    const/4 v0, 0x1

    :goto_17
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    sput-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activeclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    if-nez v0, :cond_18

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clocktransition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    :goto_18
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    const-string v0, "ADAPTIVE_BRIGHTNESS"

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v12, 0x1

    goto :goto_19

    :cond_19
    const/4 v12, 0x0

    :goto_19
    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_TOUCH_EVENT_AUTOBRIGHTNESS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    sput-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PAPAYA_DQE:Z

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_QUALITY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->homeHubFeature:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v12, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v12, 0x0

    :goto_1a
    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HOMEHUB:Z

    const-string v0, "34"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1b

    const/4 v12, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v12, 0x0

    :goto_1b
    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEM_SUPPORT_SCREEN_CURTAIN"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SCREEN_CURTAIN:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD:Z

    move-object/from16 v0, v16

    const/4 v12, 0x0

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1c
    move v0, v12

    :goto_1c
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_MISC_POWER_HAL:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eq v0, v7, :cond_1d

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1d
    move v2, v12

    :goto_1d
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    return-void
.end method

.method public static brightnessToString(F)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d(%.2f)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static brightnessToString(IF)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d(%.3f)"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static callerInfoToString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callerInfoToString(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq p0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dalvik.system.VMStack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Thread"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.server.power.PowerManagerUtil"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.server.power.PowerManagerService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.os.PowerManager"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " <- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static displayTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "SUB"

    return-object p0

    :cond_1
    const-string p0, "MAIN"

    return-object p0

    :cond_2
    const-string p0, "EXTERNAL"

    return-object p0
.end method

.method public static displayTypeToString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "main"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "sub"

    :goto_0
    return-object p0
.end method

.method public static fileExist(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileExist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteInt to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static floatArrayPairToString([F[F)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const-string/jumbo v2, "{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const-string v3, ", "

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCurrentTimeAsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDualScreenPolicy(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isFakeAodAvailable(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0
.end method
