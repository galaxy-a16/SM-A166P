.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "SemMdnieManagerService.java"


# static fields
.field public static final COUNTRYISO_CODE:Ljava/lang/String;

.field public static final isBangladeshCountryCode:Z

.field public static final isIndiaCountryCode:Z

.field public static final isMaldivesCountryCode:Z

.field public static final isNepalCountryCode:Z

.field public static final isSrilankaCountryCode:Z


# instance fields
.field public final AOD_SHOW_STATE_SETTINGS:Ljava/lang/String;

.field public final COLOR_LENS_MAX_COLOR:I

.field public final COLOR_LENS_MAX_LEVEL:I

.field public final DEBUG:Z

.field public final ENVIRONMENT_ADAPTIVE_DISPLAY:Ljava/lang/String;

.field public final FACTORY_DEFAULT_INDEX_VALUE:I

.field public final FACTORY_WHITE_INDEX_SIZE:I

.field public final FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

.field public final LCD_SRGB_MODE:I

.field public final MDNIE_SCREEN_ADJUSTMENT_MODE:Ljava/lang/String;

.field public final MDNIE_SUPPORT_FUNCTION:I

.field public NIGHT_MODE_MAX_INDEX:I

.field public final NIGHT_MODE_NEW_SYSFS_USE:Z

.field public final PRESET_WHITE_INDEX_SIZE:I

.field public final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field public final SCREEN_MODE_SETTING:Ljava/lang/String;

.field public final SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

.field public final SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

.field public final SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

.field public final SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

.field public final SYSFS_MDNIE_ADAPTIVE_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_ADAPTIVE_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_BYPASS_NODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_BYPASS_NODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

.field public final SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

.field public final SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

.field public final SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field public final SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_NIGHT_READING_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field public final SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field public final SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_VIVIDNESS_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_VIVIDNESS_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

.field public final SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

.field public final VIVIDNESS_INTENSITY:Ljava/lang/String;

.field public final WEAKNESS_SOLUTION_FUNCTION:I

.field public afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field public mAdaptiveBlueLightFilterSupported:Z

.field public mAlwaysOnDisplayEnabled:Z

.field public mAutoModeEnabled:Z

.field public mBlueFilterIndex:I

.field public mBlueLightFilterEnabled:Z

.field public mBrowserScenarioEnabled:Z

.field public mColorBlindEnabled:Z

.field public mColorVision:Z

.field public mColorVisionColor:I

.field public mColorVisionLevel:I

.field public mContentMode:I

.field public final mContext:Landroid/content/Context;

.field public mCurtainModeIsRunning:Z

.field public mCustomScrBIndex:I

.field public mCustomScrGIndex:I

.field public mCustomScrRIndex:I

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayOn:Z

.field public mDisplayState:I

.field public mDisplayStatePrev:I

.field public mEbookScenarioEnabled:Z

.field public mEnvironmentAdaptiveDisplayEnabled:Z

.field public mEnvironmentAdaptiveDisplaySupported:Z

.field public mFactoryScrBIndex:I

.field public mFactoryScrBIndexSub:I

.field public mFactoryScrGIndex:I

.field public mFactoryScrGIndexSub:I

.field public mFactoryScrIndex:I

.field public mFactoryScrIndexSub:I

.field public mFactoryScrRIndex:I

.field public mFactoryScrRIndexSub:I

.field public final mLock:Ljava/lang/Object;

.field public mMdnieCustomized:Z

.field public mMdnieFactorySupported:Z

.field public mMdnieWhiteRGBSupported:Z

.field public mMdnieWorkingCondition:Z

.field public mNegativeColorEnabled:Z

.field public mNightDimModeEnabled:Z

.field public mNightDimSupported:Z

.field public mNightMode:Z

.field public mNightModeBlock:Z

.field public mNightModeIndex:I

.field public mPresetAdjustWhiteRGB:[[[I

.field public mPrevScreenModeForReadingMode:I

.field public mReadingModeEnabled:Z

.field public mScreenCurtainEnabled:Z

.field public mScreenMode:I

.field public mScreenModeForReadingMode:I

.field public mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

.field public mSupportBlueFilter:Z

.field public mSupportColorAdjustment:Z

.field public mSupportContentMode:Z

.field public mSupportContentModeGame:Z

.field public mSupportContentModeSWA:Z

.field public mSupportContentModeVideoEnhance:Z

.field public mSupportGrayscale:Z

.field public mSupportHDR:Z

.field public mSupportHMT:Z

.field public mSupportLightNotificationMode:Z

.field public mSupportNegative:Z

.field public mSupportScreeenReadingMode:Z

.field public mSupportScreenCurtain:Z

.field public mSupportScreenMode:Z

.field public mUseAfterimageCompensationServiceConfig:Z

.field public mVividnessIndex:I

.field public mWorkBlueFilter:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetFP_FEATURE_SENSOR_IS_OPTICAL(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStatePrev(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightModeBlock(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportScreeenReadingMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkBlueFilter(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayStatePrev(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMdnieWorkingCondition(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetNightDimOffMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;ZI)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(ZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsysfsWrite(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.csc.countryiso_code"

    .line 242
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v1, "IN"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isIndiaCountryCode:Z

    const-string v1, "BD"

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isBangladeshCountryCode:Z

    const-string v1, "NP"

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isNepalCountryCode:Z

    const-string v1, "LK"

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isSrilankaCountryCode:Z

    const-string v1, "MV"

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMaldivesCountryCode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    const-string v2, "eng"

    .line 86
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEBUG:Z

    const/4 v2, 0x0

    .line 93
    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string/jumbo v3, "screen_mode_automatic_setting"

    .line 95
    iput-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v4, "screen_mode_setting"

    .line 96
    iput-object v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v5, "aod_show_state"

    .line 97
    iput-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->AOD_SHOW_STATE_SETTINGS:Ljava/lang/String;

    const-string/jumbo v6, "sec_display_temperature_red"

    .line 98
    iput-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

    const-string/jumbo v7, "sec_display_temperature_green"

    .line 99
    iput-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

    const-string/jumbo v8, "sec_display_temperature_blue"

    .line 100
    iput-object v8, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

    const-string/jumbo v9, "sec_display_preset_index"

    .line 101
    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

    const-string/jumbo v10, "setting_sead_enable"

    .line 102
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->ENVIRONMENT_ADAPTIVE_DISPLAY:Ljava/lang/String;

    const-string/jumbo v10, "vividness_intensity"

    .line 103
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->VIVIDNESS_INTENSITY:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/accessibility"

    .line 105
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/mode"

    .line 106
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/scenario"

    .line 107
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/vividness"

    .line 108
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VIVIDNESS_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/negative"

    .line 110
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/outdoor"

    .line 111
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/playspeed"

    .line 112
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/night_mode"

    .line 113
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/adaptive_mode"

    .line 114
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_ADAPTIVE_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/color_lens"

    .line 115
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/whiteRGB"

    .line 116
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/light_notification"

    .line 117
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/accessibility"

    .line 118
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/mode"

    .line 119
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/scenario"

    .line 120
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/vividness"

    .line 121
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VIVIDNESS_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/negative"

    .line 123
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/outdoor"

    .line 124
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/playspeed"

    .line 125
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/night_mode"

    .line 126
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/adaptive_mode"

    .line 127
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_ADAPTIVE_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/color_lens"

    .line 128
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/whiteRGB"

    .line 129
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/light_notification"

    .line 130
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/bypass"

    .line 132
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_BYPASS_NODE:Ljava/lang/String;

    const-string v11, "/sys/class/mdnie/mdnie1/bypass"

    .line 133
    iput-object v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_BYPASS_NODE_SUB:Ljava/lang/String;

    const-string v12, "/sys/class/lcd/panel/reading_mode"

    .line 135
    iput-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_READING_MODE:Ljava/lang/String;

    const-string v12, "/efs/FactoryApp/mdnie"

    .line 137
    iput-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

    const-string v12, "/efs/FactoryApp/mdnie1"

    .line 138
    iput-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

    const/4 v12, 0x3

    .line 140
    iput v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->LCD_SRGB_MODE:I

    const/16 v12, 0xc

    .line 141
    iput v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_COLOR:I

    const/16 v12, 0x9

    .line 142
    iput v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_LEVEL:I

    .line 144
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    const-string v12, "37905"

    .line 146
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    const-string v13, "0"

    .line 148
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->WEAKNESS_SOLUTION_FUNCTION:I

    .line 151
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string v14, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_FOR_TFT"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    .line 154
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string v14, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_SCREEN_ADJUSTMENT_MODE"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SCREEN_ADJUSTMENT_MODE:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string v14, "SEC_FLOATING_FEATURE_BIOAUTH_CONFIG_FINGERPRINT_FEATURES"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

    const/4 v13, 0x7

    .line 159
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_WHITE_INDEX_SIZE:I

    const/4 v13, 0x0

    .line 160
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_DEFAULT_INDEX_VALUE:I

    const/4 v14, 0x5

    .line 162
    iput v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->PRESET_WHITE_INDEX_SIZE:I

    .line 164
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 165
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 166
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 167
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    .line 168
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 169
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 170
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    .line 171
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    .line 172
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    .line 173
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    .line 174
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 175
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    .line 176
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    .line 177
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const/4 v14, 0x1

    .line 179
    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 180
    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 182
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    const/4 v15, -0x1

    .line 184
    iput v15, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    .line 185
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 187
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieCustomized:Z

    .line 191
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 192
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 194
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    .line 195
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    .line 196
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    .line 198
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 200
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 202
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 204
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    .line 205
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    .line 206
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 207
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 208
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 209
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndexSub:I

    .line 210
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndexSub:I

    .line 211
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndexSub:I

    .line 213
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    .line 214
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    .line 215
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    .line 217
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    .line 218
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 219
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    .line 220
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 221
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 226
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 227
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 228
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenCurtainEnabled:Z

    .line 229
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNegativeColorEnabled:Z

    .line 230
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorBlindEnabled:Z

    .line 231
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 232
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingModeEnabled:Z

    .line 233
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEbookScenarioEnabled:Z

    .line 234
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBrowserScenarioEnabled:Z

    .line 235
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 236
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    .line 237
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplaySupported:Z

    .line 240
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    const/4 v2, -0x6

    const/16 v14, -0x14

    .line 249
    filled-new-array {v13, v2, v14}, [I

    move-result-object v15

    const/4 v2, -0x3

    const/16 v14, -0xa

    move-object/from16 v16, v11

    filled-new-array {v13, v2, v14}, [I

    move-result-object v11

    filled-new-array {v13, v13, v13}, [I

    move-result-object v2

    const/4 v14, -0x5

    move-object/from16 v19, v10

    const/4 v10, -0x7

    filled-new-array {v10, v14, v13}, [I

    move-result-object v14

    const/16 v10, -0xe

    move-object/from16 v20, v5

    move-object/from16 v18, v9

    const/16 v5, -0xa

    filled-new-array {v10, v5, v13}, [I

    move-result-object v9

    filled-new-array {v15, v11, v2, v14, v9}, [[I

    move-result-object v2

    const/16 v9, -0x14

    const/4 v11, -0x3

    filled-new-array {v13, v11, v9}, [I

    move-result-object v14

    filled-new-array {v13, v13, v5}, [I

    move-result-object v5

    filled-new-array {v11, v13, v11}, [I

    move-result-object v15

    const/4 v11, -0x2

    move-object/from16 v21, v8

    const/4 v9, -0x7

    filled-new-array {v9, v11, v13}, [I

    move-result-object v8

    filled-new-array {v10, v9, v13}, [I

    move-result-object v11

    filled-new-array {v14, v5, v15, v8, v11}, [[I

    move-result-object v5

    const/16 v8, -0x14

    filled-new-array {v13, v13, v8}, [I

    move-result-object v8

    const/16 v9, -0xd

    const/4 v11, -0x3

    filled-new-array {v11, v13, v9}, [I

    move-result-object v9

    const/4 v14, -0x6

    filled-new-array {v14, v13, v14}, [I

    move-result-object v15

    const/4 v14, -0x8

    const/4 v11, -0x1

    filled-new-array {v14, v13, v11}, [I

    move-result-object v14

    const/4 v11, -0x4

    filled-new-array {v10, v11, v13}, [I

    move-result-object v11

    filled-new-array {v8, v9, v15, v14, v11}, [[I

    move-result-object v8

    const/16 v9, -0x17

    const/4 v11, -0x3

    filled-new-array {v11, v13, v9}, [I

    move-result-object v9

    const/16 v11, -0x10

    const/4 v14, -0x6

    filled-new-array {v14, v13, v11}, [I

    move-result-object v11

    const/16 v15, -0x9

    filled-new-array {v15, v13, v15}, [I

    move-result-object v14

    const/16 v15, -0xb

    move-object/from16 v17, v7

    const/4 v7, -0x4

    filled-new-array {v15, v13, v7}, [I

    move-result-object v7

    move-object/from16 v22, v6

    const/4 v15, -0x1

    filled-new-array {v10, v15, v13}, [I

    move-result-object v6

    filled-new-array {v9, v11, v14, v7, v6}, [[I

    move-result-object v6

    const/16 v7, -0x1a

    const/4 v9, -0x6

    filled-new-array {v9, v13, v7}, [I

    move-result-object v7

    const/16 v9, -0x13

    const/16 v11, -0x9

    filled-new-array {v11, v13, v9}, [I

    move-result-object v9

    const/16 v11, -0xc

    const/16 v14, -0xc

    filled-new-array {v11, v13, v14}, [I

    move-result-object v11

    const/4 v14, -0x7

    filled-new-array {v10, v13, v14}, [I

    move-result-object v10

    const/16 v14, -0x10

    const/4 v15, -0x2

    filled-new-array {v14, v13, v15}, [I

    move-result-object v14

    filled-new-array {v7, v9, v11, v10, v14}, [[I

    move-result-object v7

    filled-new-array {v2, v5, v8, v6, v7}, [[[I

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    .line 515
    new-instance v2, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1332
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    .line 260
    iput-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 264
    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-direct {v5, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v13

    .line 266
    :goto_0
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v13

    .line 267
    :goto_1
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v13

    .line 268
    :goto_2
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    move v5, v13

    .line 269
    :goto_3
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    and-int/lit8 v5, v12, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    move v5, v13

    .line 270
    :goto_4
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    and-int/lit8 v5, v12, 0x20

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    move v5, v13

    .line 271
    :goto_5
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    and-int/lit16 v5, v12, 0x100

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    move v5, v13

    .line 272
    :goto_6
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    and-int/lit16 v5, v12, 0x200

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_7

    :cond_7
    move v5, v13

    .line 273
    :goto_7
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    and-int/lit16 v5, v12, 0x400

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    move v5, v13

    .line 274
    :goto_8
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    and-int/lit16 v5, v12, 0x800

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_9

    :cond_9
    move v5, v13

    .line 275
    :goto_9
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    and-int/lit16 v5, v12, 0x1000

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_a

    :cond_a
    move v5, v13

    .line 276
    :goto_a
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    and-int/lit16 v5, v12, 0x2000

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_b

    :cond_b
    move v5, v13

    .line 277
    :goto_b
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    and-int/lit16 v5, v12, 0x4000

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    goto :goto_c

    :cond_c
    move v5, v13

    .line 278
    :goto_c
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    const v5, 0x8000

    and-int/2addr v5, v12

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_d

    :cond_d
    move v5, v13

    .line 279
    :goto_d
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const/4 v5, 0x1

    .line 281
    iput-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 282
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplaySupported:Z

    .line 284
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    const/4 v7, -0x2

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 286
    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 287
    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 288
    invoke-static/range {v21 .. v21}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 289
    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "vividness_intensity"

    .line 290
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v5, "blue_light_filter_night_dim"

    .line 291
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 292
    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v5, "ead_enabled"

    .line 293
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 295
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    .line 296
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_ON"

    .line 297
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 298
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.USER_PRESENT"

    .line 299
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver-IA;)V

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    new-instance v2, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/mdnie"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    .line 303
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 304
    :cond_e
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    and-int/2addr v2, v5

    if-eqz v2, :cond_f

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setFactoryWhiteRGB()V

    .line 307
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SYSFS_MDNIE_FACTORY_MDNIE : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mMdnieWhiteRGBSupported - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", S_EAD - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplaySupported:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SemMdnieManagerService"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_10

    const/4 v2, 0x1

    goto :goto_e

    :cond_10
    move v2, v13

    :goto_e
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, v4, v13, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 312
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x4

    .line 313
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 316
    :cond_11
    iget v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    .line 317
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 320
    :cond_12
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    const/4 v2, 0x1

    .line 322
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 323
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 325
    iget v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setScreenMode(I)Z

    .line 326
    iget v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setContentMode(I)Z

    .line 328
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v3, v4, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_13

    .line 329
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    .line 330
    :cond_13
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v3, v4, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_14

    .line 331
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 333
    :cond_14
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    if-eqz v2, :cond_15

    iget-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    if-eqz v3, :cond_15

    const/16 v2, 0x132

    .line 334
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    goto :goto_f

    :cond_15
    if-eqz v2, :cond_16

    .line 335
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    if-nez v2, :cond_16

    const/16 v2, 0x66

    .line 336
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    goto :goto_f

    :cond_16
    const/16 v2, 0xb

    .line 338
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 341
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemMdnieMdnieManager Night mode Index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    .line 345
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 346
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    .line 347
    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_10

    :cond_17
    const/4 v2, 0x1

    .line 348
    :goto_10
    new-instance v3, Ljava/io/File;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 349
    invoke-static {v4, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 352
    :cond_18
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    if-eqz v2, :cond_19

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_19

    .line 353
    new-instance v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {v2, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 355
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemMdnieMdnieManager AFC config : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->registerProcessObserver()V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    const-string v0, "SemMdnieMdnieManagerService Init Success"

    .line 359
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .locals 3

    .line 1181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1185
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1190
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1191
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1187
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    .line 1193
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1195
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 1197
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return v1
.end method

.method public static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1210
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "UTF-8"

    .line 1215
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1216
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1212
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    .line 1218
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1220
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 1222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method


# virtual methods
.method public afpcDataApply()Z
    .locals 3

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataApply"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1116
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataApply()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataOff()Z
    .locals 3

    .line 1125
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataOff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1126
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataOff()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataVerify()Z
    .locals 2

    const-string v0, "SemMdnieManagerService"

    const-string v1, "afpcDataVerify"

    .line 1096
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataVerify()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataWrite()Z
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1106
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataWrite()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public afpcWorkOff()Z
    .locals 3

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcWorkOff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1136
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcWorkOff()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkContentMode(I)Z
    .locals 3

    .line 857
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/16 v2, 0x14

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 876
    :pswitch_0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    if-eqz p0, :cond_1

    goto :goto_0

    .line 870
    :pswitch_1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    move v1, v0

    :cond_1
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final checkScreenMode(I)Z
    .locals 5

    .line 830
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    .line 848
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_4

    if-ne p1, v1, :cond_3

    move v4, v3

    :cond_3
    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    return v3
.end method

.method public disableNightMode()Z
    .locals 3

    .line 907
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "disableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 908
    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result p0

    return p0
.end method

.method public enableNightMode(I)Z
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "enableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 902
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result p0

    return p0
.end method

.method public getContentMode()I
    .locals 0

    .line 671
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    return p0
.end method

.method public getNightModeBlock()Z
    .locals 3

    .line 926
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "getNightModeBlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNightModeBlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    return p0
.end method

.method public getNightModeStep()I
    .locals 2

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNightModeStep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    return p0
.end method

.method public getScreenMode()I
    .locals 0

    .line 666
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return p0
.end method

.method public getSupportedContentMode()[I
    .locals 3

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDNIE_SUPPORT_FUNCTION ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), mSupportContentMode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 735
    :goto_0
    new-array v2, v2, [I

    if-eqz p0, :cond_1

    .line 738
    aput v1, v2, v1

    const/4 p0, 0x1

    .line 739
    aput p0, v2, p0

    const/4 p0, 0x2

    const/4 v1, 0x4

    .line 740
    aput v1, v2, p0

    const/4 p0, 0x3

    .line 741
    aput v0, v2, p0

    const/16 p0, 0x8

    .line 742
    aput p0, v2, v1

    const/4 p0, 0x5

    const/16 v0, 0x9

    .line 743
    aput v0, v2, p0

    :cond_1
    return-object v2
.end method

.method public getSupportedScreenMode()[I
    .locals 7

    .line 686
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 687
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_0

    .line 692
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v4

    .line 698
    :goto_0
    new-array v5, v5, [I

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 701
    aput v4, v5, v4

    .line 702
    aput v6, v5, v6

    .line 703
    aput v2, v5, v2

    const/4 v0, 0x3

    .line 704
    aput v3, v5, v0

    .line 705
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_4

    .line 706
    aput v1, v5, v3

    goto :goto_1

    .line 709
    :cond_3
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_4

    .line 710
    aput v3, v5, v4

    .line 711
    aput v1, v5, v6

    :cond_4
    :goto_1
    return-object v5
.end method

.method public isContentModeSupported()Z
    .locals 0

    .line 720
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNightModeSupported()Z
    .locals 0

    .line 893
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isScreenModeSupported()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final registerProcessObserver()V
    .locals 2

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 568
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SemMdnieManagerService"

    const-string v0, "failed to registerProcessObserver"

    .line 571
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAmoledACL(I)Z
    .locals 1

    .line 795
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 798
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v0, "/sys/class/lcd/panel/power_reduce"

    .line 800
    invoke-static {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 801
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setColorFadeNightDim(Z)Z
    .locals 5

    .line 991
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 992
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    const-string v1, "blue_light_filter_night_dim"

    .line 993
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 995
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    const-string v0, "SemMdnieManagerService"

    const-string/jumbo v1, "setColorFadeNightDim"

    .line 996
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 998
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(ZI)Z

    move-result p0

    return p0

    .line 1000
    :cond_2
    iget p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1001
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public setColorVision(ZII)Z
    .locals 4

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz p2, :cond_2

    const/16 v1, 0xc

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    const/16 v1, 0x9

    if-gt p3, v1, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "/sys/class/mdnie/mdnie/color_lens"

    .line 1054
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/color_lens"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/sys/class/mdnie/mdnie1/color_lens"

    .line 1056
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "SemMdnieManagerService"

    .line 1058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setColorVision : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    .line 1060
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    .line 1061
    iput p3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    .line 1062
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 1064
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setContentMode(I)Z
    .locals 4

    .line 771
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_5

    .line 772
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkContentMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "/sys/class/mdnie/mdnie/scenario"

    .line 774
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 776
    :cond_0
    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isIndiaCountryCode:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isBangladeshCountryCode:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isNepalCountryCode:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isSrilankaCountryCode:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMaldivesCountryCode:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 779
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/scenario"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "/sys/class/mdnie/mdnie1/scenario"

    .line 780
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_3
    const-string v1, "SemMdnieManagerService"

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContentMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 784
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 786
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setFactoryWhiteRGB()V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "/efs/FactoryApp/mdnie1"

    const-string v2, "/efs/FactoryApp/mdnie"

    const-string v3, "FileReader Close IOException : "

    const-string v4, "BufferedReader Close IOException : "

    const-string v5, "SemMdnieManagerService"

    const/4 v7, 0x0

    .line 585
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_20
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, " "

    if-eqz v8, :cond_1

    .line 586
    :try_start_1
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 587
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v12, :cond_0

    .line 590
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 591
    aget-object v14, v13, v7

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 592
    :try_start_5
    aget-object v15, v13, v10

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 593
    :try_start_6
    aget-object v13, v13, v9

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 594
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFactoryWhiteRGB : scrR - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", scrG - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", scrB - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v15, v13

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v15, v13

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_12

    :catch_7
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_0
    move v13, v7

    move v14, v13

    move v15, v14

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    goto/16 :goto_11

    :catch_a
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :catch_b
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :catch_c
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_12

    :catch_d
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_1
    move v13, v7

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 597
    :goto_4
    :try_start_8
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 598
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1e
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 599
    :try_start_9
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 600
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_18
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v16, :cond_2

    .line 602
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 603
    aget-object v11, v0, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 604
    :try_start_c
    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_14
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/16 v17, 0x2

    .line 605
    :try_start_d
    aget-object v0, v0, v17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 606
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v18, v6

    :try_start_f
    const-string/jumbo v6, "setFactoryWhiteRGB : scrRSub - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", scrGSub - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", scrBSub - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v6, v9

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catch_e
    move-exception v0

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_6

    :catch_10
    move-exception v0

    move-object/from16 v18, v6

    :goto_5
    move-object v6, v2

    move-object/from16 v2, v16

    goto :goto_7

    :catch_11
    move-exception v0

    move-object/from16 v18, v6

    :goto_6
    move-object v6, v2

    move-object/from16 v2, v16

    goto :goto_8

    :catch_12
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_7

    :catch_13
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_8

    :catch_14
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_7

    :catch_15
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_8

    :catch_16
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    move-object/from16 v16, v9

    goto/16 :goto_13

    :catch_17
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8
    move-object/from16 v16, v9

    goto/16 :goto_1b

    :cond_2
    move-object/from16 v18, v6

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v18, v6

    :goto_9
    move-object v1, v0

    move-object v6, v2

    move-object/from16 v16, v9

    goto/16 :goto_22

    :catch_18
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v16, v9

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_13

    :catch_19
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v16, v9

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1b

    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    move-object v6, v2

    const/16 v16, 0x0

    goto/16 :goto_22

    :catch_1a
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    goto/16 :goto_13

    :catch_1b
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1b

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_a
    if-eqz v2, :cond_4

    .line 616
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    :catch_1c
    move-exception v0

    goto :goto_c

    :cond_4
    :goto_b
    if-eqz v6, :cond_5

    .line 619
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1c

    goto :goto_d

    .line 622
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_d
    if-eqz v8, :cond_6

    .line 626
    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_e

    :catch_1d
    move-exception v0

    goto :goto_f

    :cond_6
    :goto_e
    if-eqz v18, :cond_7

    .line 629
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1d

    goto :goto_10

    .line 632
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_10
    move-object/from16 v2, v16

    goto/16 :goto_21

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    goto :goto_11

    :catch_1e
    move-exception v0

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_12

    :catch_1f
    move-exception v0

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1a

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_11
    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_22

    :catch_20
    move-exception v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_12
    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 612
    :goto_13
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v6, :cond_8

    .line 616
    :try_start_13
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_14

    :catch_21
    move-exception v0

    goto :goto_15

    :cond_8
    :goto_14
    if-eqz v16, :cond_9

    .line 619
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_21

    goto :goto_16

    .line 622
    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_16
    if-eqz v8, :cond_a

    .line 626
    :try_start_14
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_17

    :catch_22
    move-exception v0

    goto :goto_18

    :cond_a
    :goto_17
    if-eqz v18, :cond_e

    .line 629
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_22

    goto :goto_21

    .line 632
    :goto_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catch_23
    move-exception v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1a
    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 610
    :goto_1b
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    if-eqz v6, :cond_b

    .line 616
    :try_start_16
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_1c

    :catch_24
    move-exception v0

    goto :goto_1d

    :cond_b
    :goto_1c
    if-eqz v16, :cond_c

    .line 619
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_24

    goto :goto_1e

    .line 622
    :goto_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1e
    if-eqz v8, :cond_d

    .line 626
    :try_start_17
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_1f

    :catch_25
    move-exception v0

    goto :goto_20

    :cond_d
    :goto_1f
    if-eqz v18, :cond_e

    .line 629
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_25

    goto :goto_21

    .line 632
    :goto_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_19

    :cond_e
    :goto_21
    const/4 v0, 0x7

    const/16 v3, -0x28

    if-gtz v14, :cond_11

    if-lt v14, v3, :cond_11

    if-gtz v15, :cond_11

    if-lt v15, v3, :cond_11

    if-gtz v13, :cond_11

    if-lt v13, v3, :cond_11

    .line 637
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 638
    iput v14, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 639
    iput v15, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 640
    iput v13, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 641
    div-int/lit8 v14, v14, 0x3

    neg-int v4, v14

    iput v4, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    if-ltz v4, :cond_f

    if-le v4, v0, :cond_10

    :cond_f
    const/4 v4, 0x0

    .line 643
    iput v4, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    :cond_10
    if-eqz v12, :cond_11

    .line 645
    invoke-static {v5, v12}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 648
    :cond_11
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/mdnie/mdnie1/whiteRGB"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    if-gtz v11, :cond_14

    if-lt v11, v3, :cond_14

    if-gtz v10, :cond_14

    if-lt v10, v3, :cond_14

    if-gtz v7, :cond_14

    if-lt v7, v3, :cond_14

    .line 650
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 651
    iput v11, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndexSub:I

    .line 652
    iput v10, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndexSub:I

    .line 653
    iput v7, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndexSub:I

    .line 654
    div-int/lit8 v11, v11, 0x3

    neg-int v3, v11

    iput v3, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    if-ltz v3, :cond_12

    if-le v3, v0, :cond_13

    :cond_12
    const/4 v3, 0x0

    .line 656
    iput v3, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    :cond_13
    if-eqz v2, :cond_14

    .line 658
    invoke-static {v5, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14
    return-void

    :catchall_6
    move-exception v0

    move-object v1, v0

    :goto_22
    if-eqz v6, :cond_15

    .line 616
    :try_start_18
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_23

    :catch_26
    move-exception v0

    goto :goto_24

    :cond_15
    :goto_23
    if-eqz v16, :cond_16

    .line 619
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_26

    goto :goto_25

    .line 622
    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_25
    if-eqz v8, :cond_17

    .line 626
    :try_start_19
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_26

    :catch_27
    move-exception v0

    goto :goto_27

    :cond_17
    :goto_26
    if-eqz v18, :cond_18

    .line 629
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_27

    goto :goto_28

    .line 632
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_18
    :goto_28
    throw v1
.end method

.method public setLightNotificationMode(Z)Z
    .locals 5

    .line 1071
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1072
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1073
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/light_notification"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "/sys/class/mdnie/mdnie1/light_notification"

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1074
    :goto_0
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_1
    const-string v0, "SemMdnieManagerService"

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLightNotificationMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/mdnie/mdnie/light_notification"

    if-eqz p1, :cond_2

    move v1, v2

    .line 1077
    :cond_2
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1078
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return v1
.end method

.method public final setNightDimOffMode(ZI)Z
    .locals 6

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 1012
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1017
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    if-eqz v2, :cond_5

    if-ltz p2, :cond_5

    .line 1021
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    if-gt p2, v2, :cond_5

    .line 1022
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1023
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    if-eqz v4, :cond_2

    const-string v4, "/sys/class/lcd/panel/reading_mode"

    .line 1024
    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "SemMdnieManagerService"

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightDimOffMode_1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 1027
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 1028
    monitor-exit v2

    return v1

    :cond_2
    const-string v4, "/sys/class/mdnie/mdnie/night_mode"

    .line 1031
    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1032
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie1/night_mode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "/sys/class/mdnie/mdnie1/night_mode"

    .line 1033
    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v3, "SemMdnieManagerService"

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightDimOffMode_2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 1037
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 1038
    monitor-exit v2

    return v1

    .line 1041
    :cond_4
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return v3
.end method

.method public setNightMode(ZI)Z
    .locals 6

    .line 946
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 949
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    const-string v1, "aod_show_state"

    .line 950
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 952
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v1, p2, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 956
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 959
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    if-eqz v1, :cond_7

    if-ltz p2, :cond_7

    .line 963
    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    if-gt p2, v1, :cond_7

    .line 964
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    if-eqz v3, :cond_4

    const-string v3, "/sys/class/lcd/panel/reading_mode"

    .line 966
    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "SemMdnieManagerService"

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightMode_1 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 969
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 970
    monitor-exit v1

    return v4

    :cond_4
    const-string v3, "/sys/class/mdnie/mdnie/night_mode"

    .line 973
    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 974
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/night_mode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "/sys/class/mdnie/mdnie1/night_mode"

    .line 975
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    const-string v2, "SemMdnieManagerService"

    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightMode_2 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 979
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 980
    monitor-exit v1

    return v4

    .line 983
    :cond_6
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_3
    return v2
.end method

.method public setNightModeBlock(Z)Z
    .locals 4

    const/4 v0, 0x1

    .line 913
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 914
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setNightModeBlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNightModeBlock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMdnieManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->disableNightMode()Z

    :cond_0
    const/4 v1, 0x0

    .line 919
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 920
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    return v0
.end method

.method public setNightModeStep(I)Z
    .locals 2

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNightModeStep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    const/4 p0, 0x1

    return p0
.end method

.method public setScreenMode(I)Z
    .locals 4

    .line 750
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v0, :cond_3

    .line 751
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "/sys/class/mdnie/mdnie/mode"

    .line 754
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/sys/class/mdnie/mdnie1/mode"

    .line 756
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_1
    const-string v1, "SemMdnieManagerService"

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 760
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 762
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWhiteRGB(III)Z
    .locals 3

    const-string v0, "SemMdnieManagerService"

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhiteRGB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplaySupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    if-eqz v0, :cond_2

    if-gtz p1, :cond_2

    const/16 v0, -0xfa

    if-lt p1, v0, :cond_2

    if-gtz p2, :cond_2

    if-lt p2, v0, :cond_2

    if-gtz p3, :cond_2

    if-lt p3, v0, :cond_2

    .line 812
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 813
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/mdnie/mdnie/whiteRGB"

    .line 815
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 817
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/mdnie/mdnie1/whiteRGB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/sys/class/mdnie/mdnie1/whiteRGB"

    .line 819
    invoke-static {p2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 821
    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 822
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 2

    .line 1456
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v1, "setmDNIeAccessibilityMode"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setmDNIeAccessibilityMode("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMdnieManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 1

    .line 1343
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string p2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v0, "setmDNIeColorBlind"

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setmDNIeColorBlind ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMdnieManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .locals 4

    .line 1438
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v1, "setmDNIeEmergencyMode"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setmDNIeEmergencyMode ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemMdnieManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 1440
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .line 1441
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/accessibility"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    .line 1442
    :goto_1
    invoke-static {v3, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    and-int/2addr v1, p0

    :cond_2
    return v1
.end method

.method public setmDNIeNegative(Z)Z
    .locals 2

    .line 1389
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v1, "setmDNIeNegative"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setmDNIeNegative ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMdnieManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .locals 4

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeScreenCurtain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setmDNIeScreenCurtain ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    const/4 p0, 0x3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 1423
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .line 1424
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/accessibility"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    .line 1425
    :goto_1
    invoke-static {v3, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    and-int/2addr v1, p0

    :cond_2
    return v1
.end method

.method public final setting_is_changed()V
    .locals 16

    move-object/from16 v0, p0

    .line 436
    iget v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    .line 437
    iget-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    .line 438
    iget-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vividness_intensity"

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 439
    iget-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 440
    iget-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 441
    iget-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sec_display_temperature_blue"

    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 442
    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_display_preset_index"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 444
    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "screen_mode_automatic_setting"

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    iput-boolean v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 445
    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "ead_enabled"

    invoke-static {v7, v9, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v10, :cond_1

    move v7, v10

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    iput-boolean v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting_is_changed - mAutoModeEnabled : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " , mMdnieWhiteRGBSupported : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " , mEnvironmentAdaptiveDisplayEnabled : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "SemMdnieManagerService"

    invoke-static {v11, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-boolean v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplaySupported:Z

    const-string v12, ")"

    if-eqz v7, :cond_3

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setting_is_changed - EAD("

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v7, Ljava/io/File;

    const-string v13, "/sys/class/mdnie/mdnie/adaptive_mode"

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 451
    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v9, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-static {v13, v7}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 453
    :cond_2
    new-instance v7, Ljava/io/File;

    const-string v13, "/sys/class/mdnie/mdnie1/adaptive_mode"

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v9, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v13, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 458
    :cond_3
    iget-boolean v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEnvironmentAdaptiveDisplayEnabled:Z

    if-nez v4, :cond_8

    .line 459
    iget-boolean v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    const-string v7, "/sys/class/mdnie/mdnie1/whiteRGB"

    const-string v9, "/sys/class/mdnie/mdnie/whiteRGB"

    if-eqz v4, :cond_6

    iget-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v13, :cond_6

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setting_is_changed - white balance("

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "), R("

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "), G("

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "), B("

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v6, :cond_4

    const/4 v4, 0x5

    if-ge v6, v4, :cond_4

    .line 471
    iget-object v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    iget v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    aget-object v13, v4, v13

    aget-object v13, v13, v6

    aget v14, v13, v3

    add-int/2addr v14, v1

    .line 472
    aget v15, v13, v10

    add-int/2addr v15, v2

    .line 473
    aget v13, v13, v8

    add-int/2addr v13, v5

    .line 475
    iget v8, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    aget-object v4, v4, v8

    aget-object v4, v4, v6

    aget v6, v4, v3

    add-int/2addr v1, v6

    .line 476
    aget v6, v4, v10

    add-int/2addr v2, v6

    const/4 v6, 0x2

    .line 477
    aget v4, v4, v6

    add-int/2addr v5, v4

    goto :goto_2

    :cond_4
    move v1, v3

    move v2, v1

    move v5, v2

    move v13, v5

    move v14, v13

    move v15, v14

    :goto_2
    const-string v4, " "

    const/16 v6, -0xfa

    if-gtz v14, :cond_5

    if-lt v14, v6, :cond_5

    if-gtz v15, :cond_5

    if-lt v15, v6, :cond_5

    if-gtz v13, :cond_5

    if-lt v13, v6, :cond_5

    .line 481
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 482
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 483
    invoke-static {v9, v8}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 487
    :cond_5
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    if-gtz v1, :cond_8

    if-lt v1, v6, :cond_8

    if-gtz v2, :cond_8

    if-lt v2, v6, :cond_8

    if-gtz v5, :cond_8

    if-lt v5, v6, :cond_8

    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v7, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_8

    .line 493
    iget-boolean v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-nez v1, :cond_8

    .line 494
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "0 0 0"

    if-eqz v1, :cond_7

    .line 495
    invoke-static {v9, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 498
    invoke-static {v7, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    :cond_8
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDNESS"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_a

    .line 503
    iget-boolean v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v1, :cond_a

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting_is_changed - vividness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie/vividness"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 506
    iget v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 508
    :cond_9
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/vividness"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 509
    iget v0, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_a
    return-void
.end method

.method public updateAlwaysOnDisplay(ZI)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 1087
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_0

    .line 1088
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateAlwaysOnDisplayForBurnInService(ZI)V

    .line 1091
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
