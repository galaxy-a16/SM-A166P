.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "SemDisplaySolutionManagerService.java"


# static fields
.field public static RETURN_ERROR_F:F = -1.0f


# instance fields
.field public final BRIGHTNESS_SCALE_OFF:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_1:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_2:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_3:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_4:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_5:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_6:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_7:Ljava/lang/String;

.field public final BROWSER_APP_BRIGHTNESS_OFF:Ljava/lang/String;

.field public final BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

.field public final BURNIN_PREVENTION_OFF:Ljava/lang/String;

.field public final BURNIN_PREVENTION_ON:Ljava/lang/String;

.field public BURN_IN_APPLY_COUNT:Ljava/lang/String;

.field public BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

.field public final COLOR_BLIND_OFF:Ljava/lang/String;

.field public final COLOR_BLIND_ON:Ljava/lang/String;

.field public final DEBUG:Z

.field public DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public DOU_BRIGHTNESS_SUPPORT_VALUE:I

.field public DOU_VERSION:I

.field public final EXTRA_BRIGHTNESS_OFF:Ljava/lang/String;

.field public final EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

.field public final HIGH_BRIGHTNESS_MODE_PMS_ENTER:Ljava/lang/String;

.field public IRC_MODE_NODE:Ljava/lang/String;

.field public IRC_MODE_SUB_NODE:Ljava/lang/String;

.field public NIGHT_DIM_MODE_NODE:Ljava/lang/String;

.field public NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

.field public final REAL_HDR_OFF:Ljava/lang/String;

.field public final REAL_HDR_ON:Ljava/lang/String;

.field public final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field public SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field public adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

.field public bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

.field public ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

.field public mAdaptiveScreenModeEnabled:Z

.field public mAfcType:I

.field public mAppBrightnessScale:Z

.field public mAutoBrightnessMode:Z

.field public mAutoBrightnessModeEnabled:Z

.field public mAutoCurrentLimitOffEnable:Z

.field public mBrightnessBacklightValueStringArray:[Ljava/lang/String;

.field public mBrightnessCameraAppArray:[F

.field public mBrightnessCompensation:F

.field public mBrightnessExtraBrightnessArray:[F

.field public mBrightnessGalleryAppArray:[F

.field public mBrightnessNitsValueStringArray:[Ljava/lang/String;

.field public mBrightnessOverHeatAppArray:[F

.field public mBrightnessSamsungVideoAppArray:[F

.field public mBrightnessVideoEnhancerArray:[F

.field public mBrowserAppBrightnessControl:Z

.field public mBurnInPrevention:Z

.field public mBurnInScaleFactorStringArray:[Ljava/lang/String;

.field public mBurnInScaleFactorValueArray:[F

.field public mCameraAppBrightnessStringArray:[Ljava/lang/String;

.field public mCameraEnable:Z

.field public mColorBlind:Z

.field public final mContext:Landroid/content/Context;

.field public mDouAppEnable:Z

.field public mExtraBrightness:Z

.field public mExtraBrightnessModeEnabled:Z

.field public mExtraBrightnessStringArray:[Ljava/lang/String;

.field public mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field public mGalleryAppBrightnessStringArray:[Ljava/lang/String;

.field public mGalleryEnable:Z

.field public mGammaArray:[F

.field public mGammaStringArray:[Ljava/lang/String;

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeScaleFactorValue:F

.field public mIsFolded:Z

.field public mLastScaleFactorValue:F

.field public final mLock:Ljava/lang/Object;

.field public mMSCSEnable:Z

.field public mName:Ljava/lang/String;

.field public final mNumberDisplaySolutionBrowserAppScaleFactorStep:I

.field public final mNumberDisplaySolutionBurnInScaleFactor:I

.field public final mNumberDisplaySolutionCameraAppBrightnessFactor:I

.field public final mNumberDisplaySolutionExtraBrightnessFactor:I

.field public final mNumberDisplaySolutionGalleryAppBrightnessFactor:I

.field public final mNumberDisplaySolutionGammaFactor:I

.field public final mNumberDisplaySolutionOverHeatAppBrightnessFactor:I

.field public final mNumberDisplaySolutionSamsungVideoAppBrightnessFactor:I

.field public final mNumberDisplaySolutionScaleFactor:I

.field public final mNumberDisplaySolutionVideoEnhancerBrightnessFactor:I

.field public mOnPixelRatioValue:Ljava/lang/String;

.field public mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

.field public mPlatformBrightnessValue:F

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRealHDR:Z

.field public final mSCafeVersion:Ljava/lang/String;

.field public mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

.field public mScaleFactor:F

.field public mScaleFactorStringArray:[Ljava/lang/String;

.field public mScaleFactorValueArray:[F

.field public mScreenBrightnessExtendedMaximumConfig:I

.field public mSettingValue:Ljava/lang/String;

.field public mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

.field public mTitle:Ljava/lang/String;

.field public mUseAdaptiveDisplaySolutionServiceConfig:Z

.field public mUseBigDataLoggingServiceConfig:Z

.field public mUseEyeComfortSolutionServiceConfig:Z

.field public mUseMdnieScenarioControlServiceConfig:Z

.field public mVideoEnable:Z

.field public mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

.field public mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field public settingsValueEM:F

.field public settingsValuePSM:F

.field public settingsValueUPSM:F

.field public temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

.field public temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

.field public temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

.field public temp_COLOR_BLIND_ON:Ljava/lang/String;

.field public temp_EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

.field public temp_REAL_HDR_ON:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetIRC_MODE_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdaptiveScreenModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExtraBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFolded(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsFolded(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsysfsWrite(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

    const-string v0, "eng"

    .line 70
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DEBUG:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 79
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    .line 122
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 123
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 124
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 125
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 128
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    .line 129
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    .line 130
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 131
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 132
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    const-string v1, "/sys/class/lcd/panel/irc_mode"

    .line 158
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel1/irc_mode"

    .line 159
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel/night_dim"

    .line 160
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel1/night_dim"

    .line 161
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    const-string v1, "/efs/afc/apply_count"

    .line 162
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    const-string v1, "/efs/afc1/apply_count"

    .line 163
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    const-string v1, "color_blind_on"

    .line 164
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_ON:Ljava/lang/String;

    const-string v1, "color_blind_off"

    .line 165
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_OFF:Ljava/lang/String;

    const-string/jumbo v1, "real_hdr_on"

    .line 166
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_ON:Ljava/lang/String;

    const-string/jumbo v1, "real_hdr_off"

    .line 167
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_OFF:Ljava/lang/String;

    const-string v1, "extra_brightness_on"

    .line 168
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

    const-string v1, "extra_brightness_off"

    .line 169
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->EXTRA_BRIGHTNESS_OFF:Ljava/lang/String;

    const-string v1, "brightness_scale_on_1"

    .line 170
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_1:Ljava/lang/String;

    const-string v1, "brightness_scale_on_2"

    .line 171
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_2:Ljava/lang/String;

    const-string v1, "brightness_scale_on_3"

    .line 172
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_3:Ljava/lang/String;

    const-string v1, "brightness_scale_on_4"

    .line 173
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_4:Ljava/lang/String;

    const-string v1, "brightness_scale_on_5"

    .line 174
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_5:Ljava/lang/String;

    const-string v1, "brightness_scale_on_6"

    .line 175
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_6:Ljava/lang/String;

    const-string v1, "brightness_scale_on_7"

    .line 176
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_7:Ljava/lang/String;

    const-string v1, "brightness_scale_off"

    .line 177
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_OFF:Ljava/lang/String;

    const-string v1, "browser_brightness_on"

    .line 178
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    const-string v1, "browser_brightness_off"

    .line 179
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BROWSER_APP_BRIGHTNESS_OFF:Ljava/lang/String;

    const-string v1, "burnin_prevention_on"

    .line 180
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_ON:Ljava/lang/String;

    const-string v1, "burnin_prevention_off"

    .line 181
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_OFF:Ljava/lang/String;

    const-string/jumbo v1, "screen_mode_automatic_setting"

    .line 182
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string v2, "high_brightness_mode_pms_enter"

    .line 183
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HIGH_BRIGHTNESS_MODE_PMS_ENTER:Ljava/lang/String;

    const-string/jumbo v3, "ro.build.scafe.version"

    .line 184
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/16 v3, 0xff

    .line 185
    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    const/4 v4, 0x1

    .line 186
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionScaleFactor:I

    const/16 v5, 0x14

    .line 187
    iput v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionBrowserAppScaleFactorStep:I

    const/16 v5, 0xa

    .line 188
    iput v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionBurnInScaleFactor:I

    .line 189
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionExtraBrightnessFactor:I

    .line 190
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionGalleryAppBrightnessFactor:I

    .line 191
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionCameraAppBrightnessFactor:I

    .line 192
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionSamsungVideoAppBrightnessFactor:I

    .line 193
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionOverHeatAppBrightnessFactor:I

    const/4 v6, 0x2

    .line 194
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionVideoEnhancerBrightnessFactor:I

    .line 195
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionGammaFactor:I

    .line 200
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11101b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x111004b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0108

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070050

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107004e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107005e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070047

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070075

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070077

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070078

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0088

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 223
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_0

    .line 224
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 226
    :cond_0
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v7, :cond_1

    .line 227
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 228
    new-instance v7, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 230
    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    if-eqz v7, :cond_2

    .line 231
    new-instance v7, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 232
    :cond_2
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v7, :cond_3

    .line 233
    new-instance v7, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 234
    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v7, :cond_4

    .line 235
    new-instance v7, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 237
    :cond_4
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    if-le p1, v3, :cond_5

    .line 238
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 240
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUseMdnieScenarioControlServiceConfig : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SemDisplaySolutionManagerService"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUseAdaptiveDisplaySolutionServiceConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUseEyeComfortSolutionServiceConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUseBigDataLoggingServiceConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mScreenBrightnessExtendedMaximumConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v4, [F

    .line 246
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    move p1, v0

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    array-length v7, v3

    if-ge p1, v7, :cond_6

    .line 248
    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    new-array p1, v5, [F

    .line 251
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    move p1, v0

    .line 252
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_7

    .line 253
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    new-array p1, v4, [F

    .line 256
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    move p1, v0

    .line 257
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_8

    .line 258
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    new-array p1, v4, [F

    .line 261
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    move p1, v0

    .line 262
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_9

    .line 263
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    new-array p1, v4, [F

    .line 266
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    move p1, v0

    .line 267
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_a

    .line 268
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    new-array p1, v4, [F

    .line 271
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    move p1, v0

    .line 272
    :goto_5
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_b

    .line 273
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_b
    new-array p1, v4, [F

    .line 276
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    move p1, v0

    .line 277
    :goto_6
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_c

    .line 278
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_c
    new-array p1, v6, [F

    .line 281
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    move p1, v0

    .line 282
    :goto_7
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_d

    .line 283
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_d
    new-array p1, v4, [F

    .line 286
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    move p1, v0

    .line 287
    :goto_8
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_e

    .line 288
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 291
    :cond_e
    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    .line 292
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 293
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 295
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 296
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screen_extra_brightness"

    .line 297
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screen_brightness_mode"

    .line 298
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "blue_light_filter"

    .line 299
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "blue_light_filter_night_dim"

    .line 300
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->registerDisplayStateListener()V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->display_setting_value_check()V

    return-void
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .locals 3

    .line 500
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 504
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 510
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

    .line 506
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    .line 512
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 516
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return v1
.end method


# virtual methods
.method public final burn_in_brightness_compensation()V
    .locals 6

    .line 375
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 378
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "SemDisplaySolutionManagerService"

    if-nez v0, :cond_1

    .line 379
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "burn_in_brightness_compensation() raw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "burn_in_brightness_compensation() sub raw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 386
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    :try_start_2
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 389
    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 390
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    const/4 v4, 0x7

    if-gt v3, v4, :cond_4

    .line 392
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v3, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    if-lt v3, v4, :cond_7

    .line 394
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v3, 0x3be56042    # 0.007f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_1

    .line 398
    :cond_5
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 401
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberFormatException : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    :cond_6
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 407
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final calculateAlphaBlendingValue(FFFF)F
    .locals 1

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateAlphaBlendingValue() currentNits : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , targetNits : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , br_ctrl : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , gamma : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemDisplaySolutionManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    float-to-double p0, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p4

    float-to-double p2, p2

    .line 600
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, p0

    double-to-float p0, p2

    return p0
.end method

.method public final controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 447
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 448
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 449
    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 450
    iput-object p3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->burn_in_brightness_compensation()V

    .line 454
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string p2, "application"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 455
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "where : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " what : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " setScreenBrightnessScaleFactor("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ") , mBrightnessCompensation : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , PMS value : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemDisplaySolutionManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public final display_setting_value_check()V
    .locals 4

    .line 424
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SemDisplaySolutionManagerService"

    if-eqz v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAutoBrightnessModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "extra_brightness_on"

    .line 427
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "extra_brightness_off"

    .line 429
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 432
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHighBrightnessModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-nez v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 435
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_2
    const-string p0, "IRC Mode : flat_gamma_mode"

    .line 437
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 440
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 441
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_4
    const-string p0, "IRC Mode : moderato_mode"

    .line 442
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getAlphaMaskLevel(FFF)F
    .locals 3

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlphaMaskLevel() CurrentPlatformBrightnessValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , FingerPrintPlatformValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , br_ctrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , gamma : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDisplaySolutionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getNitsFromBrightness(F)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getNitsFromBrightness(F)F

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    aget v0, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->calculateAlphaBlendingValue(FFFF)F

    move-result p0

    return p0
.end method

.method public getAutoCurrentLimitOffModeEnabled()Z
    .locals 0

    .line 561
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    return p0
.end method

.method public getBlfAdaptiveCurrentIndex()I
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBlfAdaptiveCurrentIndex()I

    move-result p0

    monitor-exit v0

    return p0

    .line 823
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    .line 825
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCameraModeEnable()Z
    .locals 0

    .line 551
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    return p0
.end method

.method public getDouAppModeEnable()Z
    .locals 0

    .line 556
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    return p0
.end method

.method public getFingerPrintBacklightValue(I)F
    .locals 3

    const/4 v0, 0x0

    .line 576
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    .line 577
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFingerPrintBacklightValue() brightnessNits : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , FingerPrintBacklightValue : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , mBrightnessNitsValueStringArray_Size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemDisplaySolutionManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_1
    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->RETURN_ERROR_F:F

    return p0
.end method

.method public getGalleryModeEnable()Z
    .locals 0

    .line 546
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    return p0
.end method

.method public final getNitsFromBrightness(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 593
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    float-to-int p1, p1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 595
    :cond_0
    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->RETURN_ERROR_F:F

    return p0
.end method

.method public getOnPixelRatioValueForPMS()Ljava/lang/String;
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    return-object p0
.end method

.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 p0, 0x80

    new-array v0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    .line 470
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "File Close error"

    const-string v2, "SemDisplaySolutionManagerService"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 474
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    .line 477
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez p1, :cond_2

    .line 479
    :try_start_2
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p1, -0x1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v5

    .line 481
    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catch_1
    move-exception v0

    move v1, p1

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v4

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_2
    move-object v0, v3

    move-object v3, v4

    .line 484
    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , in : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_6

    .line 489
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 491
    :catch_3
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_4
    if-eqz v3, :cond_3

    .line 489
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 491
    :catch_4
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_3
    :goto_5
    throw p1

    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 489
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    .line 491
    :catch_5
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_7
    move-object v0, v3

    :cond_6
    :goto_8
    return-object v0
.end method

.method public getVideoEnhancerSettingState(Ljava/lang/String;)I
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->findVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVideoModeEnable()Z
    .locals 0

    .line 541
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    return p0
.end method

.method public final getting_auto_brightness_mode_enabled()Z
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x0

    .line 528
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    return v3
.end method

.method public final getting_platform_brightness_value()F
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness"

    .line 535
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPlatformBrightnessValue:F

    return v0
.end method

.method public isBlueLightFilterScheduledTime()Z
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->isBlueLightFilterScheduledTime()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 803
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 805
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .locals 0

    .line 605
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    return p0
.end method

.method public onAutoCurrentLimitOffMode(Z)V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    .line 667
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffMode(Z)V

    goto :goto_0

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    .line 671
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffMode(Z)V

    .line 674
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAutoCurrentLimitStateChanged(Z)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 627
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_1

    .line 628
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_1

    .line 632
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    .line 635
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAutoCurrentLimitStateChangedInt(I)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_0

    .line 657
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateInt(I)V

    .line 659
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

.method public onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 642
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_1

    .line 643
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_1

    .line 647
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    .line 650
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBurnInPreventionDisabled(Z)V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    .line 682
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffModeSNS(Z)V

    goto :goto_0

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    .line 686
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffModeSNS(Z)V

    .line 689
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDetailVeiwStateChanged(Z)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 612
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_1

    .line 613
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    goto :goto_0

    .line 616
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_1

    .line 617
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    .line 620
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerDisplayStateListener()V
    .locals 2

    const-string v0, "SemDisplaySolutionManagerService"

    const-string/jumbo v1, "registerDisplayStateListener"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 371
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setAutoCurrentLimitOffModeEnabled(Z)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    .line 724
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBlfEnableTimeBySchedule(ZI)V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_0

    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlfEnableTimeBySchedule(ZI)V

    .line 794
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

.method public setCameraModeEnable(Z)V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    .line 710
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDouAppModeEnable(Z)V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    .line 717
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setEadIndexOffset(I)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_0

    .line 812
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setEadIndexOffset(I)V

    .line 814
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

.method public setEyeComfortWeightingFactor(F)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_0

    .line 765
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setEyeComfortWeightingFactorValue(F)V

    .line 767
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

.method public setGalleryModeEnable(Z)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    .line 703
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setHighDynamicRangeMode(Z)V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_0

    .line 738
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHighDynamicRangeModeState(Z)V

    .line 740
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

.method public setIRCompensationMode(Z)V
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 747
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string p0, "SemDisplaySolutionManagerService"

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIRCompensationMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : moderato_mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 750
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-eqz v2, :cond_1

    .line 751
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v1, "SemDisplaySolutionManagerService"

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIRCompensationMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : moderato_mode , vivid mode :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v1, "SemDisplaySolutionManagerService"

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIRCompensationMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : flat_gamma_mode , vivid mode :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 731
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 8

    .line 868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 869
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 871
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_auto_brightness_mode_enabled()Z

    move-result v2

    .line 872
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_platform_brightness_value()F

    move-result v3

    .line 874
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v5, "SemDisplaySolutionManagerService"

    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , name : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2a

    .line 877
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz p1, :cond_2a

    const-string v0, "color_blind_on"

    .line 879
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "color_blind_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    .line 886
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    .line 893
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 900
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_5"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_6"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_7"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 907
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 914
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 915
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 916
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    .line 917
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto/16 :goto_5

    .line 918
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 919
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto/16 :goto_5

    .line 908
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 909
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    .line 910
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    goto/16 :goto_5

    .line 911
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 912
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    goto/16 :goto_5

    .line 901
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 902
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    goto :goto_5

    .line 904
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 905
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    goto :goto_5

    .line 894
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 895
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

    .line 896
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    goto :goto_5

    .line 897
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 898
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    goto :goto_5

    .line 887
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 888
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_REAL_HDR_ON:Ljava/lang/String;

    .line 889
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_5

    .line 890
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 891
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_5

    .line 880
    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "color_blind_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 881
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_COLOR_BLIND_ON:Ljava/lang/String;

    .line 882
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    goto :goto_5

    .line 883
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "color_blind_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 884
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 923
    :cond_11
    :goto_5
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-eqz p1, :cond_12

    .line 924
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "ColorBlind"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, ColorBlind, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 926
    :cond_12
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz p1, :cond_13

    .line 927
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    const-string v0, "application"

    const-string v1, "RealHDR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultipleScreenBrightness , application, RealHDR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 929
    :cond_13
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    if-eqz p1, :cond_14

    .line 930
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "ExtraBrightness"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, ExtraBrightness, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 932
    :cond_14
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    const/16 v5, 0xff

    if-eqz p1, :cond_18

    :cond_15
    :goto_6
    const/16 p1, 0x14

    if-ge v1, p1, :cond_2a

    .line 934
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browser_brightness_on_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "SemDisplaySolutionManagerService"

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastScaleFactorValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , (Float)((100 - (i+1)) * 0.01f) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , Float.compare(mLastScaleFactorValue, (Float)((100 - (i+1)) * 0.01f)) : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    if-ne p1, v5, :cond_17

    .line 937
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_16

    .line 938
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "application"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrowserAppBrightnessControl_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string p1, "SemDisplaySolutionManagerService"

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 943
    :cond_17
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    int-to-float v0, v1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr p1, v2

    const-string v2, "application"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrowserAppBrightnessControl_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 948
    :cond_18
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    if-eqz p1, :cond_27

    .line 949
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v6, "brightness_scale_on_1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 950
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_1"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_1, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 952
    :cond_19
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v6, "brightness_scale_on_2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1a

    .line 954
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1a
    if-nez v2, :cond_2a

    .line 957
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    if-eq p1, v5, :cond_1c

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    const/4 v5, 0x2

    if-lt p1, v5, :cond_1c

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getDouAppModeEnable()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 958
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v0

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    cmpg-float p1, v3, p1

    if-gez p1, :cond_1b

    .line 959
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 962
    :cond_1b
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "application"

    const-string v1, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 967
    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget v0, p1, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1d

    .line 968
    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1d
    div-float/2addr v6, v3

    const-string p1, "application"

    const-string v0, "HDREffect_2"

    .line 971
    invoke-virtual {p0, v6, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p0, "SemDisplaySolutionManagerService"

    .line 972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " auto_brightness_enabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " platform_brightness_value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 976
    :cond_1e
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 977
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    if-eqz p1, :cond_1f

    .line 978
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "GalleryAppScaleUp"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1f
    if-nez p1, :cond_2a

    .line 981
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "GalleryAppScaleUp"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 984
    :cond_20
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 985
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    if-eqz p1, :cond_21

    .line 986
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "CameraAppScaleUp"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, CameraAppScaleUp, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_21
    if-nez p1, :cond_2a

    .line 989
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "CameraAppScaleUp"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, CameraAppScaleUp, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 992
    :cond_22
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    if-eqz v2, :cond_23

    .line 994
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v3, "SamsungVideoAppScaleUp"

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_23
    if-nez v2, :cond_2a

    .line 997
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v3, "SamsungVideoAppScaleUp"

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1000
    :cond_24
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    if-nez v2, :cond_2a

    .line 1002
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, p1

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_25

    int-to-float p1, p1

    sub-float p1, v3, p1

    .line 1003
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, v0

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr p1, v0

    sub-float p1, v1, p1

    const-string v0, "application"

    const-string v5, "DouScaleDown"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float p1, p1

    sub-float p1, v3, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, v0

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    mul-float/2addr p1, v0

    sub-float p1, v1, p1

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    const-string p1, "SemDisplaySolutionManagerService"

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, DouScaleDown, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v5, v7

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p0, p0

    div-float/2addr p0, v6

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float p0, v1, p0

    mul-float/2addr v5, p0

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ,platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ,auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1008
    :cond_25
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "DouScaleDown"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, DouScaleDown, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1012
    :cond_26
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1013
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "OverHeatScaleDown"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, OverHeatScaleDown, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1016
    :cond_27
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    if-eqz p1, :cond_29

    :goto_7
    const/16 p1, 0xa

    if-ge v1, p1, :cond_2a

    .line 1018
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "burnin_prevention_on_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1019
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BurnInPrevention_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    const-string p1, "SemDisplaySolutionManagerService"

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, BurnInPrevention_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    move v1, v2

    goto :goto_7

    .line 1025
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "DEFAULT"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    const-string p1, "SemDisplaySolutionManagerService"

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Normal Mode setMultipleScreenBrightness , application, DEFAULT, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_2a
    :goto_8
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMultipleScreenBrightnessValueForHDR(F)V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_0
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 855
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    .line 862
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setScreenBrightnessForPreview(I)V
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 848
    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSleepPatternBLF(Ljava/lang/String;JJF)V
    .locals 8

    .line 781
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    .line 783
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateRubinSleepPattern(Ljava/lang/String;JJF)V

    .line 785
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

.method public setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_0

    .line 774
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateVideoEnhancerSettingState(Ljava/lang/String;I)V

    .line 776
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

.method public setVideoModeEnable(Z)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    .line 696
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setting_is_changed()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_pms_enter"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 415
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    .line 416
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    const-string/jumbo v1, "screen_extra_brightness"

    .line 417
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_brightness_mode"

    .line 418
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v2, v4

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHighBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mAutoBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemDisplaySolutionManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
