.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# static fields
.field public static final DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

.field public static final DEFAULT_BRIGHTNESS_THRESHOLDS:[I

.field public static final DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

.field static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f


# instance fields
.field public mAmbientBrighteningLevels:[F

.field public mAmbientBrighteningLevelsIdle:[F

.field public mAmbientBrighteningPercentages:[F

.field public mAmbientBrighteningPercentagesIdle:[F

.field public mAmbientDarkeningLevels:[F

.field public mAmbientDarkeningLevelsIdle:[F

.field public mAmbientDarkeningPercentages:[F

.field public mAmbientDarkeningPercentagesIdle:[F

.field public mAmbientHorizonLong:I

.field public mAmbientHorizonShort:I

.field public final mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field public mAmbientLuxBrighteningMinThreshold:F

.field public mAmbientLuxBrighteningMinThresholdIdle:F

.field public mAmbientLuxDarkeningMinThreshold:F

.field public mAmbientLuxDarkeningMinThresholdIdle:F

.field public mAutoBrightnessAvailable:Z

.field public mAutoBrightnessBrighteningLightDebounce:J

.field public mAutoBrightnessDarkeningLightDebounce:J

.field public mBacklight:[F

.field public mBacklightMaximum:F

.field public mBacklightMinimum:F

.field public mBacklightToBrightnessSpline:Landroid/util/Spline;

.field public mBacklightToNitsSpline:Landroid/util/Spline;

.field public mBrightness:[F

.field public mBrightnessDefault:F

.field public mBrightnessLevelsLux:[F

.field public mBrightnessLevelsNits:[F

.field public mBrightnessRampDecreaseMaxMillis:J

.field public mBrightnessRampFastDecrease:F

.field public mBrightnessRampFastIncrease:F

.field public mBrightnessRampIncreaseMaxMillis:J

.field public mBrightnessRampSlowDecrease:F

.field public mBrightnessRampSlowIncrease:F

.field public mBrightnessToBacklightSpline:Landroid/util/Spline;

.field public final mContext:Landroid/content/Context;

.field public mDdcAutoBrightnessAvailable:Z

.field public mDefaultHighBlockingZoneRefreshRate:I

.field public mDefaultLowBlockingZoneRefreshRate:I

.field public mDefaultPeakRefreshRate:I

.field public mDefaultRefreshRate:I

.field public mDefaultRefreshRateInHbmHdr:I

.field public mDefaultRefreshRateInHbmSunlight:I

.field public mDensityMapping:Lcom/android/server/display/DensityMapping;

.field public mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field public mHighAmbientBrightnessThresholds:[I

.field public mHighDisplayBrightnessThresholds:[I

.field public mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field public mInterpolationType:I

.field public mIsCoverDisplay:Z

.field public mIsFirstDisplay:Z

.field public mIsHighBrightnessModeEnabled:Z

.field public mIsSimpleMappingStrategy:Z

.field public mLoadedFrom:Ljava/lang/String;

.field public mLowAmbientBrightnessThresholds:[I

.field public mLowDisplayBrightnessThresholds:[I

.field public mName:Ljava/lang/String;

.field public mNits:[F

.field public mNitsToBacklightSpline:Landroid/util/Spline;

.field public final mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field public mQuirks:Ljava/util/List;

.field public mRawBacklight:[F

.field public mRawNits:[F

.field public final mRefreshRateLimitations:Ljava/util/List;

.field public final mRefreshRateThrottlingMap:Ljava/util/Map;

.field public final mRefreshRateZoneProfiles:Ljava/util/Map;

.field public mScreenBrighteningLevels:[F

.field public mScreenBrighteningLevelsIdle:[F

.field public mScreenBrighteningMinThreshold:F

.field public mScreenBrighteningMinThresholdIdle:F

.field public mScreenBrighteningPercentages:[F

.field public mScreenBrighteningPercentagesIdle:[F

.field public mScreenDarkeningLevels:[F

.field public mScreenDarkeningLevelsIdle:[F

.field public mScreenDarkeningMinThreshold:F

.field public mScreenDarkeningMinThresholdIdle:F

.field public mScreenDarkeningPercentages:[F

.field public mScreenDarkeningPercentagesIdle:[F

.field public final mScreenOffBrightnessSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field public mScreenOffBrightnessSensorValueToLux:[I

.field public mSdrToHdrSpline:Landroid/util/Spline;

.field public final mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/HashMap;

.field public mUseSurfaceControlBrightness:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 462
    sput-object v1, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[I

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 464
    sput-object v2, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    new-array v2, v1, [F

    const/high16 v4, 0x42c80000    # 100.0f

    aput v4, v2, v0

    .line 465
    sput-object v2, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    new-array v2, v1, [F

    const/high16 v5, 0x43480000    # 200.0f

    aput v5, v2, v0

    .line 466
    sput-object v2, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    new-array v2, v1, [F

    aput v3, v2, v0

    .line 467
    sput-object v2, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    new-array v2, v1, [F

    aput v4, v2, v0

    .line 468
    sput-object v2, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    new-array v1, v1, [F

    aput v5, v1, v0

    .line 469
    sput-object v1, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    .line 499
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    .line 502
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 555
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 556
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 557
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 558
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 559
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 560
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 561
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    const-wide/16 v0, 0x0

    .line 562
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 563
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    const/16 v0, 0x9c4

    .line 564
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    const/16 v0, 0x258

    .line 565
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    const/4 v0, 0x0

    .line 566
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    .line 567
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThresholdIdle:F

    .line 568
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    .line 569
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThresholdIdle:F

    .line 570
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    .line 571
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThresholdIdle:F

    .line 572
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    .line 573
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThresholdIdle:F

    .line 576
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningLevels:[F

    .line 577
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningPercentages:[F

    .line 578
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningLevels:[F

    .line 579
    sget-object v2, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningPercentages:[F

    .line 582
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningLevelsIdle:[F

    .line 583
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningPercentagesIdle:[F

    .line 584
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningLevelsIdle:[F

    .line 585
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningPercentagesIdle:[F

    .line 588
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningLevels:[F

    .line 589
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningPercentages:[F

    .line 590
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningLevels:[F

    .line 591
    sget-object v2, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningPercentages:[F

    .line 594
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningLevelsIdle:[F

    .line 595
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningPercentagesIdle:[F

    .line 596
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningLevelsIdle:[F

    .line 597
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningPercentagesIdle:[F

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    const/4 v1, 0x0

    .line 610
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 617
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    const-wide/16 v1, -0x1

    .line 623
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 627
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 631
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    const/4 v1, 0x1

    .line 633
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 640
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultPeakRefreshRate:I

    const/16 v1, 0x3c

    .line 650
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRate:I

    .line 655
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmHdr:I

    .line 660
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmSunlight:I

    .line 665
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 671
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 674
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 686
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[I

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    .line 687
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[I

    .line 700
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    .line 701
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[I

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/HashMap;

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 714
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3003
    :cond_0
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Thermal Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DisplayDeviceConfig"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    if-eqz p1, :cond_0

    .line 768
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    goto :goto_0

    .line 770
    :cond_0
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static create(Landroid/content/Context;ZZZ)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    if-eqz p2, :cond_0

    .line 743
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    goto :goto_0

    .line 745
    :cond_0
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    .line 748
    :goto_0
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    if-eqz p3, :cond_1

    .line 750
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertBacklightArrayForSurfaceControl()V

    :cond_1
    return-object p1
.end method

.method public static getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 1709
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 1710
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    return-object v0
.end method

.method public static getConfigFromGlobalXml(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 1717
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 1718
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->setFirstDisplay(Z)V

    .line 1719
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    return-object v0
.end method

.method public static getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 1725
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 1726
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    return-object v0
.end method

.method public static getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;
    .locals 2

    .line 838
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 839
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;F)[F
    .locals 4

    .line 3105
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3106
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3108
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3110
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getLuxLevels([I)[F
    .locals 3

    .line 3116
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 3117
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 3118
    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 7

    const-string v0, "DisplayDeviceConfig"

    .line 798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string v4, "displayconfig"

    const-string v5, "default.xml"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10e0074

    .line 806
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 807
    invoke-static {p0}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 809
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v6, "default_%s.xml"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 811
    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, v4, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 809
    invoke-static {v2, p0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return-object v1

    .line 824
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :try_start_1
    invoke-static {v2}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "Default DisplayDeviceConfig file is null"

    .line 827
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 824
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final adjustBacklightArrayBoundary()V
    .locals 5

    .line 2440
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    const-string v2, " "

    const-string v3, "DisplayDeviceConfig"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v0, v0, v1

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjust backlight min boundary : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    aput v4, v0, v1

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjust backlight max boundary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    aput p0, v0, v1

    :cond_1
    return-void
.end method

.method public final constrainNitsAndBacklightArrays()V
    .locals 11

    .line 2461
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    if-gtz v2, :cond_7

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_7

    cmpl-float v2, v3, v5

    if-gtz v2, :cond_7

    .line 2471
    array-length v2, v0

    new-array v2, v2, [F

    .line 2472
    array-length v0, v0

    new-array v0, v0, [F

    move v3, v1

    .line 2476
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v6, v5

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 2477
    aget v5, v5, v6

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    move v6, v1

    move v7, v6

    move v5, v3

    .line 2485
    :goto_2
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v9, v8

    if-ge v5, v9, :cond_6

    if-nez v6, :cond_6

    sub-int v7, v5, v3

    .line 2489
    aget v6, v8, v5

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v10, v6, v9

    if-gez v10, :cond_3

    array-length v8, v8

    sub-int/2addr v8, v4

    if-lt v5, v8, :cond_2

    goto :goto_3

    :cond_2
    move v8, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v8, v4

    :goto_4
    if-nez v7, :cond_4

    .line 2493
    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v6, v9}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    .line 2494
    invoke-virtual {p0, v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_5

    :cond_4
    if-eqz v8, :cond_5

    .line 2496
    invoke-static {v6, v9}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    add-int/lit8 v9, v5, -0x1

    .line 2497
    invoke-virtual {p0, v9, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_5

    .line 2500
    :cond_5
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v5

    .line 2502
    :goto_5
    aput v6, v0, v7

    .line 2503
    aput v9, v2, v7

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_2

    :cond_6
    add-int/2addr v7, v4

    .line 2505
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 2506
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2507
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    return-void

    .line 2464
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min or max values are invalid; raw min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; raw max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v1

    sub-int/2addr v3, v4

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight min="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final constraintInRangeIfNeeded([F)[F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2956
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->isAllInRange([FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "DisplayDeviceConfig"

    const-string v0, "Detected screen thresholdLevels on a deprecated brightness scale"

    .line 2961
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    array-length p0, p1

    new-array p0, p0, [F

    const/4 v0, 0x0

    .line 2963
    :goto_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 2964
    aget v1, p1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final convertBacklightArrayForSurfaceControl()V
    .locals 5

    const/4 v0, 0x1

    .line 3057
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mUseSurfaceControlBrightness:Z

    .line 3058
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3059
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 3060
    aget v1, v0, v2

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    div-float/2addr v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3064
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 3066
    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    aput v2, v3, v0

    new-array v0, v1, [F

    .line 3068
    fill-array-data v0, :array_0

    .line 3069
    invoke-static {v3, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 3071
    invoke-static {v0, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final convertInterpolationType(Ljava/lang/String;)I
    .locals 2

    .line 3025
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "linear"

    .line 3029
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3033
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Interpolation Type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayDeviceConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_1

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    :cond_1
    return-void
.end method

.method public final createBacklightConversionSplines()V
    .locals 8

    .line 2521
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    const/4 v0, 0x0

    move v1, v0

    .line 2522
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 2523
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    aget v5, v3, v0

    array-length v6, v3

    sub-int/2addr v6, v4

    aget v4, v3, v6

    iget v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    aget v3, v3, v1

    invoke-static {v5, v4, v6, v7, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2529
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_1

    .line 2530
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_1

    .line 2531
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2532
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_2

    .line 2533
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_2

    .line 2534
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2535
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_3

    .line 2536
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_3

    .line 2537
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 2538
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_4

    .line 2539
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_4

    .line 2540
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-void
.end method

.method public getAmbientHorizonLong()I
    .locals 0

    .line 1029
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    return p0
.end method

.method public getAmbientHorizonShort()I
    .locals 0

    .line 1033
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    return p0
.end method

.method public getAmbientLightSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .locals 0

    .line 1357
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsLux()[F
    .locals 0

    .line 1445
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsLux:[F

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsNits()[F
    .locals 0

    .line 1452
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsNits:[F

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLightDebounce()J
    .locals 2

    .line 1438
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounce()J
    .locals 2

    .line 1431
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-wide v0
.end method

.method public getBacklightFromBrightness(F)F
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBrightness()[F
    .locals 0

    .line 992
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object p0
.end method

.method public getBrightnessDefault()F
    .locals 0

    .line 1001
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return p0
.end method

.method public final getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[F)Landroid/util/Pair;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2867
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2881
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getBrightnessThresholdPoints()Lcom/android/server/display/config/ThresholdPoints;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2882
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getBrightnessThresholdPoints()Lcom/android/server/display/config/ThresholdPoints;

    move-result-object v2

    .line 2883
    invoke-virtual {v2}, Lcom/android/server/display/config/ThresholdPoints;->getBrightnessThresholdPoint()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2887
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getBrightnessThresholdPoints()Lcom/android/server/display/config/ThresholdPoints;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/config/ThresholdPoints;->getBrightnessThresholdPoint()Ljava/util/List;

    move-result-object p0

    .line 2888
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 2890
    new-array p2, p1, [F

    .line 2891
    new-array p1, p1, [F

    .line 2894
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/display/config/ThresholdPoint;

    .line 2895
    invoke-virtual {p3}, Lcom/android/server/display/config/ThresholdPoint;->getThreshold()Ljava/math/BigDecimal;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigDecimal;->floatValue()F

    move-result p4

    aput p4, p2, v0

    .line 2896
    invoke-virtual {p3}, Lcom/android/server/display/config/ThresholdPoint;->getPercentage()Ljava/math/BigDecimal;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigDecimal;->floatValue()F

    move-result p3

    aput p3, p1, v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 2899
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2906
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2909
    array-length p2, p1

    if-nez p2, :cond_2

    goto :goto_1

    .line 2912
    :cond_2
    array-length p2, p1

    add-int/2addr p2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v1

    .line 2917
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2921
    array-length v2, p3

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v0

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v1

    :goto_4
    if-eqz v2, :cond_6

    if-ne p2, v1, :cond_6

    .line 2923
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p4, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6
    if-nez v2, :cond_a

    .line 2925
    array-length p4, p3

    if-ne p4, p2, :cond_a

    .line 2931
    new-array p4, p2, [F

    :goto_5
    if-ge v1, p2, :cond_7

    add-int/lit8 p5, v1, -0x1

    .line 2934
    aget p5, p1, p5

    int-to-float p5, p5

    aput p5, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    if-eqz p6, :cond_8

    .line 2938
    invoke-virtual {p0, p4}, Lcom/android/server/display/DisplayDeviceConfig;->constraintInRangeIfNeeded([F)[F

    move-result-object p4

    .line 2942
    :cond_8
    new-array p0, p2, [F

    .line 2943
    :goto_6
    array-length p1, p3

    if-ge v0, p1, :cond_9

    .line 2944
    aget p1, p3, v0

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2945
    :cond_9
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2926
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Brightness threshold arrays do not align in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBrightnessRampDecreaseMaxMillis()J
    .locals 2

    .line 1021
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampFastDecrease()F
    .locals 0

    .line 1005
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return p0
.end method

.method public getBrightnessRampFastIncrease()F
    .locals 0

    .line 1009
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return p0
.end method

.method public getBrightnessRampIncreaseMaxMillis()J
    .locals 2

    .line 1025
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .locals 0

    .line 1013
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return p0
.end method

.method public getBrightnessRampSlowIncrease()F
    .locals 0

    .line 1017
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return p0
.end method

.method public getDefaultHighBlockingZoneRefreshRate()I
    .locals 0

    .line 1488
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDefaultLowBlockingZoneRefreshRate()I
    .locals 0

    .line 1495
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDefaultPeakRefreshRate()I
    .locals 0

    .line 1459
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultPeakRefreshRate:I

    return p0
.end method

.method public getDefaultRefreshRate()I
    .locals 0

    .line 1466
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRate:I

    return p0
.end method

.method public getDefaultRefreshRateInHbmHdr()I
    .locals 0

    .line 1473
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmHdr:I

    return p0
.end method

.method public getDefaultRefreshRateInHbmSunlight()I
    .locals 0

    .line 1481
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmSunlight:I

    return p0
.end method

.method public getDensityMapping()Lcom/android/server/display/DensityMapping;
    .locals 0

    .line 1405
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-object p0
.end method

.method public getHdrBrightnessFromSdr(FF)F
    .locals 1

    .line 946
    iget-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p2, :cond_0

    return v0

    .line 951
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result p1

    .line 952
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result p1

    cmpl-float p2, p1, v0

    if-nez p2, :cond_1

    return v0

    .line 961
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    invoke-virtual {p2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 964
    iget-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    if-nez p2, :cond_2

    return v0

    .line 968
    :cond_2
    invoke-virtual {p2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 969
    iget p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 970
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getHighAmbientBrightnessThresholds()[I
    .locals 0

    .line 1548
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .locals 1

    .line 1391
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    .line 1396
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->copyTo(Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[I
    .locals 0

    .line 1539
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    return-object p0
.end method

.method public getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .locals 0

    .line 1565
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-object p0
.end method

.method public getLowAmbientBrightnessThresholds()[I
    .locals 0

    .line 1530
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[I
    .locals 0

    .line 1521
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNits()[F
    .locals 0

    .line 886
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object p0
.end method

.method public getNitsFromBacklight(F)F
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_1

    .line 916
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    if-nez p0, :cond_0

    const-string p0, "DisplayDeviceConfig"

    const-string/jumbo p1, "requesting nits when no mapping exists."

    .line 917
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 921
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 922
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .locals 0

    .line 1365
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object p0
.end method

.method public getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;
    .locals 1

    .line 1503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1506
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$RefreshRateRange;

    return-object p0
.end method

.method public getRefreshRangeProfiles()Ljava/util/Map;
    .locals 0

    .line 1512
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    return-object p0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .locals 0

    .line 1401
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object p0
.end method

.method public getScreenOffBrightnessSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .locals 0

    .line 1361
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object p0
.end method

.method public getScreenOffBrightnessSensorValueToLux()[I
    .locals 0

    .line 1556
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    return-object p0
.end method

.method public getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/HashMap;
    .locals 0

    .line 1413
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/HashMap;

    return-object p0
.end method

.method public getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "default"

    .line 1424
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .locals 0

    .line 1384
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSdrToHdrRatioSpline()Z
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initFromDefaultValues()V
    .locals 2

    const-string v0, "Static values"

    .line 1792
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1793
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1794
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1795
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 1796
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1797
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1798
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1799
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    const-wide/16 v0, 0x0

    .line 1800
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 1801
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    .line 1804
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    return-void
.end method

.method public initFromFile(Ljava/io/File;)Z
    .locals 4

    .line 1732
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1737
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_1

    .line 1738
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display configuration is not a file: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1742
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    :try_start_1
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1745
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadName(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1746
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1747
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1749
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1750
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1751
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1752
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1753
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1754
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1755
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadScreenOffBrightnessSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1756
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1757
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1758
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1759
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1760
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1761
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1762
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V

    goto :goto_0

    :cond_2
    const-string v1, "DisplayDeviceConfig file is null"

    .line 1764
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1766
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 1742
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 1767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1770
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public final initFromGlobalXml()V
    .locals 1

    .line 1776
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholdsFromXml()V

    .line 1782
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    .line 1783
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigsFromConfigXml()V

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    const/4 v0, 0x0

    .line 1785
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    const-string v0, "<config.xml>"

    .line 1786
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 1787
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeDataFromConfigXml()V

    return-void
.end method

.method public final isAllInRange([FFF)Z
    .locals 4

    .line 2971
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget v2, p1, v1

    cmpg-float v3, v2, p2

    if-ltz v3, :cond_1

    cmpl-float v2, v2, p3

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isAutoBrightnessAvailable()Z
    .locals 0

    .line 1369
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return p0
.end method

.method public isFirstDisplay()Z
    .locals 0

    .line 1374
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    return p0
.end method

.method public final loadAmbientBrightnessThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 2752
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2754
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v0

    .line 2756
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object p1

    move-object v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    move-object v7, p1

    :goto_0
    const v2, 0x1070088

    const v3, 0x1070086

    .line 2760
    sget-object v6, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    move-object v0, p0

    move-object v1, v7

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[F)Landroid/util/Pair;

    move-result-object v0

    .line 2765
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningLevels:[F

    .line 2766
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningPercentages:[F

    const v3, 0x1070088

    const v4, 0x1070087

    .line 2768
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[F)Landroid/util/Pair;

    move-result-object v0

    .line 2773
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningLevels:[F

    .line 2774
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningPercentages:[F

    if-eqz v7, :cond_1

    .line 2777
    invoke-virtual {v7}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2779
    invoke-virtual {v7}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    :cond_1
    if-eqz p1, :cond_2

    .line 2782
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2783
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    :cond_2
    return-void
.end method

.method public final loadAmbientBrightnessThresholdsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 2829
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2831
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v0

    .line 2833
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object p1

    move-object v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    move-object v7, p1

    :goto_0
    const v2, 0x1070088

    const v3, 0x1070086

    .line 2836
    sget-object v6, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    move-object v0, p0

    move-object v1, v7

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[F)Landroid/util/Pair;

    move-result-object v0

    .line 2841
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningLevelsIdle:[F

    .line 2842
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningPercentagesIdle:[F

    const v3, 0x1070088

    const v4, 0x1070087

    .line 2844
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[F)Landroid/util/Pair;

    move-result-object v0

    .line 2849
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningLevelsIdle:[F

    .line 2850
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningPercentagesIdle:[F

    if-eqz v7, :cond_1

    .line 2853
    invoke-virtual {v7}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2855
    invoke-virtual {v7}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThresholdIdle:F

    :cond_1
    if-eqz p1, :cond_2

    .line 2858
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2860
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThresholdIdle:F

    :cond_2
    return-void
.end method

.method public final loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1

    .line 3038
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonLong()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3040
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 3042
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonShort()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3044
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    :cond_1
    return-void
.end method

.method public final loadAmbientLightSensorFromConfigXml()V
    .locals 2

    .line 2645
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 2646
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040325

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    return-void
.end method

.method public final loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    .line 2655
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLightSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 2658
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 2659
    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2661
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    .line 2662
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    goto :goto_0

    .line 2665
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final loadAutoBrightnessAvailableFromConfigXml()V
    .locals 2

    .line 2380
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    goto :goto_0

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    :goto_0
    return-void
.end method

.method public final loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2325
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2330
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    goto :goto_1

    .line 2326
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e002f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    :goto_1
    return-void
.end method

.method public final loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    .line 2312
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;

    move-result-object p1

    .line 2313
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2314
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2315
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDisplayBrightnessMapping(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2316
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    return-void
.end method

.method public final loadAutoBrightnessConfigsFromConfigXml()V
    .locals 1

    const/4 v0, 0x0

    .line 2651
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDisplayBrightnessMapping(Lcom/android/server/display/config/AutoBrightness;)V

    return-void
.end method

.method public final loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2340
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2345
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    goto :goto_1

    .line 2341
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0030

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    :goto_1
    return-void
.end method

.method public final loadAutoBrightnessDisplayBrightnessMapping(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 2355
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDisplayBrightnessMapping()Lcom/android/server/display/config/DisplayBrightnessMapping;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2364
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDisplayBrightnessMapping()Lcom/android/server/display/config/DisplayBrightnessMapping;

    move-result-object v0

    .line 2365
    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayBrightnessMapping;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2366
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsNits:[F

    add-int/lit8 v1, v0, 0x1

    .line 2368
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsLux:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2370
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsNits:[F

    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDisplayBrightnessMapping()Lcom/android/server/display/config/DisplayBrightnessMapping;

    move-result-object v3

    .line 2371
    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessMapping;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 2372
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsLux:[F

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDisplayBrightnessMapping()Lcom/android/server/display/config/DisplayBrightnessMapping;

    move-result-object v4

    .line 2373
    invoke-virtual {v4}, Lcom/android/server/display/config/DisplayBrightnessMapping;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v1}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    aput v1, v2, v3

    move v1, v3

    goto :goto_0

    .line 2356
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107008d

    .line 2357
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 2356
    invoke-static {p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsNits:[F

    .line 2360
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070093

    .line 2361
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 2360
    invoke-static {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getLuxLevels([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsLux:[F

    :cond_2
    return-void
.end method

.method public final loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    .line 2702
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDisplayBrightnessThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2703
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientBrightnessThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2704
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDisplayBrightnessThresholdsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2705
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientBrightnessThresholdsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessChangeThresholdsFromXml()V
    .locals 1

    const/4 v0, 0x0

    .line 2698
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessConstraintsFromConfigXml()V
    .locals 4

    .line 1873
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 1878
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    if-nez v2, :cond_0

    const v2, 0x10e0108

    goto :goto_0

    :cond_0
    const v2, 0x10e0053

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0xff

    .line 1877
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1897
    :cond_1
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 1898
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_2

    .line 1889
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1890
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1889
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 1892
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    :goto_2
    return-void
.end method

.method public final loadBrightnessDefaultFromConfigXml()V
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1864
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1863
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_0

    .line 1867
    :cond_0
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    :goto_0
    return-void
.end method

.method public final loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1848
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1850
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_0

    .line 1852
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8

    .line 1903
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1906
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    return-void

    .line 1911
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v0

    .line 1912
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1914
    new-array v2, v1, [F

    .line 1915
    new-array v1, v1, [F

    .line 1917
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getInterpolation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertInterpolationType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 1919
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/Point;

    .line 1920
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v2, v0

    .line 1921
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v0

    if-lez v0, :cond_2

    .line 1923
    aget v4, v2, v0

    add-int/lit8 v5, v0, -0x1

    aget v6, v2, v5

    cmpg-float v4, v4, v6

    const-string v6, " < "

    const-string v7, "DisplayDeviceConfig"

    if-gez v4, :cond_1

    .line 1924
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1929
    :cond_1
    aget v4, v1, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 1930
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1938
    :cond_3
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1939
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1940
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void
.end method

.method public final loadBrightnessMapFromConfigXml()V
    .locals 7

    .line 2392
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107013a

    .line 2393
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x1070139

    .line 2395
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2397
    array-length v2, v0

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    .line 2399
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 2400
    aget v6, v0, v5

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 2406
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    .line 2412
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backlight min="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " backlight max="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2417
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2418
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->adjustBacklightArrayBoundary()V

    .line 2419
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void

    .line 2407
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    return-void
.end method

.method public final loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    .line 2603
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2604
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2605
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    .line 2606
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2610
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2611
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2612
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 2613
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display brightness ramp values ignored because not all values are present in display device config"

    .line 2617
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 2623
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2625
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 2627
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2629
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    :cond_4
    return-void
.end method

.method public final loadBrightnessRampsFromConfigXml()V
    .locals 2

    .line 2634
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2635
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2634
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2636
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2637
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2636
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 2640
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2641
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return-void
.end method

.method public final loadDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2144
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2149
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRate:I

    goto :goto_1

    .line 2145
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRate:I

    :goto_1
    return-void
.end method

.method public final loadDefaultRefreshRateInHbm(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2170
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2171
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;

    move-result-object v0

    .line 2172
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmHdr:I

    goto :goto_0

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmHdr:I

    :goto_0
    if-eqz p1, :cond_1

    .line 2179
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2181
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmSunlight:I

    goto :goto_1

    .line 2183
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0071

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmSunlight:I

    :goto_1
    return-void
.end method

.method public final loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 6

    .line 1823
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1827
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/DensityMapping;->getDensity()Ljava/util/List;

    move-result-object p1

    .line 1830
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/display/DensityMapping$Entry;

    const/4 v1, 0x0

    .line 1831
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1832
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/Density;

    .line 1833
    new-instance v3, Lcom/android/server/display/DensityMapping$Entry;

    .line 1834
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 1835
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 1836
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getDensity()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    :cond_1
    invoke-static {v0}, Lcom/android/server/display/DensityMapping;->createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-void
.end method

.method public final loadDisplayBrightnessThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 2711
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2713
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v0

    .line 2715
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object p1

    move-object v8, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    move-object v8, p1

    :goto_0
    const v2, 0x107013d

    const v3, 0x1070138

    .line 2720
    sget-object v7, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    move-result-object v0

    .line 2727
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningLevels:[F

    .line 2728
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningPercentages:[F

    const v3, 0x107013d

    const v4, 0x107013c

    .line 2730
    sget-object v6, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    move-result-object v0

    .line 2736
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningLevels:[F

    .line 2737
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningPercentages:[F

    if-eqz v8, :cond_1

    .line 2740
    invoke-virtual {v8}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2741
    invoke-virtual {v8}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    :cond_1
    if-eqz p1, :cond_2

    .line 2743
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2744
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    :cond_2
    return-void
.end method

.method public final loadDisplayBrightnessThresholdsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 2790
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2792
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v0

    .line 2794
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object p1

    move-object v8, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    move-object v8, p1

    :goto_0
    const v2, 0x107013d

    const v3, 0x1070138

    .line 2797
    sget-object v7, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    sget-object v5, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    move-result-object v0

    .line 2803
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningLevelsIdle:[F

    .line 2804
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningPercentagesIdle:[F

    const v3, 0x107013d

    const v4, 0x107013c

    .line 2806
    sget-object v6, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    move-result-object v0

    .line 2812
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningLevelsIdle:[F

    .line 2813
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningPercentagesIdle:[F

    if-eqz v8, :cond_1

    .line 2816
    invoke-virtual {v8}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2818
    invoke-virtual {v8}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThresholdIdle:F

    :cond_1
    if-eqz p1, :cond_2

    .line 2820
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2822
    invoke-virtual {p1}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThresholdIdle:F

    :cond_2
    return-void
.end method

.method public final loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    const/4 v0, 0x1

    .line 3127
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz p1, :cond_0

    .line 3129
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 3132
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x111003c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return-void
.end method

.method public final loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 6

    .line 2551
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2553
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 2554
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 2555
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumLux_all()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 2556
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2557
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_4

    .line 2562
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2563
    invoke-virtual {v2, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 2564
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTiming_all()Lcom/android/server/display/config/HbmTiming;

    move-result-object v0

    .line 2565
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeWindowSecs_all()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 2566
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeMaxSecs_all()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 2567
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeMinSecs_all()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 2568
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getAllowInLowPowerMode_all()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 2569
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    .line 2572
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    .line 2573
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(IFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2576
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    .line 2578
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 2579
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget p1, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 2581
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid minimum HDR percent of screen: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 2582
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DisplayDeviceConfig"

    .line 2581
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    goto :goto_0

    .line 2586
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 2591
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadSdrHdrMapFromConfigXml()Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    goto :goto_1

    .line 2558
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HBM transition point invalid. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is not less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2595
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeDataFromConfigXml()V

    :goto_1
    return-void
.end method

.method public final loadHighBrightnessModeDataFromConfigXml()V
    .locals 12

    .line 3079
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    if-eqz v0, :cond_1

    .line 3081
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v2, v0

    .line 3084
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>(FFJJJZF)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 3093
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadSdrHdrMapFromConfigXml()Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    :cond_1
    return-void
.end method

.method public final loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2211
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e009d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    goto :goto_0

    .line 2215
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    :goto_0
    return-void
.end method

.method public final loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 4

    if-nez p1, :cond_1

    .line 2279
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700f9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    .line 2281
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700f8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[I

    if-eqz p1, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    if-eqz v0, :cond_0

    array-length p1, p1

    array-length v0, v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 2286
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display high brightness threshold array and ambient brightness threshold array have different length: mHighDisplayBrightnessThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    .line 2289
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighAmbientBrightnessThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[I

    .line 2291
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2295
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2296
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2297
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    .line 2298
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2303
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    .line 2304
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 2305
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[I

    .line 2306
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 0

    .line 2200
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2201
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2226
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    goto :goto_0

    .line 2230
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    :goto_0
    return-void
.end method

.method public final loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 4

    if-nez p1, :cond_1

    .line 2240
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    .line 2242
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[I

    .line 2244
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 2247
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display low brightness threshold array and ambient brightness threshold array have different length: mLowDisplayBrightnessThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    .line 2250
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowAmbientBrightnessThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[I

    .line 2252
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2256
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2257
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2258
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    .line 2259
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2264
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    .line 2265
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 2266
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[I

    .line 2267
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 0

    .line 2192
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2193
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadName(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    .line 1819
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-void
.end method

.method public final loadPeakDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2134
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultPeakRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2139
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultPeakRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultPeakRefreshRate:I

    goto :goto_1

    .line 2135
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultPeakRefreshRate:I

    :goto_1
    return-void
.end method

.method public final loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    .line 2683
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 2686
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 2687
    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2689
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    .line 2690
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    goto :goto_0

    .line 2693
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1

    .line 2544
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2546
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2118
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 2121
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 2124
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v0

    .line 2125
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadPeakDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V

    .line 2126
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V

    .line 2127
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultRefreshRateInHbm(Lcom/android/server/display/config/RefreshRateConfigs;)V

    .line 2128
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2129
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2130
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V

    return-void
.end method

.method public final loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2159
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateZoneProfiles;->getRefreshRateZoneProfile()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/RefreshRateZone;

    .line 2160
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 2161
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 2162
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2164
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2161
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final loadScreenOffBrightnessSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    .line 2675
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 2678
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 3

    .line 3138
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3143
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/IntegerArray;->getItem()Ljava/util/List;

    move-result-object p1

    .line 3144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    const/4 v0, 0x0

    .line 3145
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3146
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final loadSdrHdrMapFromConfigXml()Landroid/util/Spline;
    .locals 8

    .line 1979
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;F)[F

    move-result-object v0

    .line 1981
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x107013e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;F)[F

    move-result-object p0

    .line 1984
    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "DisplayDeviceConfig"

    if-nez v1, :cond_0

    array-length v1, p0

    if-nez v1, :cond_0

    const-string p0, "loadSdrHdrMapFromConfigXml: not support"

    .line 1985
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1988
    :cond_0
    array-length v1, v0

    array-length v4, p0

    const-string v5, ", "

    if-eq v1, v4, :cond_1

    .line 1989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSdrHdrMapFromConfigXml: wrong length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 1994
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_5

    if-lez v1, :cond_4

    .line 1996
    aget v4, v0, v1

    add-int/lit8 v6, v1, -0x1

    aget v7, v0, v6

    cmpg-float v7, v4, v7

    if-gez v7, :cond_2

    .line 1997
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSdrHdrMapFromConfigXml: sdrHdrRatioMap must be non-decreasing, ignoring rest  of configuration. sdr nits: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_3

    .line 2004
    aget v4, p0, v1

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    .line 2005
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSdrHdrMapFromConfigXml: invalid value: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2013
    :cond_5
    invoke-static {v0, p0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    return-object p0
.end method

.method public final loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 6

    .line 2028
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getBrightnessThrottlingMap()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2029
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2034
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/BrightnessThrottlingMap;

    .line 2035
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getBrightnessThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 2037
    new-instance v2, Ljava/util/ArrayList;

    .line 2038
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2041
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 2042
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    .line 2043
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    .line 2048
    :cond_2
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 2049
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2048
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_1

    .line 2053
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "default"

    goto :goto_3

    .line 2054
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2055
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2059
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/HashMap;

    .line 2060
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    move-result-object v2

    .line 2059
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2056
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness throttling data with ID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void

    :cond_7
    :goto_4
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No brightness throttling map found"

    .line 2030
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 8

    .line 2066
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getRefreshRateThrottlingMap()Ljava/util/List;

    move-result-object p1

    const-string v0, "DisplayDeviceConfig"

    if-eqz p1, :cond_a

    .line 2067
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2072
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    .line 2073
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getRefreshRateThrottlingPoint()Ljava/util/List;

    move-result-object v2

    .line 2074
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "default"

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_8

    .line 2076
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 2081
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: map already exists, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2086
    :cond_3
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2087
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 2088
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    .line 2089
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2090
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefreshRateThrottling: Invalid thermalStatus="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    invoke-virtual {v5}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mapId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2090
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2095
    :cond_4
    invoke-static {v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v6

    .line 2096
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2097
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefreshRateThrottling: thermalStatus="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is already in the map, mapId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2102
    :cond_5
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2103
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->floatValue()F

    move-result v7

    .line 2104
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-direct {v5, v7, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2102
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 2107
    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 2108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: no valid throttling points found for map, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2112
    :cond_7
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2078
    :cond_8
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: points not found for mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    return-void

    :cond_a
    :goto_4
    const-string p0, "RefreshRateThrottling: map not found"

    .line 2068
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    .line 2018
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No thermal throttling config found"

    .line 2020
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2023
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 2024
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V

    return-void
.end method

.method public final loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    .line 3151
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getUsiVersion()Lcom/android/server/display/config/UsiVersion;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3153
    new-instance v0, Landroid/hardware/input/HostUsiVersion;

    .line 3154
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMajorVersion()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 3155
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMinorVersion()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3156
    :goto_0
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-void
.end method

.method public final rawBacklightToNits(IF)F
    .locals 3

    .line 2511
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget p1, p0, p1

    aget p0, p0, v2

    invoke-static {v1, v0, p1, p0, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public final setFirstDisplay(Z)V
    .locals 1

    .line 3050
    iput-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    .line 3051
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    return-void
.end method

.method public final setProxSensorUnspecified()V
    .locals 1

    .line 2670
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 2671
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    return-void
.end method

.method public final setSimpleMappingStrategyValues()V
    .locals 3

    const/4 v0, 0x0

    .line 2426
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2427
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2428
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 2430
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2432
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2435
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    return-void
.end method

.method public final thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2984
    :cond_0
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHbmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdrToHdrSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalBrightnessThrottlingDataMapByThrottlingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mBrightnessRampFastDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n, mAmbientHorizonLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientHorizonShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n, mScreenDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDarkeningMinThresholdIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThresholdIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrighteningMinThresholdIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThresholdIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxDarkeningMinThresholdIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThresholdIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLuxBrighteningMinThresholdIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThresholdIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, mScreenBrighteningLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningLevels:[F

    .line 1618
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrighteningPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningPercentages:[F

    .line 1620
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDarkeningLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningLevels:[F

    .line 1622
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDarkeningPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningPercentages:[F

    .line 1624
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientBrighteningLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningLevels:[F

    .line 1626
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientBrighteningPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningPercentages:[F

    .line 1628
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientDarkeningLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningLevels:[F

    .line 1630
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientDarkeningPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningPercentages:[F

    .line 1632
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mAmbientBrighteningLevelsIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningLevelsIdle:[F

    .line 1635
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientBrighteningPercentagesIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrighteningPercentagesIdle:[F

    .line 1637
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientDarkeningLevelsIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningLevelsIdle:[F

    .line 1639
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientDarkeningPercentagesIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientDarkeningPercentagesIdle:[F

    .line 1641
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrighteningLevelsIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningLevelsIdle:[F

    .line 1643
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrighteningPercentagesIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningPercentagesIdle:[F

    .line 1645
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDarkeningLevelsIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningLevelsIdle:[F

    .line 1647
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDarkeningPercentagesIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningPercentagesIdle:[F

    .line 1649
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mAmbientLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOffBrightnessSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateLimitations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 1655
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDensityMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessBrighteningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessDarkeningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessLevelsLux= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsLux:[F

    .line 1661
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessLevelsNits= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessLevelsNits:[F

    .line 1662
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDdcAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n, mDefaultLowBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultHighBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultPeakRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultPeakRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateZoneProfiles= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultRefreshRateInHbmHdr= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmHdr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultRefreshRateInHbmSunlight= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateThrottlingMap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mLowDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[I

    .line 1676
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[I

    .line 1678
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[I

    .line 1680
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[I

    .line 1682
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mScreenOffBrightnessSensorValueToLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 1684
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mUsiVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUseSurfaceControlBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mUseSurfaceControlBrightness:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
