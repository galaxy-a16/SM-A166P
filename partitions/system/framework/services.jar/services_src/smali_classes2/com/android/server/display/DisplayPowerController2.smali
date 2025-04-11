.class public final Lcom/android/server/display/DisplayPowerController2;
.super Ljava/lang/Object;
.source "DisplayPowerController2.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/DisplayPowerControllerInterface;


# static fields
.field public static final BRIGHTNESS_RANGE_BOUNDARIES:[F

.field public static final BRIGHTNESS_RANGE_INDEX:[I

.field public static final COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

.field public static final MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

.field public static final RATE_FROM_DOZE_TO_ON:F

.field public static SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z = true

.field public static sLastScreenBrightnessSettingChangedTime:J


# instance fields
.field public mActualDisplayState:I

.field public final mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field public mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

.field public mAppliedDimming:Z

.field public mAppliedForceDimming:Z

.field public mAppliedLowPower:Z

.field public mAppliedThrottling:Z

.field public mAutoBrightnessEnabled:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

.field public mAwakenFromDozingInAutoBrightness:Z

.field public mBatteryLevelCritical:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public mBootCompleted:Z

.field public mBrightnessAnimationConsumerInvoked:Z

.field public mBrightnessAnimationEndRunnable:Ljava/lang/Runnable;

.field public final mBrightnessBucketsInDozeConfig:Z

.field public mBrightnessChangedByUser:Z

.field public mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mBrightnessRampDecreaseMaxTimeMillis:J

.field public mBrightnessRampIncreaseMaxTimeMillis:J

.field public mBrightnessRampRateFastDecrease:F

.field public mBrightnessRampRateFastIncrease:F

.field public mBrightnessRampRateHdrDecrease:F

.field public mBrightnessRampRateHdrIncrease:F

.field public mBrightnessRampRateSlowDecrease:F

.field public mBrightnessRampRateSlowIncrease:F

.field public final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

.field public final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

.field public final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mCleanListener:Ljava/lang/Runnable;

.field public final mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

.field public final mColorFadeEnabled:Z

.field public final mColorFadeFadesConfig:Z

.field public mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field public mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field public final mContext:Landroid/content/Context;

.field public mCoverDisplayDemoEnabled:Z

.field public final mDisplayBlanksAfterDozeConfig:Z

.field public final mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

.field public mDisplayBrightnessFollowers:Landroid/util/SparseArray;

.field public mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDisplayReadyLocked:Z

.field public final mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

.field public mDisplayStatsId:I

.field public mDozing:Z

.field public mDualScreenPolicy:I

.field public mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;

.field public final mEarlyWakeupEnabled:Z

.field public mExtraDimIsActive:Z

.field public mExtraDimStrength:I

.field public mFollowerRampSpeed:F

.field public mFollowerRampSpeedAtHbm:F

.field public mForceSlowChange:Z

.field public final mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

.field public final mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field public final mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

.field public mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mInitialAutoBrightness:F

.field public mInitialAutoBrightnessUpdated:Z

.field public final mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

.field public mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mIsCoverDisplay:Z

.field public mIsDisplayInternal:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public mIsOutdoorModeEnabled:Z

.field public mIsRbcActive:Z

.field public mIsSupportedAodMode:Z

.field public mLastAmbientLux:F

.field public mLastAutomaticScreenBrightness:F

.field public mLastBatteryLevelCriticalTime:J

.field public mLastBrightnessConfigurationTime:J

.field public final mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mLastCoverClosedState:Z

.field public mLastNotifiedBrightness:F

.field public mLastOriginalTarget:F

.field public mLastScreenBrightnessSettingBeforeForceDim:F

.field public mLastStatsBrightness:F

.field public mLcdFlashModeEnabled:Z

.field public mLeadDisplayId:I

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLock:Ljava/lang/Object;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mMoreFastRampRate:F

.field public mNeedPrepareColorFade:Z

.field public mNitsRange:[F

.field public mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public final mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

.field public mPassRampAnimation:Z

.field public mPendingEarlyWakeUpRequestLocked:Z

.field public mPendingForceSlowChangeLocked:Z

.field public mPendingForceUpdateAb:Z

.field public mPendingRequestChangedLocked:Z

.field public mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPendingScreenOff:Z

.field public mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

.field public mPendingScreenOnByAodReady:Z

.field public mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

.field public mPendingTransitionOffInDualCase:Z

.field public mPendingUpdatePowerStateLocked:Z

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPowerState:Lcom/android/server/display/DisplayPowerState;

.field public mPrevScreenBrightness:F

.field public final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field public final mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mReportedScreenStateToPolicy:I

.field public mResetBrightnessConfiguration:Z

.field public final mScreenBrightnessDimConfig:F

.field public final mScreenBrightnessDozeConfig:F

.field public final mScreenBrightnessMinimumDimAmount:F

.field public mScreenBrightnessModeSettingName:Ljava/lang/String;

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

.field public final mScreenExtendedBrightnessRangeMaximum:F

.field public mScreenOffBlockStartRealTime:J

.field public mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

.field public mScreenOnBlockStartRealTime:J

.field public mSeamlessAodReady:Z

.field public mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSettingsObserver:Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

.field public mShutdownReceiver:Lcom/android/server/display/DisplayPowerController2$ShutdownReceiver;

.field public mSkipRampState:I

.field public final mSkipScreenOnBrightnessRamp:Z

.field public mStopped:Z

.field public final mTag:Ljava/lang/String;

.field public final mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mUniqueDisplayId:Ljava/lang/String;

.field public mUseSoftwareAutoBrightnessConfig:Z

.field public mWaitingAutoBrightnessFromDoze:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;

.field public final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$96VSA_At0xbGf8fSQHiNiQZnntU(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    return-void
.end method

.method public static synthetic $r8$lambda$BM8NK3iEWSteJY-B1PPF-ndTd6A(Lcom/android/server/display/DisplayPowerController2;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->lambda$dump$10(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NtBm8U8uWho35T5aNt7Hxbykgpg(Lcom/android/server/display/DisplayPowerControllerInterface;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->lambda$clearDisplayBrightnessFollowersLocked$9(Lcom/android/server/display/DisplayPowerControllerInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzP9BjgcQe1k-QM2HOpgA_yNk1k(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController2;->lambda$createHbmControllerLocked$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$TRzyxiFItX2mdC99GInwYNekAAk(Lcom/android/server/display/DisplayPowerControllerInterface;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController2;->lambda$removeDisplayBrightnessFollower$8(Lcom/android/server/display/DisplayPowerControllerInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VlMSGwgseE0KPw-UdjPgo4v41_o(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController2;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$X2jVANeXNFUrYhI1XmF_9U9elww(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController2;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y1VKs95D3XlrIzJuAq5V3aLVTFM(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController2;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZnSsox8ltWAEHJO7WgSC_o91CQc(Lcom/android/server/display/DisplayPowerController2;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lcom/android/server/display/DisplayPowerController2;->lambda$onDisplayChanged$3(Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dKOb95wxQ_LqkR1K3qHJ09rpB6g(Lcom/android/server/display/DisplayPowerController2;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->lambda$handleBrightnessModeChange$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$f2lf0RumOEs8xzcmztJScEoHxi8(Lcom/android/server/display/DisplayPowerController2;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->lambda$initialize$4(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$mOl0VHUL1kDpJ4f6Rs5RoLWMsKs(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController2;->lambda$createBrightnessThrottlerLocked$6()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppliedForceDimming(Lcom/android/server/display/DisplayPowerController2;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/AutomaticBrightnessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlanker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayBlanker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessAnimationConsumerInvoked(Lcom/android/server/display/DisplayPowerController2;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessAnimationConsumerInvoked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessAnimationEndRunnable(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/BrightnessTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/brightness/DisplayBrightnessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceConfig(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerController2;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPowerProximityStateController(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerProximityStateController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInteractiveModeBrightnessMapper(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastScreenBrightnessSettingBeforeForceDim(Lcom/android/server/display/DisplayPowerController2;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayPowerController2;->mLastScreenBrightnessSettingBeforeForceDim:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBrightnessAnimationConsumer(Lcom/android/server/display/DisplayPowerController2;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/DisplayPowerState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightnessModeSettingName(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightnessRampAnimator(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/RampAnimator$DualRampAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController2;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController2;->mStopped:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController2;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakelockController(Lcom/android/server/display/DisplayPowerController2;)Lcom/android/server/display/WakelockController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppliedForceDimming(Lcom/android/server/display/DisplayPowerController2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/display/DisplayPowerController2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBrightnessAnimationConsumerInvoked(Lcom/android/server/display/DisplayPowerController2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessAnimationConsumerInvoked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForceSlowChange(Lcom/android/server/display/DisplayPowerController2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmResetBrightnessConfiguration(Lcom/android/server/display/DisplayPowerController2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mResetBrightnessConfiguration:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSeamlessAodReady(Lcom/android/server/display/DisplayPowerController2;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mSeamlessAodReady:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->cleanupHandlerThreadAfterStop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBrightnessModeChange(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->handleBrightnessModeChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSwitchUser(Lcom/android/server/display/DisplayPowerController2;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->handleOnSwitchUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->handleRbcChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController2;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->handleSettingsChange(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController2;FI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController2;->logHbmBrightnessStats(FI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController2;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->reportStats(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->unblockScreenOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->unblockScreenOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLastBrightnessSettingChangedTime(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updateLastBrightnessSettingChangedTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updatePowerState()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 182
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3e3851ec    # 0.18f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController2;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 183
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/server/display/DisplayPowerController2;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/16 v0, 0x26

    new-array v1, v0, [F

    .line 220
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/DisplayPowerController2;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    new-array v0, v0, [I

    .line 224
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/DisplayPowerController2;->BRIGHTNESS_RANGE_INDEX:[I

    const-wide/16 v0, -0x1

    .line 579
    sput-wide v0, Lcom/android/server/display/DisplayPowerController2;->sLastScreenBrightnessSettingChangedTime:J

    .line 600
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FULLSCREEN_AOD:Z

    if-eqz v0, :cond_0

    const v0, 0x3cf5c28f    # 0.03f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/server/display/DisplayPowerController2;->RATE_FROM_DOZE_TO_ON:F

    const/16 v0, 0xb4

    .line 609
    sput v0, Lcom/android/server/display/DisplayPowerController2;->DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

    const v0, 0xea60

    .line 610
    sput v0, Lcom/android/server/display/DisplayPowerController2;->MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44c80000    # 1600.0f
        0x44e10000    # 1800.0f
        0x44fa0000    # 2000.0f
        0x450ca000    # 2250.0f
        0x451c4000    # 2500.0f
        0x452be000    # 2750.0f
        0x453b8000    # 3000.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController2$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p14

    .line 683
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    const/4 v3, -0x1

    .line 300
    iput v3, v0, Lcom/android/server/display/DisplayPowerController2;->mLeadDisplayId:I

    .line 328
    new-instance v4, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    invoke-direct {v4}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    .line 404
    iput v3, v0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    .line 417
    new-instance v4, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v4}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 418
    new-instance v4, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v4}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v4, 0x0

    .line 428
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mLastStatsBrightness:F

    .line 459
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const-class v5, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    const/4 v10, 0x0

    .line 478
    iput v10, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    .line 524
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 538
    iput v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    const-string/jumbo v4, "screen_brightness_mode"

    .line 545
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 549
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mLcdFlashModeEnabled:Z

    .line 550
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mPassRampAnimation:Z

    .line 554
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mIsOutdoorModeEnabled:Z

    .line 559
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mSeamlessAodReady:Z

    .line 560
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnByAodReady:Z

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 569
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mLastOriginalTarget:F

    .line 591
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mLastAutomaticScreenBrightness:F

    .line 592
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mLastAmbientLux:F

    .line 622
    iput v10, v0, Lcom/android/server/display/DisplayPowerController2;->mActualDisplayState:I

    .line 625
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mLastNotifiedBrightness:F

    .line 640
    iput v3, v0, Lcom/android/server/display/DisplayPowerController2;->mExtraDimStrength:I

    .line 641
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mExtraDimIsActive:Z

    .line 651
    invoke-static {}, Lcom/android/server/power/PowerHistorian;->getInstance()Lcom/android/server/power/PowerHistorian;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 656
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mPrevScreenBrightness:F

    .line 1626
    new-instance v3, Lcom/android/server/display/DisplayPowerController2$4;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController2$4;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1653
    new-instance v3, Lcom/android/server/display/DisplayPowerController2$5;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController2$5;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1666
    new-instance v3, Lcom/android/server/display/DisplayPowerController2$6;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController2$6;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 3308
    new-instance v3, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mCleanListener:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    move-object/from16 v8, p2

    goto :goto_0

    .line 685
    :cond_0
    new-instance v3, Lcom/android/server/display/DisplayPowerController2$Injector;

    invoke-direct {v3}, Lcom/android/server/display/DisplayPowerController2$Injector;-><init>()V

    move-object v8, v3

    :goto_0
    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController2;->mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

    .line 686
    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerController2$Injector;->getClock()Lcom/android/server/display/DisplayPowerController2$Clock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    move-object/from16 v3, p7

    .line 687
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 688
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v7

    iput v7, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    move-object/from16 v4, p5

    .line 689
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mSensorManager:Landroid/hardware/SensorManager;

    .line 690
    new-instance v6, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController2;Landroid/os/Looper;)V

    iput-object v6, v0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    .line 691
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    .line 692
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 693
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController2;->mIsEnabled:Z

    .line 694
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController2;->mIsInTransition:Z

    .line 695
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    .line 696
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v15, 0x1

    if-ne v5, v15, :cond_1

    move v5, v15

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    .line 697
    invoke-virtual {v8, v7, v1}, Lcom/android/server/display/DisplayPowerController2$Injector;->getWakelockController(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)Lcom/android/server/display/WakelockController;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 699
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 700
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    new-instance v5, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    move-object v11, v8

    move v3, v15

    move-object v15, v5

    move/from16 v16, v7

    move-object/from16 v17, p5

    .line 699
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/display/DisplayPowerController2$Injector;->getDisplayPowerProximityStateController(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;)Lcom/android/server/display/DisplayPowerProximityStateController;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    move-object/from16 v5, p11

    .line 702
    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController2;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 703
    new-instance v5, Lcom/android/server/display/state/DisplayStateController;

    invoke-direct {v5, v4, v7}, Lcom/android/server/display/state/DisplayStateController;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;I)V

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 705
    new-instance v11, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-direct {v11, v9, v7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;-><init>(Landroid/content/Context;I)V

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayPowerController2["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    .line 708
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 710
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 711
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    .line 712
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStatsId:I

    .line 714
    new-instance v4, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v4, v7}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 715
    new-instance v4, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v4, v7}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    const/4 v13, 0x0

    if-eqz v7, :cond_3

    .line 717
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v4, :cond_2

    if-ne v7, v3, :cond_2

    goto :goto_2

    .line 723
    :cond_2
    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_3

    .line 721
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 726
    :goto_3
    new-instance v4, Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

    invoke-direct {v4, v0, v6}, Lcom/android/server/display/DisplayPowerController2$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController2;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

    .line 727
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 728
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 729
    const-class v1, Lcom/samsung/android/aod/AODManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/aod/AODManagerInternal;

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    move-object/from16 v1, p6

    .line 730
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 731
    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    move-object/from16 v1, p10

    .line 735
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    .line 739
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 744
    :cond_4
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v2, 0x4

    .line 750
    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 749
    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDozeConfig:F

    const/4 v2, 0x3

    .line 752
    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 751
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDimConfig:F

    const v1, 0x10500dc

    .line 753
    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessMinimumDimAmount:F

    .line 757
    sget v1, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenExtendedBrightnessRangeMaximum:F

    .line 761
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v2, :cond_5

    if-ne v7, v3, :cond_5

    move v15, v3

    goto :goto_4

    :cond_5
    move v15, v10

    :goto_4
    iput-boolean v15, v0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz v15, :cond_6

    const-string/jumbo v2, "sub_screen_brightness_mode"

    .line 765
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 769
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->loadBrightnessRampRates()V

    .line 772
    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mMoreFastRampRate:F

    const v1, 0x3e99999a    # 0.3f

    .line 773
    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateHdrIncrease:F

    const v1, 0x3f666666    # 0.9f

    .line 774
    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateHdrDecrease:F

    .line 777
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipScreenOnBrightnessRamp:Z

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->createHbmControllerLocked()Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->createBrightnessThrottlerLocked()Lcom/android/server/display/BrightnessThrottler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 783
    new-instance v15, Lcom/android/server/display/brightness/DisplayBrightnessController;

    const/4 v4, 0x0

    .line 785
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v5, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    new-instance v2, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object/from16 v16, v1

    move-object v1, v15

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    move v10, v3

    move-object v3, v4

    move v4, v7

    move-object/from16 v18, v6

    move-object/from16 v6, p9

    move/from16 v19, v7

    move-object/from16 v7, v17

    move-object v10, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;)V

    iput-object v15, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->getScreenBrightnessSetting()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController2;->saveBrightnessInfo(F)Z

    .line 807
    invoke-virtual {v0, v14}, Lcom/android/server/display/DisplayPowerController2;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 839
    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-object/from16 v1, p4

    .line 842
    invoke-virtual {v0, v14, v1}, Lcom/android/server/display/DisplayPowerController2;->setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V

    .line 845
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_7

    .line 846
    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 847
    invoke-virtual {v10, v9, v13, v1}, Lcom/android/server/display/DisplayPowerController2$Injector;->getAdaptiveBrightnessLongtermModelBuilder(Landroid/content/Context;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    goto :goto_5

    :cond_7
    move-object/from16 v1, p8

    .line 850
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 851
    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 855
    :goto_5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    const v1, 0x1110030

    .line 856
    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeFadesConfig:Z

    const v1, 0x1110127

    .line 859
    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBlanksAfterDozeConfig:Z

    const v1, 0x1110128

    .line 862
    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessBucketsInDozeConfig:Z

    move/from16 v1, p12

    .line 865
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBootCompleted:Z

    .line 868
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v1, :cond_8

    .line 869
    new-instance v1, Lcom/android/server/display/DisplayPowerController2$ShutdownReceiver;

    invoke-direct {v1, v0, v13}, Lcom/android/server/display/DisplayPowerController2$ShutdownReceiver;-><init>(Lcom/android/server/display/DisplayPowerController2;Lcom/android/server/display/DisplayPowerController2$ShutdownReceiver-IA;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController2$ShutdownReceiver;

    .line 870
    new-instance v1, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    move-object/from16 v1, p13

    .line 877
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

    .line 881
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeupEnabled:Z

    if-eqz v1, :cond_9

    .line 883
    new-instance v1, Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;

    .line 888
    :cond_9
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v1, :cond_a

    const/4 v15, 0x1

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    :goto_6
    iput-boolean v15, v0, Lcom/android/server/display/DisplayPowerController2;->mIsSupportedAodMode:Z

    if-eqz v15, :cond_b

    .line 891
    new-instance v1, Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;

    invoke-direct {v1, v0, v13}, Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController2;Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener-IA;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;

    .line 897
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    move v10, v2

    goto :goto_7

    :cond_c
    move v10, v4

    .line 896
    :goto_7
    invoke-virtual {v11, v10}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setUseAutoBrightness(Z)V

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create new DPC2 instance, mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AutomaticBrightnessController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mInteractiveModeBrightnessMapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$clearDisplayBrightnessFollowersLocked$9(Lcom/android/server/display/DisplayPowerControllerInterface;)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 3531
    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/display/DisplayPowerControllerInterface;->setBrightnessToFollow(FFF)V

    return-void
.end method

.method private synthetic lambda$createBrightnessThrottlerLocked$6()V
    .locals 0

    .line 2854
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    .line 2855
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->postBrightnessChangeRunnable()V

    return-void
.end method

.method private synthetic lambda$createHbmControllerLocked$5()V
    .locals 0

    .line 2840
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    .line 2841
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->postBrightnessChangeRunnable()V

    .line 2843
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_0

    .line 2844
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dump$10(Ljava/io/PrintWriter;)V
    .locals 0

    .line 3597
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$handleBrightnessModeChange$7(I)V
    .locals 3

    .line 3371
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v0

    .line 3373
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setUseAutoBrightness(Z)V

    .line 3377
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 3378
    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 3379
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_1

    .line 3382
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    const-string v0, "ShortTermModel: reset data, manual"

    invoke-virtual {p1, v0}, Lcom/android/server/power/PowerHistorian;->onAutoBrightnessEvent(Ljava/lang/String;)V

    .line 3384
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 3387
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updateLastBrightnessSettingChangedTime()V

    .line 3389
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-eqz p1, :cond_2

    .line 3390
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->postBrightnessModeChangeRunnable()V

    .line 3397
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] handleBrightnessModeChange: shouldUseAutoBrightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 3398
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3397
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updatePowerState()V

    return-void
.end method

.method private synthetic lambda$initialize$4(F)V
    .locals 3

    .line 1328
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1329
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 701
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updatePowerState()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 786
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->postBrightnessChangeRunnable()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 4

    .line 871
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 872
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController2$ShutdownReceiver;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$onDisplayChanged$3(Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZZZ)V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 1140
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1141
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    .line 1142
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStatsId:I

    .line 1143
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1144
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController2;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 1145
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/server/display/DisplayPowerController2;->loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 1146
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p1, p3}, Lcom/android/server/display/DisplayPowerProximityStateController;->notifyDisplayDeviceChanged(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 1151
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->resetScreenState()V

    .line 1153
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;->invalidateCurrentRequest()V

    :cond_0
    :goto_0
    move p1, v1

    goto :goto_1

    .line 1157
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1160
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController2;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 1161
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 1162
    invoke-virtual {p3}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/HashMap;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController2;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    .line 1161
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/display/BrightnessThrottler;->loadThermalBrightnessThrottlingDataFromDisplayDeviceConfig(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    :cond_2
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1169
    invoke-virtual {p1, p8, p9}, Lcom/android/server/display/HighBrightnessModeController;->isResolutionChanged(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1170
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p1, p8, p9}, Lcom/android/server/display/HighBrightnessModeController;->handleResolutionChange(II)V

    :cond_3
    const/4 p1, 0x0

    .line 1174
    :goto_1
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController2;->mIsEnabled:Z

    if-ne p2, p10, :cond_5

    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController2;->mIsInTransition:Z

    if-eq p2, p11, :cond_4

    goto :goto_2

    :cond_4
    move v1, p1

    goto :goto_3

    .line 1176
    :cond_5
    :goto_2
    iput-boolean p10, p0, Lcom/android/server/display/DisplayPowerController2;->mIsEnabled:Z

    .line 1177
    iput-boolean p11, p0, Lcom/android/server/display/DisplayPowerController2;->mIsInTransition:Z

    .line 1180
    :goto_3
    iput-boolean p12, p0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v1, :cond_6

    .line 1182
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updatePowerState()V

    :cond_6
    return-void
.end method

.method public static synthetic lambda$removeDisplayBrightnessFollower$8(Lcom/android/server/display/DisplayPowerControllerInterface;)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 3521
    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/display/DisplayPowerControllerInterface;->setBrightnessToFollow(FFF)V

    return-void
.end method

.method public static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 3726
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object p0

    :cond_1
    const-string p0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object p0

    :cond_2
    const-string p0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object p0
.end method

.method public static skipRampStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 3739
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object p0

    :cond_1
    const-string p0, "RAMP_STATE_SKIP_INITIAL"

    return-object p0

    :cond_2
    const-string p0, "RAMP_STATE_SKIP_NONE"

    return-object p0
.end method


# virtual methods
.method public addBrightnessWeights(FFFF)V
    .locals 0

    .line 4742
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_0

    .line 4743
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->addBrightnessWeightDirectly(FFFF)V

    :cond_0
    return-void
.end method

.method public addDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerControllerInterface;)V
    .locals 3

    .line 3511
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3512
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/display/DisplayPowerControllerInterface;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3513
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerStateLocked()V

    .line 3514
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final animateScreenBrightness(FFFF)V
    .locals 5

    .line 3058
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v2, p1, p2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 3059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", sdrTarget="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, ", rate=%.3f"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, ", rateAtHbm=%.3f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 3062
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3058
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasLoggableChanges(Lcom/android/server/display/brightness/BrightnessReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3067
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 3068
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    move-result-object v1

    .line 3067
    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerHistorian;->onBrightnessReasonChanged(Ljava/lang/String;)V

    .line 3072
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->animateTo(FFFF)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3075
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz p2, :cond_3

    .line 3076
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 3077
    invoke-virtual {p2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessAnimationConsumerInvoked:Z

    if-nez p2, :cond_3

    .line 3079
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    const/4 p2, 0x1

    .line 3080
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessAnimationConsumerInvoked:Z

    .line 3081
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    const-string p2, "TargetScreenBrightness"

    float-to-int p3, p1

    const-wide/32 v0, 0x20000

    .line 3085
    invoke-static {v0, v1, p2, p3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string p2, "debug.tracing.screen_brightness"

    .line 3087
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->noteScreenBrightness(F)V

    :cond_4
    return-void
.end method

.method public final animateScreenStateChange(IZ)V
    .locals 7

    .line 3094
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScreenStateChange: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 3100
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3102
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eq p1, v2, :cond_2

    return-void

    .line 3111
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOff:Z

    .line 3114
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v3, "animateScreenStateChange: mColorFadeOffAnimator.cancel()"

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3121
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3122
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3123
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3126
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    .line 3127
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    move v5, v1

    .line 3126
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 3128
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 3129
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_5
    if-eq p1, v3, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v1

    .line 3136
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(IZ)Z

    .line 3142
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOff:Z

    if-eqz v0, :cond_8

    if-eq p1, v3, :cond_8

    .line 3143
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    .line 3144
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOff:Z

    .line 3145
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    :cond_8
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ne p1, v2, :cond_f

    .line 3150
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsSupportedAodMode:Z

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    if-eqz p1, :cond_9

    .line 3152
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v5, :cond_9

    .line 3153
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    .line 3159
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mNeedPrepareColorFade:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_b

    .line 3161
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    .line 3162
    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3163
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string p2, "draw ColorFade due to unfolding"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3166
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mNeedPrepareColorFade:Z

    .line 3173
    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 3178
    :cond_c
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 3179
    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3180
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3181
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v2, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 3182
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3183
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->isLightSensorCovered()Z

    move-result p1

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    if-ne p1, v3, :cond_e

    .line 3185
    :cond_d
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string p1, "animateScreenStateChange is returned because lux is not yet valid!"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3203
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3204
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_4

    :cond_f
    if-ne p1, v6, :cond_12

    .line 3211
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3212
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v2, :cond_10

    return-void

    .line 3217
    :cond_10
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 3222
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3223
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_4

    :cond_12
    if-ne p1, v5, :cond_16

    .line 3228
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3229
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_13

    return-void

    .line 3235
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_15

    .line 3236
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_14

    return-void

    .line 3239
    :cond_14
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    .line 3243
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3244
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_4

    :cond_16
    const/4 v5, 0x6

    if-ne p1, v5, :cond_1a

    .line 3249
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3250
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_17

    return-void

    .line 3256
    :cond_17
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_19

    .line 3257
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_18

    return-void

    .line 3260
    :cond_18
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    .line 3264
    :cond_19
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3265
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_4

    .line 3268
    :cond_1a
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOff:Z

    .line 3269
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    if-nez p1, :cond_1b

    .line 3270
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3273
    :cond_1b
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1c

    .line 3276
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(I)Z

    .line 3277
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOff:Z

    .line 3278
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_4

    .line 3282
    :cond_1c
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeFadesConfig:Z

    if-nez p1, :cond_1e

    .line 3283
    sget-boolean p1, Lcom/android/server/display/DisplayPowerController2;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    if-eqz p1, :cond_1d

    move p1, v6

    goto :goto_2

    :cond_1d
    move p1, v3

    goto :goto_2

    :cond_1e
    move p1, v2

    :goto_2
    if-eqz p2, :cond_20

    .line 3285
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    .line 3286
    invoke-virtual {p2, v0, p1}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3287
    invoke-virtual {p2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p2

    if-eq p2, v3, :cond_20

    if-ne p1, v6, :cond_1f

    .line 3290
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/server/display/DisplayPowerController2;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 3292
    :cond_1f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/server/display/DisplayPowerController2;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3294
    :goto_3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    .line 3297
    :cond_20
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 3301
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :goto_4
    return-void
.end method

.method public final applyReduceBrightColorsSplineAdjustment()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 912
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    return-void
.end method

.method public final blockScreenOff()V
    .locals 4

    .line 2882
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    if-nez v0, :cond_0

    const-string v0, "Screen off blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    .line 2883
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2884
    new-instance v0, Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController2;Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    .line 2885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBlockStartRealTime:J

    .line 2886
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v0, "Blocking screen off"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final blockScreenOn()V
    .locals 4

    .line 2862
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    if-nez v0, :cond_0

    const-string v0, "Screen on blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    .line 2863
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2864
    new-instance v0, Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController2;Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    .line 2865
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOnBlockStartRealTime:J

    .line 2866
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v0, "Blocking screen on until initial contents have been drawn."

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWmsStart()V

    :cond_0
    return-void
.end method

.method public final calculateTransitionTime(IFFFF)D
    .locals 0

    int-to-double p0, p1

    div-float/2addr p3, p2

    div-float/2addr p4, p5

    mul-float/2addr p3, p4

    float-to-double p2, p3

    .line 5180
    invoke-static {p2, p3}, Ljava/lang/Math;->log10(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public final clampScreenBrightness(F)F
    .locals 1

    .line 3041
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3044
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 3045
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 3044
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final clampScreenBrightnessForFinal(F)F
    .locals 1

    .line 3032
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3035
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 3036
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    iget p0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenExtendedBrightnessRangeMaximum:F

    .line 3035
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final cleanupHandlerThreadAfterStop()V
    .locals 2

    .line 1685
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->cleanup()V

    .line 1686
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->stop()V

    .line 1687
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler;->stop()V

    .line 1688
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1691
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v0}, Lcom/android/server/display/WakelockController;->releaseAll()V

    .line 1693
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_0

    .line 1694
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1696
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController2;->reportStats(F)V

    .line 1698
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_1

    .line 1699
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->stop()V

    .line 1700
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_2

    .line 1704
    invoke-virtual {v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    .line 1708
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController2$ShutdownReceiver;

    if-eqz v0, :cond_3

    .line 1709
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    return-void
.end method

.method public clearAdaptiveBrightnessLongtermModelBuilder()V
    .locals 0

    .line 4764
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_0

    .line 4765
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->clearBrightnessEvents()V

    :cond_0
    return-void
.end method

.method public final clearDisplayBrightnessFollowersLocked()V
    .locals 6

    const/4 v0, 0x0

    .line 3529
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3530
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 3531
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayPowerControllerInterface;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    .line 3533
    invoke-interface {v1}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v4

    .line 3531
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3535
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final convertBrightnessReasonToStatsEnum(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public convertToBrightness(F)I
    .locals 0

    .line 4605
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz p0, :cond_0

    .line 4606
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final createBrightnessThrottlerLocked()Lcom/android/server/display/BrightnessThrottler;
    .locals 8

    .line 2850
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2851
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 2852
    new-instance v7, Lcom/android/server/display/BrightnessThrottler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2857
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget-object v5, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 2858
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/HashMap;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/BrightnessThrottler;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v7
.end method

.method public final createHbmControllerLocked()Lcom/android/server/display/HighBrightnessModeController;
    .locals 15

    .line 2801
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2802
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 2803
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2804
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    .line 2805
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2806
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_0

    .line 2808
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    .line 2811
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2817
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x0

    .line 2818
    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDimConfig:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 2822
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v9, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenExtendedBrightnessRangeMaximum:F

    new-instance v11, Lcom/android/server/display/DisplayPowerController2$7;

    invoke-direct {v11, p0}, Lcom/android/server/display/DisplayPowerController2$7;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    new-instance v12, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda9;

    invoke-direct {v12, p0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController2;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V

    return-object v1
.end method

.method public doShortTermReset()V
    .locals 2

    .line 4727
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 4728
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    const-string v1, "ShortTermModel: shell cmd"

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerHistorian;->onAutoBrightnessEvent(Ljava/lang/String;)V

    .line 4729
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 3540
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v2, "dump"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Display Power Controller:"

    .line 3543
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLeadDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController2;->mLeadDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayBrightnessFollowers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Display Power Controller Locked State:"

    .line 3550
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3555
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3557
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Configuration:"

    .line 3558
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDimConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDisplayInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    monitor-enter v1

    .line 3567
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.adjustedBrightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmTransitionPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3580
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --SEC_PMS"

    .line 3585
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AUTO_BRIGHTNESS_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_SEC_LONG_TERM_MODEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  extraDim mExtraDimStrength= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mExtraDimStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  extraDim mExtraDimIsActive= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mExtraDimIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3597
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerController2;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    .line 3580
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 3555
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final dumpBrightnessEvents(Ljava/io/PrintWriter;)V
    .locals 4

    .line 3744
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p0, "No Automatic Brightness Adjustments"

    .line 3746
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3750
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic Brightness Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Events: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightness/BrightnessEvent;

    const/4 v1, 0x0

    .line 3752
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 3601
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Thread State:"

    .line 3602
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedThrottling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAppliedThrottling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController2;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    .line 3616
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController2;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3615
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsRbcActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsRbcActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3619
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 3621
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_0

    .line 3622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 3623
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3622
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3626
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 3628
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3627
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 3631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 3632
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3631
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3635
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_3

    .line 3636
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 3639
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_4

    .line 3640
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 3641
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->dumpBrightnessEvents(Ljava/io/PrintWriter;)V

    .line 3644
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->dumpRbcEvents(Ljava/io/PrintWriter;)V

    .line 3646
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_5

    .line 3647
    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    .line 3650
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    if-eqz v0, :cond_6

    .line 3651
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 3654
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3660
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3662
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    if-eqz v0, :cond_7

    .line 3663
    invoke-virtual {v0, p1}, Lcom/android/server/display/WakelockController;->dumpLocal(Ljava/io/PrintWriter;)V

    .line 3666
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3667
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    if-eqz v0, :cond_8

    .line 3668
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 3671
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3672
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    if-eqz v0, :cond_9

    .line 3673
    invoke-virtual {v0, p1}, Lcom/android/server/display/state/DisplayStateController;->dumpsys(Ljava/io/PrintWriter;)V

    .line 3677
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastBrightnessConfigurationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessConfigurationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForceUpdateAb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceUpdateAb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_a

    .line 3685
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_a

    .line 3686
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3687
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->dump(Ljava/io/PrintWriter;)V

    .line 3693
    :cond_a
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_b

    .line 3694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDualScreenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    const-string v0, "  SEC_FEATURE_EARLY_WAKEUP=true"

    .line 3699
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;

    if-eqz p0, :cond_c

    .line 3701
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;->dump(Ljava/io/PrintWriter;)V

    .line 3706
    :cond_c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "  USE_LONG_RAMP_RATE_FOR_NON_HBM=true"

    .line 3707
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  SEC_FEATURE_BRIGHTNESS_CONTROL_BY_EXTRA_DIM=false"

    .line 3711
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpRbcEvents(Ljava/io/PrintWriter;)V
    .locals 4

    .line 3758
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p0, "No Reduce Bright Colors Adjustments"

    .line 3760
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3764
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reduce Bright Colors Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Events: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3765
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightness/BrightnessEvent;

    const/4 v1, 0x0

    .line 3766
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAdaptiveBrightness(F)F
    .locals 0

    .line 4616
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz p0, :cond_0

    .line 4617
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getAmbientBrightnessInfo(F)Ljava/lang/String;
    .locals 0

    .line 4708
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_0

    .line 4709
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 988
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v1, "getAmbientBrightnessStats: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 996
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getAppliedBackupConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1094
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_0

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController2$BrightnessDynamicRampRatePair;
    .locals 12

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const v2, 0x3b83126f    # 0.004f

    if-gtz v1, :cond_0

    move p1, v2

    .line 5140
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getCurrentValue()F

    move-result v1

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_1

    move v1, v2

    .line 5143
    :cond_1
    iget v2, p0, Lcom/android/server/display/DisplayPowerController2;->mLastAmbientLux:F

    cmpg-float v3, p2, v0

    const v4, 0x3f666666    # 0.9f

    if-gtz v3, :cond_2

    move p2, v4

    :cond_2
    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    move v2, v4

    :cond_3
    const-string/jumbo v0, "sys.display.transition.weight"

    .line 5147
    sget v3, Lcom/android/server/display/DisplayPowerController2;->DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "sys.display.transition.weight.hbm"

    const/16 v3, 0xf

    .line 5149
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    cmpg-float v3, p1, v1

    const/high16 v10, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_5

    .line 5153
    sget v9, Lcom/android/server/display/DisplayPowerController2;->MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

    move-object v3, p0

    move v5, p1

    move v6, v1

    move v7, v2

    move v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/DisplayPowerController2;->getDynamicRampRate(IFFFFI)F

    move-result v11

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    const/16 v9, 0x7530

    move-object v3, p0

    move v4, v0

    move v5, p1

    move v6, v1

    move v7, v2

    move v8, p2

    .line 5157
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/DisplayPowerController2;->getDynamicRampRate(IFFFFI)F

    move-result v10

    :cond_4
    move p0, v10

    move v10, v11

    goto :goto_0

    :cond_5
    move p0, v10

    .line 5162
    :goto_0
    new-instance p1, Lcom/android/server/display/DisplayPowerController2$BrightnessDynamicRampRatePair;

    invoke-direct {p1, v10, p0}, Lcom/android/server/display/DisplayPowerController2$BrightnessDynamicRampRatePair;-><init>(FF)V

    return-object p1
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 954
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v1, "getBrightnessEvents: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 962
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 11

    .line 2718
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    monitor-enter v0

    .line 2719
    :try_start_0
    new-instance v10, Landroid/hardware/display/BrightnessInfo;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v3, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v4, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v5, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v6, v1, Landroid/util/MutableInt;->value:I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v7, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v8, v1, Landroid/util/MutableInt;->value:I

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    iget-boolean v9, p0, Landroid/util/MutableBoolean;->value:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    monitor-exit v0

    return-object v10

    :catchall_0
    move-exception p0

    .line 2728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBrightnessLearningMaxLimitCount()[I
    .locals 0

    .line 5088
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_0

    .line 5089
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->getBrightnessLearningMaxLimitCount()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCoverDisplayDemoSetting()Z
    .locals 3

    .line 4772
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "cover_screen_demo_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public getCurrentScreenBrightness()F
    .locals 0

    .line 5081
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result p0

    return p0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1085
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 3418
    iget p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    return p0
.end method

.method public final getDynamicRampRate(IFFFFI)F
    .locals 0

    .line 5169
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/DisplayPowerController2;->calculateTransitionTime(IFFFF)D

    move-result-wide p0

    int-to-double p2, p6

    .line 5171
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-lez p2, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    div-double/2addr p2, p0

    double-to-float p0, p2

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_0
    return p0
.end method

.method public final getFinalBrightness(FI)F
    .locals 6

    const/4 v0, 0x0

    .line 4442
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPassRampAnimation:Z

    .line 4446
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_0

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_0

    mul-float/2addr p1, v1

    .line 4451
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightnessForFinal(F)F

    move-result p1

    .line 4452
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 4458
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v4

    if-lez v1, :cond_1

    .line 4460
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v1, 0x100

    invoke-virtual {p1, v1, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move p1, v4

    .line 4466
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    cmpl-float v3, v1, v2

    const/16 v5, 0x20

    if-ltz v3, :cond_2

    cmpg-float v3, p1, v1

    if-gez v3, :cond_2

    .line 4468
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4472
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3

    cmpl-float v3, p1, v1

    if-lez v3, :cond_3

    .line 4474
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4480
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    int-to-float v3, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_4

    int-to-float p1, v1

    .line 4482
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v3, 0x80

    invoke-virtual {v1, v3, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 4488
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->hasAppliedAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4489
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    cmpl-float v3, v1, v2

    const/16 v5, 0x40

    if-ltz v3, :cond_5

    cmpl-float v3, p1, v1

    if-lez v3, :cond_5

    .line 4492
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4496
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mAppliedDimming:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    if-nez v3, :cond_6

    cmpg-float v3, p1, v1

    if-gez v3, :cond_6

    .line 4500
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4508
    :cond_6
    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x3ec28f5c    # 0.38f

    cmpl-float v1, p1, p2

    if-lez v1, :cond_7

    .line 4511
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v1, 0x800

    invoke-virtual {p1, v1, p2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move p1, p2

    .line 4518
    :cond_7
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz p2, :cond_8

    .line 4520
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 p2, 0x400

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    goto :goto_0

    :cond_8
    move v2, p1

    .line 4526
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-nez p2, :cond_9

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-eqz p2, :cond_a

    :cond_9
    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p2, v1, :cond_a

    .line 4528
    iget p1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenExtendedBrightnessRangeMaximum:F

    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 4530
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 p2, 0x200

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 4532
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mIsOutdoorModeEnabled:Z

    .line 4534
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mLcdFlashModeEnabled:Z

    if-eqz p1, :cond_b

    .line 4536
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPassRampAnimation:Z

    goto :goto_1

    .line 4539
    :cond_a
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController2;->mIsOutdoorModeEnabled:Z

    if-eqz p2, :cond_b

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz p1, :cond_b

    .line 4541
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mIsOutdoorModeEnabled:Z

    .line 4543
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mLcdFlashModeEnabled:Z

    if-eqz p1, :cond_b

    .line 4544
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLcdFlashModeEnabled:Z

    .line 4545
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPassRampAnimation:Z

    .line 4552
    :cond_b
    :goto_1
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mCoverDisplayDemoEnabled:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p1, v1, :cond_c

    .line 4554
    iget p1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenExtendedBrightnessRangeMaximum:F

    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 4556
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 p2, 0x4000

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 4562
    :cond_c
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SCREEN_CURTAIN:Z

    if-eqz p1, :cond_d

    .line 4563
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenCurtainEnabled:Z

    if-eqz p1, :cond_d

    .line 4564
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPassRampAnimation:Z

    const/16 p1, 0x31

    .line 4565
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4567
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightnessForFinal(F)F

    move-result v2

    .line 4568
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const p2, 0x8000

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 4575
    :cond_d
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mLastCoverClosedState:Z

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-eq p1, p2, :cond_e

    .line 4576
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController2;->mLastCoverClosedState:Z

    if-nez p2, :cond_e

    .line 4578
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPassRampAnimation:Z

    :cond_e
    return v2
.end method

.method public getLastAutomaticScreenBrightness()F
    .locals 0

    .line 5076
    iget p0, p0, Lcom/android/server/display/DisplayPowerController2;->mLastAutomaticScreenBrightness:F

    return p0
.end method

.method public getLastUserSetScreenBrightnessTime()J
    .locals 2

    .line 4676
    sget-wide v0, Lcom/android/server/display/DisplayPowerController2;->sLastScreenBrightnessSettingChangedTime:J

    return-wide v0
.end method

.method public getLeadDisplayId()I
    .locals 0

    .line 3423
    iget p0, p0, Lcom/android/server/display/DisplayPowerController2;->mLeadDisplayId:I

    return p0
.end method

.method public getScreenBrightnessSetting()F
    .locals 0

    .line 3408
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result p0

    return p0
.end method

.method public final getTransitionTimeWithHbm(FFFF)I
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    sub-float/2addr p1, v0

    sub-float/2addr v0, p2

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_1

    sub-float/2addr p1, p2

    move v0, v1

    goto :goto_0

    .line 4396
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTransitionTimeWithHbm: rateAtHbm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " currentBrightness: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " targetBrightness: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sub-float/2addr p1, p2

    .line 4400
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move p1, v1

    :goto_0
    float-to-double p0, p1

    float-to-double v1, p4

    div-double/2addr p0, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v1

    .line 4403
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    float-to-double p1, v0

    float-to-double p3, p3

    div-double/2addr p1, p3

    mul-double/2addr p1, v1

    .line 4404
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    add-int/2addr p0, p1

    return p0
.end method

.method public final handleBrightnessModeChange()V
    .locals 5

    .line 3365
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    .line 3366
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 3365
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3369
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    new-instance v2, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayPowerController2;I)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    .line 3402
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 3369
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final handleOnSwitchUser(I)V
    .locals 1

    const/4 v0, 0x1

    .line 972
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController2;->handleSettingsChange(Z)V

    .line 973
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->handleBrightnessModeChange()V

    .line 975
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v0, :cond_0

    .line 977
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p0, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    :cond_0
    return-void
.end method

.method public final handleRbcChanged()V
    .locals 4

    .line 916
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    return-void

    .line 919
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 921
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_3

    .line 923
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v0, "No brightness mapping available to recalculate splines for this mode"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mNitsRange:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 928
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mNitsRange:[F

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 929
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsAdjustedBrightnessNits(F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsRbcActive:Z

    .line 932
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->recalculateSplines(Z[F)V

    return-void
.end method

.method public final handleSettingsChange(Z)V
    .locals 4

    .line 3326
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3328
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v1

    .line 3327
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setPendingScreenBrightness(F)V

    .line 3329
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->updatePendingAutoBrightnessAdjustments(Z)V

    .line 3330
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->updateGameAutoBrightnessLock()V

    if-eqz p1, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3336
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getPendingScreenBrightness()F

    move-result v1

    .line 3335
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAndNotifyCurrentScreenBrightness(F)V

    .line 3338
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v0, :cond_0

    .line 3340
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 3341
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 3346
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz v0, :cond_1

    .line 3347
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->getCoverDisplayDemoSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mCoverDisplayDemoEnabled:Z

    .line 3351
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPrevScreenBrightness:F

    .line 3353
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3354
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getPendingScreenBrightness()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 3355
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getPendingAutoBrightnessAdjustment()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 3356
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isGameAutoBrightnessLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, " sb: %.3f abAdj: %.3f sbLock: %s"

    .line 3353
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3357
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] handleSettingsChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, " userSwitch"

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    return-void
.end method

.method public ignoreProximitySensorUntilChanged()V
    .locals 0

    .line 2663
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->ignoreProximitySensorUntilChanged()V

    return-void
.end method

.method public final initialize(I)V
    .locals 4

    .line 1279
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1280
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/display/ColorFade;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    .line 1279
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/display/DisplayPowerController2$Injector;->getDisplayPowerState(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1282
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    if-eqz v0, :cond_1

    .line 1283
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xa0

    .line 1285
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1286
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1288
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x140

    .line 1290
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1291
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1294
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/display/DisplayPowerController2$Injector;->getDualRampAnimator(Lcom/android/server/display/DisplayPowerState;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)Lcom/android/server/display/RampAnimator$DualRampAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1297
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    .line 1300
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1302
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController2$Injector;->getHqmDataDispatcher()Lcom/android/server/power/HqmDataDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 1304
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->noteScreenState(I)V

    .line 1305
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->noteScreenBrightness(F)V

    .line 1314
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1315
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    .line 1314
    invoke-virtual {p1, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 1318
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_3

    .line 1320
    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->start(F)V

    goto :goto_1

    .line 1324
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1327
    :cond_3
    :goto_1
    new-instance p1, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1332
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->registerBrightnessSettingChangeListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 1334
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 1335
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1334
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1337
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 1338
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

    .line 1337
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1342
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz p1, :cond_4

    .line 1343
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "game_autobrightness_lock"

    .line 1344
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

    .line 1343
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1350
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez p1, :cond_5

    .line 1351
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "cover_screen_demo_mode"

    .line 1352
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

    .line 1351
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1357
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->handleBrightnessModeChange()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public injectLux(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 4717
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_0

    .line 4718
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->injectLux(Landroid/hardware/SensorEvent;)V

    :cond_0
    return-void
.end method

.method public final isLightSensorCovered()Z
    .locals 0

    .line 4375
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    return p0
.end method

.method public isProximitySensorAvailable()Z
    .locals 0

    .line 940
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorAvailable()Z

    move-result p0

    return p0
.end method

.method public final loadAmbientLightSensor()V
    .locals 2

    .line 3009
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz v0, :cond_1

    .line 3010
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10041

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLightSensor:Landroid/hardware/Sensor;

    .line 3015
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 3017
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10044

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLightSensor:Landroid/hardware/Sensor;

    :cond_2
    return-void
.end method

.method public final loadBrightnessRampRates()V
    .locals 2

    .line 1586
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateFastDecrease:F

    .line 1587
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateFastIncrease:F

    .line 1588
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateSlowDecrease:F

    .line 1589
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateSlowIncrease:F

    .line 1590
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1591
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 1592
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1593
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampIncreaseMaxTimeMillis:J

    return-void
.end method

.method public final loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V
    .locals 8

    .line 1221
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->reloadReduceBrightColours()V

    .line 1224
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/HighBrightnessModeController;->setHighBrightnessModeMetadata(Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 1225
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, p2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v3, p2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v5, p2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1226
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/DisplayPowerController2$2;

    invoke-direct {v7, p0}, Lcom/android/server/display/DisplayPowerController2$2;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    move-object v4, p1

    .line 1225
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->loadBrightnessRampRates()V

    .line 1238
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController2;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController2;->setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V

    .line 1240
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->reloadReduceBrightColours()V

    .line 1241
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_1

    .line 1242
    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/HighBrightnessModeController;->setHighBrightnessModeMetadata(Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 1247
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, p2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v3, p2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v5, p2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1248
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v6

    new-instance v7, Lcom/android/server/display/DisplayPowerController2$3;

    invoke-direct {v7, p0}, Lcom/android/server/display/DisplayPowerController2$3;-><init>(Lcom/android/server/display/DisplayPowerController2;)V

    move-object v4, p1

    .line 1247
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    .line 1257
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1258
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/HashMap;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController2;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    .line 1257
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/display/BrightnessThrottler;->loadThermalBrightnessThrottlingDataFromDisplayDeviceConfig(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final loadNitsRange(Landroid/content/res/Resources;)V
    .locals 2

    .line 1597
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1598
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mNitsRange:[F

    goto :goto_0

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x107013a

    .line 1602
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1601
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mNitsRange:[F

    :goto_0
    return-void
.end method

.method public final loadScreenOffBrightnessSensor()V
    .locals 4

    .line 3023
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 3024
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object v0

    .line 3025
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public final logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;F)V
    .locals 32

    move-object/from16 v0, p0

    .line 3940
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v1

    .line 3941
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 3944
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v3

    cmpl-float v3, p2, v3

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move/from16 v20, v5

    goto :goto_0

    :cond_0
    const/16 v20, 0x0

    .line 3945
    :goto_0
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3946
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v8

    .line 3947
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isLowPowerModeSet()Z

    move-result v3

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPowerFactor()F

    move-result v3

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v6

    .line 3948
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRbcStrength()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    move v13, v3

    .line 3950
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    if-nez v3, :cond_3

    move v14, v6

    goto :goto_3

    .line 3951
    :cond_3
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v3

    move v14, v3

    .line 3954
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    move v15, v6

    goto :goto_4

    .line 3955
    :cond_4
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v3

    move v15, v3

    .line 3956
    :goto_4
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v3, :cond_e

    const/16 v6, 0x1ee

    .line 3957
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3959
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getInitialBrightness()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v7

    .line 3961
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getLux()F

    move-result v9

    .line 3962
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayId()Ljava/lang/String;

    move-result-object v10

    .line 3963
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->wasShortTermModelActive()Z

    move-result v11

    .line 3968
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isAutomaticBrightnessEnabled()Z

    move-result v16

    const/16 v17, 0x1

    .line 3970
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController2;->convertBrightnessReasonToStatsEnum(I)I

    move-result v18

    .line 3971
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController2;->nitsToRangeIndex(F)I

    move-result v19

    .line 3973
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    if-ne v3, v5, :cond_5

    move/from16 v21, v5

    goto :goto_5

    :cond_5
    const/16 v21, 0x0

    .line 3974
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    move/from16 v22, v5

    goto :goto_6

    :cond_6
    const/16 v22, 0x0

    :goto_6
    and-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_7

    move/from16 v23, v5

    goto :goto_7

    :cond_7
    const/16 v23, 0x0

    :goto_7
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 3976
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result v24

    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_8

    move/from16 v25, v5

    goto :goto_8

    :cond_8
    const/16 v25, 0x0

    .line 3978
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v26

    and-int/lit8 v0, v2, 0x2

    if-lez v0, :cond_9

    move/from16 v27, v5

    goto :goto_9

    :cond_9
    const/16 v27, 0x0

    :goto_9
    and-int/lit8 v0, v2, 0x4

    if-lez v0, :cond_a

    move/from16 v28, v5

    goto :goto_a

    :cond_a
    const/16 v28, 0x0

    :goto_a
    and-int/lit8 v0, v2, 0x8

    if-lez v0, :cond_b

    move/from16 v29, v5

    goto :goto_b

    :cond_b
    const/16 v29, 0x0

    :goto_b
    and-int/lit8 v0, v2, 0x10

    if-lez v0, :cond_c

    move/from16 v30, v5

    goto :goto_c

    :cond_c
    const/16 v30, 0x0

    :goto_c
    and-int/lit8 v0, v2, 0x20

    if-lez v0, :cond_d

    move/from16 v31, v5

    goto :goto_d

    :cond_d
    const/16 v31, 0x0

    .line 3957
    :goto_d
    invoke-static/range {v6 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IFFFLjava/lang/String;ZFIFFZIIIZZZZIZZZZZZZ)V

    :cond_e
    return-void
.end method

.method public final logDisplayPolicyChanged(I)V
    .locals 1

    .line 3319
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x6a0

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 3320
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 3321
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 3322
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final logHbmBrightnessStats(FI)V
    .locals 1

    .line 3883
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    monitor-enter p0

    const/16 v0, 0x1a1

    .line 3884
    :try_start_0
    invoke-static {v0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 3886
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final nitsToRangeIndex(F)I
    .locals 2

    const/4 p0, 0x0

    .line 3892
    :goto_0
    sget-object v0, Lcom/android/server/display/DisplayPowerController2;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 3893
    aget v0, v0, p0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 3894
    sget-object p1, Lcom/android/server/display/DisplayPowerController2;->BRIGHTNESS_RANGE_INDEX:[I

    aget p0, p1, p0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x26

    return p0
.end method

.method public final noteScreenBrightness(F)V
    .locals 4

    .line 3819
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_1

    .line 3822
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v1, :cond_0

    .line 3823
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenBrightness(III)V

    goto :goto_0

    .line 3828
    :cond_0
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3836
    :catch_0
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    if-eqz v0, :cond_3

    .line 3837
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    .line 3839
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v1, :cond_2

    .line 3840
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->isFirstDisplay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3843
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    :cond_3
    return-void
.end method

.method public final noteScreenState(I)V
    .locals 4

    const/16 v0, 0x24d

    .line 3774
    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStatsId:I

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 3776
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 3779
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v2, :cond_3

    .line 3781
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v0, :cond_2

    .line 3782
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    if-nez v0, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    if-eq v2, v1, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 3791
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteDualScreenState: State="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3792
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dualScreenPolicy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3791
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenState(III)V

    goto :goto_1

    .line 3798
    :cond_3
    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3806
    :catch_0
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    if-eqz v0, :cond_6

    .line 3807
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    .line 3809
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v2, :cond_5

    .line 3810
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->isFirstDisplay()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 3813
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenState(II)V

    :cond_6
    return-void
.end method

.method public final notifyBrightnessTrackerChanged(FZZZZ)V
    .locals 10

    .line 3446
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 3447
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v2

    if-nez p5, :cond_9

    .line 3454
    iget-object p5, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p5, :cond_9

    .line 3456
    invoke-virtual {p5}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result p5

    if-nez p5, :cond_9

    if-eqz p4, :cond_9

    sget-boolean p4, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-nez p4, :cond_1

    goto/16 :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p4, :cond_9

    :cond_1
    iget-object p4, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 3464
    invoke-virtual {p4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result p4

    if-eqz p4, :cond_9

    const/4 p4, 0x0

    cmpg-float p5, v2, p4

    if-gez p5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 3469
    iget-object p5, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p5, :cond_4

    .line 3470
    invoke-virtual {p5}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result p5

    if-eqz p5, :cond_4

    :cond_3
    iget-object p5, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3471
    invoke-virtual {p5}, Lcom/android/server/display/AutomaticBrightnessController;->isHbmLux()Z

    move-result p5

    if-eqz p5, :cond_5

    :cond_4
    const/4 p2, 0x0

    :cond_5
    move v3, p2

    .line 3478
    iget p2, p0, Lcom/android/server/display/DisplayPowerController2;->mLastNotifiedBrightness:F

    invoke-static {p2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p5, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    cmpl-float p4, p5, p4

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p4, :cond_6

    cmpl-float p4, p5, v0

    if-eqz p4, :cond_6

    goto :goto_1

    .line 3483
    :cond_6
    iput p1, p0, Lcom/android/server/display/DisplayPowerController2;->mLastNotifiedBrightness:F

    .line 3489
    iget-boolean p1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz p1, :cond_7

    .line 3490
    iget p1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v4, p1

    goto :goto_0

    :cond_7
    move v4, v0

    .line 3494
    :goto_0
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz p1, :cond_8

    .line 3495
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3497
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3498
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v8

    move v5, p3

    .line 3495
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyBrightnessChanged(FZFZZLjava/lang/String;Landroid/util/Spline;)V

    goto :goto_1

    .line 3501
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3503
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3504
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorValues()[F

    move-result-object v8

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3505
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorTimestamps()[J

    move-result-object v9

    move v5, p3

    .line 3501
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZLjava/lang/String;[F[J)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onAmbientLuxChanged(F)V
    .locals 1

    .line 5119
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_0

    .line 5121
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyAmbientLuxChanged(F)V

    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 4

    .line 2733
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2734
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V
    .locals 17

    move-object/from16 v14, p0

    move/from16 v0, p2

    .line 1111
    iput v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLeadDisplayId:I

    .line 1112
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1114
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Device is null in DisplayPowerController2 for display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1115
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1119
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 1120
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    .line 1121
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    .line 1122
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v7

    .line 1124
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1125
    iget v9, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1126
    iget v10, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1128
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v11

    .line 1129
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v12

    .line 1130
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1131
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v13, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v13, v0

    .line 1133
    :goto_0
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1134
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 1136
    iget-object v15, v14, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    new-instance v8, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v16, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController2;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZZZ)V

    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    .line 1184
    invoke-interface {v0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v0

    move-object/from16 v2, v16

    .line 1136
    invoke-virtual {v15, v2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onScreenBrightnessSettingTimeChanged()V
    .locals 0

    .line 4685
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    return-void
.end method

.method public onShortTermReset()V
    .locals 1

    .line 5108
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_0

    .line 5109
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyShortTermResetValid()V

    goto :goto_0

    .line 5111
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    :goto_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 968
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserPointAdded(FF)V
    .locals 1

    .line 5098
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    if-eqz v0, :cond_0

    .line 5099
    iget p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPrevScreenBrightness:F

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/power/HqmDataDispatcher;->sendBrightnessAdjustmentEventAsync(FFF)V

    :cond_0
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    .line 1005
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_0

    .line 1006
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_1

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->persistAdaptiveBrightnessLongtermModelBuilderState()V

    goto :goto_0

    .line 1011
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p0, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public postBrightnessChangeRunnable()V
    .locals 1

    .line 2797
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postBrightnessModeChangeRunnable()V
    .locals 1

    .line 4680
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final putAutoBrightnessTransitionTime(FFF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 4415
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getCurrentValue()F

    move-result v0

    .line 4420
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4425
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/display/DisplayPowerController2;->getTransitionTimeWithHbm(FFFF)I

    move-result p1

    goto :goto_0

    :cond_0
    sub-float/2addr v0, p3

    .line 4428
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    float-to-double v0, p1

    div-double/2addr p2, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p2, v0

    .line 4429
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4433
    :goto_0
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "putAutoBrightnessTransitionTime: transitionTime="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "auto_brightness_transition_time"

    const/4 p3, -0x2

    invoke-static {p0, p2, p1, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final readyToUpdateDisplayState()Z
    .locals 1

    .line 3995
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBootCompleted:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final reloadReduceBrightColours()V
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->applyReduceBrightColorsSplineAdjustment()V

    :cond_0
    return-void
.end method

.method public removeDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerControllerInterface;)V
    .locals 3

    .line 3519
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3520
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/display/DisplayPowerControllerInterface;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3521
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    new-instance v2, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/display/DisplayPowerController2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerControllerInterface;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    .line 3523
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide p0

    .line 3521
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3524
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reportStats(F)V
    .locals 5

    .line 3849
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLastStatsBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3854
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    monitor-enter v0

    .line 3855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    if-nez v1, :cond_1

    .line 3856
    monitor-exit v0

    return-void

    .line 3858
    :cond_1
    iget v1, v1, Landroid/util/MutableFloat;->value:F

    .line 3859
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 3862
    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController2;->mLastStatsBrightness:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_6

    .line 3865
    :cond_4
    iput p1, p0, Lcom/android/server/display/DisplayPowerController2;->mLastStatsBrightness:F

    .line 3866
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v0, v2, :cond_5

    .line 3869
    iget v0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStatsId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController2;->logHbmBrightnessStats(FI)V

    goto :goto_2

    .line 3872
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3873
    iput v3, v0, Landroid/os/Message;->what:I

    .line 3874
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3875
    iget p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStatsId:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 3876
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 3859
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 3

    .line 1039
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1040
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mStopped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1041
    monitor-exit v0

    return v2

    .line 1044
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 1045
    invoke-virtual {v1, p2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setPendingWaitForNegativeProximityLocked(Z)Z

    move-result p2

    .line 1047
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_1

    .line 1048
    new-instance p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    :goto_0
    move p2, v2

    goto :goto_1

    .line 1050
    :cond_1
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1051
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    goto :goto_0

    .line 1056
    :cond_2
    :goto_1
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceSlowChangeLocked:Z

    if-nez v1, :cond_3

    .line 1058
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceSlowChangeLocked:Z

    move p2, v2

    .line 1064
    :cond_3
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingEarlyWakeUpRequestLocked:Z

    if-nez p1, :cond_4

    .line 1066
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingEarlyWakeUpRequestLocked:Z

    move p2, v2

    :cond_4
    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1072
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayReadyLocked:Z

    .line 1073
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestChangedLocked:Z

    if-nez p1, :cond_5

    .line 1074
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestChangedLocked:Z

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerStateLocked()V

    .line 1079
    :cond_5
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayReadyLocked:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1080
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restartAdaptiveBrightnessLongtermModelBuilderFromBnr()V
    .locals 1

    .line 4749
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 4751
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V
    .locals 1

    .line 4756
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_0

    .line 4757
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4758
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->restartAdaptiveBrightnessStatsTracker(Z)V

    :cond_0
    return-void
.end method

.method public final saveBrightnessInfo(F)Z
    .locals 0

    .line 2738
    invoke-virtual {p0, p1, p1}, Lcom/android/server/display/DisplayPowerController2;->saveBrightnessInfo(FF)Z

    move-result p0

    return p0
.end method

.method public final saveBrightnessInfo(FF)Z
    .locals 9

    .line 2742
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    monitor-enter v0

    .line 2743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2744
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v2

    .line 2743
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2745
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2746
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v3

    .line 2745
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2749
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v4, v3, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 2750
    invoke-virtual {v3, v4, p1}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v3

    const/4 v4, 0x0

    or-int/2addr v3, v4

    .line 2752
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 2753
    invoke-virtual {v5, v6, p2}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2755
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 2756
    invoke-virtual {v5, v6, v1}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2758
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 2759
    invoke-virtual {v5, v6, v2}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2761
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2763
    invoke-virtual {v7}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v7

    .line 2762
    invoke-virtual {v5, v6, v7}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2764
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2766
    invoke-virtual {v7}, Lcom/android/server/display/HighBrightnessModeController;->getTransitionPoint()F

    move-result v7

    .line 2765
    invoke-virtual {v5, v6, v7}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2767
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2769
    invoke-virtual {v7}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result v7

    .line 2768
    invoke-virtual {v5, v6, v7}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2772
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 2775
    invoke-virtual {v7}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v4

    .line 2773
    :goto_0
    invoke-virtual {v5, v6, v7}, Lcom/android/server/display/DisplayPowerController2$CachedBrightnessInfo;->checkAndSetBoolean(Landroid/util/MutableBoolean;Z)Z

    move-result v5

    or-int/2addr v3, v5

    if-eqz v3, :cond_2

    .line 2780
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveBrightnessInfo: brt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " adjBrt:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " min:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " max:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hbm:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2784
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tp:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2785
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->getTransitionPoint()F

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " throttler:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2786
    invoke-virtual {p1}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isAnimating:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz p0, :cond_1

    .line 2788
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    move v4, v8

    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2780
    invoke-static {v5, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 2793
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendOnStateChangedWithWakelock()V
    .locals 2

    .line 3311
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3314
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->getOnStateChangedRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final sendUpdatePowerState()V
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1265
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerStateLocked()V

    .line 1266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendUpdatePowerStateLocked()V
    .locals 4

    .line 1271
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1272
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingUpdatePowerStateLocked:Z

    .line 1273
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1274
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setActualDisplayState(I)V
    .locals 4

    .line 4692
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4693
    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerController2;->mActualDisplayState:I

    if-eq p1, v1, :cond_0

    .line 4694
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActualDisplayState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mActualDisplayState:I

    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4695
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4694
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    iput p1, p0, Lcom/android/server/display/DisplayPowerController2;->mActualDisplayState:I

    .line 4699
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerStateLocked()V

    .line 4701
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

.method public setAmbientColorTemperatureOverride(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public setAutoBrightnessLoggingEnabled(Z)V
    .locals 0

    .line 4149
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_0

    .line 4150
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public setAutomaticScreenBrightnessMode(Z)V
    .locals 0

    .line 1614
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->switchToIdleMode()V

    goto :goto_0

    .line 1618
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->switchToInteractiveScreenBrightnessMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .line 3413
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(F)V

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 5

    .line 2669
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 2671
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2674
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceUpdateAb:Z

    if-eqz p1, :cond_1

    const-string/jumbo p2, "sec-backup"

    .line 2675
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eq p1, v1, :cond_2

    .line 2676
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessChangedByUser:Z

    .line 2678
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessConfigurationTime:J

    .line 2679
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2680
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2681
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setBrightnessToFollow(FFF)V
    .locals 1

    .line 3428
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/HighBrightnessModeController;->onAmbientLuxChange(F)V

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_0

    .line 3430
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(Ljava/lang/Float;)V

    goto :goto_0

    .line 3432
    :cond_0
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p3, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToFloatScale(F)F

    move-result p2

    .line 3433
    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3434
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(Ljava/lang/Float;)V

    goto :goto_0

    .line 3437
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(Ljava/lang/Float;)V

    .line 3440
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    return-void
.end method

.method public setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public setHdrRampRate(FF)V
    .locals 0

    .line 5198
    iput p1, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateHdrIncrease:F

    .line 5199
    iput p2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateHdrDecrease:F

    return-void
.end method

.method public setRampSpeedToFollower(FF)V
    .locals 0

    .line 5129
    iput p1, p0, Lcom/android/server/display/DisplayPowerController2;->mFollowerRampSpeed:F

    .line 5130
    iput p2, p0, Lcom/android/server/display/DisplayPowerController2;->mFollowerRampSpeedAtHbm:F

    return-void
.end method

.method public final setReportedScreenState(I)V
    .locals 3

    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    .line 2996
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2997
    iput p1, p0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    return-void
.end method

.method public final setScreenState(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2900
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController2;->setScreenState(IZ)Z

    move-result p0

    return p0
.end method

.method public final setScreenState(IZ)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2906
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-ne v3, p1, :cond_1

    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_a

    .line 2909
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2910
    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    .line 2911
    :goto_2
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController2;->mIsSupportedAodMode:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    if-ne p1, v7, :cond_5

    .line 2913
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mSeamlessAodReady:Z

    if-nez v3, :cond_5

    .line 2916
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "setScreenState(): mSeamlessAodReady : false AOD"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnByAodReady:Z

    if-nez p1, :cond_4

    .line 2918
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController2$SeamlessAodReadyListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/aod/AODManagerInternal;->screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    .line 2919
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnByAodReady:Z

    :cond_4
    return v0

    .line 2923
    :cond_5
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mSeamlessAodReady:Z

    .line 2924
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnByAodReady:Z

    :cond_6
    if-eqz v2, :cond_9

    .line 2930
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2931
    iget v3, p0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    if-eq v3, v7, :cond_8

    if-ne v3, v4, :cond_7

    goto :goto_3

    .line 2938
    :cond_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    if-eqz v3, :cond_9

    return v0

    .line 2933
    :cond_8
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController2;->setReportedScreenState(I)V

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->blockScreenOff()V

    .line 2935
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "mWindowManagerPolicy.screenTurningOff()"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v6, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    invoke-interface {v3, v6, v7}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2937
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->unblockScreenOff()V

    :cond_9
    if-nez p2, :cond_a

    .line 2944
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p2

    if-eq p2, p1, :cond_a

    .line 2945
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->readyToUpdateDisplayState()Z

    move-result p2

    if-eqz p2, :cond_a

    const-wide/32 v6, 0x20000

    const-string p2, "ScreenState"

    .line 2946
    invoke-static {v6, v7, p2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string p2, "debug.tracing.screen_state"

    .line 2948
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 2951
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController2;->noteScreenState(I)V

    :cond_a
    if-eqz v2, :cond_b

    .line 2961
    iget p1, p0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2962
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result p1

    if-nez p1, :cond_b

    .line 2963
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController2;->setReportedScreenState(I)V

    .line 2964
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->unblockScreenOn()V

    .line 2965
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurnedOff()"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mIsInTransition:Z

    invoke-interface {p1, p2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    goto :goto_4

    :cond_b
    if-nez v2, :cond_c

    .line 2967
    iget p1, p0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    if-ne p1, v5, :cond_c

    .line 2972
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->unblockScreenOff()V

    .line 2973
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurnedOff()(transitional)"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController2;->mIsInTransition:Z

    invoke-interface {p1, p2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    .line 2975
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController2;->setReportedScreenState(I)V

    :cond_c
    :goto_4
    if-nez v2, :cond_f

    .line 2977
    iget p1, p0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_d

    if-ne p1, v4, :cond_f

    .line 2980
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController2;->setReportedScreenState(I)V

    .line 2981
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_e

    .line 2982
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->blockScreenOn()V

    goto :goto_5

    .line 2984
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->unblockScreenOn()V

    .line 2986
    :goto_5
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurningOn() +"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    invoke-interface {p1, p2, v2}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2988
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurningOn() -"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_f
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    if-nez p0, :cond_10

    move v0, v1

    :cond_10
    return v0
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 3

    .line 2709
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    .line 2710
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2709
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2711
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2713
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updateLastBrightnessSettingChangedTime()V

    return-void
.end method

.method public setTemporaryBrightness(F)V
    .locals 4

    .line 2687
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    .line 2688
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 2687
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2689
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 2693
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updateLastBrightnessSettingChangedTime()V

    :cond_0
    return-void
.end method

.method public setTemporaryBrightnessForSlowChange(FZ)V
    .locals 2

    .line 2701
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    .line 2702
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    .line 2701
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2703
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTestModeEnabled(Z)V
    .locals 0

    .line 4735
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_0

    .line 4736
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->setTestModeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V
    .locals 35

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    .line 1361
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->isAutoBrightnessAvailable()Z

    move-result v1

    iput-boolean v1, v14, Lcom/android/server/display/DisplayPowerController2;->mUseSoftwareAutoBrightnessConfig:Z

    if-nez v1, :cond_0

    return-void

    .line 1369
    :cond_0
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    .line 1370
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getUserLux()F

    move-result v1

    .line 1371
    iget-object v3, v14, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getUserBrightness()F

    move-result v3

    .line 1372
    iget-object v4, v14, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v4, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v3

    move/from16 v27, v1

    goto :goto_0

    :cond_1
    move v3, v2

    move/from16 v27, v3

    :goto_0
    const v1, 0x1110155

    .line 1375
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1377
    iget-object v4, v14, Lcom/android/server/display/DisplayPowerController2;->mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

    iget-object v5, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    const/4 v15, 0x0

    invoke-virtual {v4, v0, v5, v15}, Lcom/android/server/display/DisplayPowerController2$Injector;->getInteractiveModeBrightnessMapper(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    iput-object v4, v14, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-static {v0, v1, v15}, Lcom/android/server/display/BrightnessMappingStrategy;->createForIdleMode(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1384
    :cond_2
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    .line 1386
    instance-of v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 1387
    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    goto :goto_1

    .line 1389
    :cond_3
    sput-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    :goto_1
    const v1, 0x1130006

    .line 1393
    invoke-virtual {v0, v1, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const v1, 0x107006a

    .line 1472
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v4, 0x107006b

    .line 1474
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    const v5, 0x107006c

    .line 1476
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v6, 0x107006d

    .line 1478
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 1480
    new-instance v12, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v12, v1, v4, v5, v6}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    .line 1482
    new-instance v13, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v13, v1, v4, v5, v6}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    .line 1490
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v5, :cond_4

    const v5, 0x107006e

    .line 1491
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v6, 0x107006f

    .line 1493
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    const v7, 0x1070070

    .line 1495
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v8, 0x1070071

    .line 1497
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 1499
    new-instance v10, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v10, v1, v4, v5, v6}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    .line 1501
    new-instance v5, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v5, v1, v4, v7, v8}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    move-object/from16 v30, v5

    move-object/from16 v29, v10

    goto :goto_2

    :cond_4
    move-object/from16 v29, v15

    move-object/from16 v30, v29

    .line 1506
    :goto_2
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1507
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLightDebounce()J

    move-result-wide v16

    .line 1508
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1509
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessDarkeningLightDebounce()J

    move-result-wide v31

    const v1, 0x1110036

    .line 1510
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    const v1, 0x10e00b4

    .line 1513
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v1, 0x10e0033

    .line 1515
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const/16 v0, 0x32

    if-le v0, v10, :cond_5

    .line 1522
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v11, 0x32

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->loadAmbientLightSensor()V

    .line 1530
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_6

    iget v1, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    if-nez v1, :cond_6

    .line 1531
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker;->setLightSensor(Landroid/hardware/Sensor;)V

    .line 1534
    :cond_6
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    .line 1535
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    :cond_7
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_9

    .line 1539
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToFloatScale(F)F

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v28, v0

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v28, v2

    .line 1544
    :goto_4
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController2;->mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/display/DisplayPowerController2;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, v14, Lcom/android/server/display/DisplayPowerController2;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v5, v14, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    move-object/from16 v21, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    move-object/from16 v22, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    move-object/from16 v23, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v24, v1

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1553
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonShort()I

    move-result v25

    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1554
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonLong()I

    move-result v26

    move-object/from16 v1, p0

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-wide/from16 v12, v16

    move-wide/from16 v14, v31

    move/from16 v16, v19

    move-object/from16 v17, v33

    move-object/from16 v19, v34

    .line 1544
    invoke-virtual/range {v0 .. v30}, Lcom/android/server/display/DisplayPowerController2$Injector;->getAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessMappingStrategy;IIFFLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1556
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v2, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1559
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1560
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1561
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController2;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1564
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_a

    .line 1565
    invoke-virtual {v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    const/4 v0, 0x0

    .line 1566
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1568
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->loadScreenOffBrightnessSensor()V

    .line 1569
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController2;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensorValueToLux()[I

    move-result-object v7

    .line 1570
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_c

    if-eqz v7, :cond_c

    .line 1571
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController2;->mInjector:Lcom/android/server/display/DisplayPowerController2$Injector;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController2;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;-><init>()V

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1572
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/DisplayPowerController2$Injector;->getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    goto :goto_5

    :cond_b
    move-object v1, v14

    .line 1581
    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController2;->mUseSoftwareAutoBrightnessConfig:Z

    :cond_c
    :goto_5
    return-void
.end method

.method public final shouldEnableHdrRampRateCase()Z
    .locals 2

    .line 2647
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->isModifierChanged(Lcom/android/server/display/brightness/BrightnessReason;I)Z

    move-result p0

    return p0
.end method

.method public final shouldEnableMoreFastRampRateCase()Z
    .locals 4

    .line 2638
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2639
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget v2, v0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v2, v2, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x6

    .line 2642
    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->isReasonChanged(Lcom/android/server/display/brightness/BrightnessReason;I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public stop()V
    .locals 5

    .line 1195
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1196
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->clearDisplayBrightnessFollowersLocked()V

    const/4 v1, 0x1

    .line 1198
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController2;->mStopped:Z

    .line 1199
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1200
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController2;->mHandler:Lcom/android/server/display/DisplayPowerController2$DisplayControllerHandler;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    invoke-interface {v3}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1206
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_0

    .line 1207
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->stop()V

    .line 1212
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController2$SettingsObserver;

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unblockScreenOff()V
    .locals 4

    .line 2891
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2892
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOffUnblocker;

    .line 2893
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2894
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Screen off blocked"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    .line 2895
    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final unblockScreenOn()V
    .locals 4

    .line 2872
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2873
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    .line 2874
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController2;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2875
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Screen on blocked"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    .line 2876
    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2877
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWmsEnd()V

    :cond_0
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .line 2654
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->sendUpdatePowerState()V

    return-void
.end method

.method public final updateForceUpdateAbJob()V
    .locals 0

    .line 0
    return-void
.end method

.method public final updateLastBrightnessSettingChangedTime()V
    .locals 2

    .line 4671
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/DisplayPowerController2;->sLastScreenBrightnessSettingChangedTime:J

    return-void
.end method

.method public final updatePowerState()V
    .locals 3

    const-string v0, "DisplayPowerController#updatePowerState"

    const-wide/32 v1, 0x20000

    .line 1715
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController2;->updatePowerStateInternal()V

    .line 1718
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final updatePowerStateInternal()V
    .locals 43

    move-object/from16 v0, p0

    .line 1726
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1727
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    .line 1734
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1735
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mStopped:Z

    if-eqz v2, :cond_0

    .line 1736
    monitor-exit v1

    return-void

    :cond_0
    const/4 v7, 0x0

    .line 1738
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingUpdatePowerStateLocked:Z

    .line 1739
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v2, :cond_1

    .line 1740
    monitor-exit v1

    return-void

    .line 1743
    :cond_1
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v3, :cond_2

    .line 1744
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1745
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1748
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceSlowChangeLocked:Z

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    .line 1749
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceSlowChangeLocked:Z

    .line 1753
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1754
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1757
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestChangedLocked:Z

    move v10, v8

    move v3, v9

    goto :goto_0

    .line 1762
    :cond_2
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestChangedLocked:Z

    if-eqz v4, :cond_3

    .line 1763
    iget v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1764
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1765
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1768
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceSlowChangeLocked:Z

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    .line 1769
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingForceSlowChangeLocked:Z

    .line 1773
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingEarlyWakeUpRequestLocked:Z

    or-int/2addr v2, v7

    .line 1774
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1777
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestChangedLocked:Z

    .line 1778
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayReadyLocked:Z

    move v10, v4

    move v3, v7

    goto :goto_0

    .line 1780
    :cond_3
    iget v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move v10, v4

    move v2, v7

    move v3, v2

    .line 1783
    :goto_0
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayReadyLocked:Z

    if-nez v4, :cond_4

    move v11, v9

    goto :goto_1

    :cond_4
    move v11, v7

    .line 1785
    :goto_1
    iget v4, v0, Lcom/android/server/display/DisplayPowerController2;->mActualDisplayState:I

    .line 1787
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v5

    .line 1788
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1790
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v0, Lcom/android/server/display/DisplayPowerController2;->mIsEnabled:Z

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController2;->mIsInTransition:Z

    .line 1791
    invoke-virtual {v1, v6, v12, v13}, Lcom/android/server/display/state/DisplayStateController;->updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)I

    move-result v1

    .line 1793
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    const/4 v12, -0x1

    if-eqz v6, :cond_7

    .line 1794
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 1795
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v13

    if-eqz v13, :cond_6

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController2;->mIsEnabled:Z

    if-eqz v13, :cond_6

    if-eq v1, v9, :cond_5

    if-ne v1, v8, :cond_6

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1797
    invoke-virtual {v13}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    iget v13, v0, Lcom/android/server/display/DisplayPowerController2;->mLeadDisplayId:I

    if-ne v13, v12, :cond_6

    move v13, v9

    goto :goto_2

    :cond_6
    move v13, v7

    .line 1795
    :goto_2
    invoke-virtual {v6, v13}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_7
    if-eqz v3, :cond_9

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->readyToUpdateDisplayState()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v7

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController2;->initialize(I)V

    .line 1807
    :cond_9
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeupEnabled:Z

    if-eqz v3, :cond_a

    .line 1808
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;

    if-eqz v3, :cond_a

    .line 1809
    invoke-virtual {v3, v2, v4}, Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;->update(ZI)V

    .line 1815
    :cond_a
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    if-eq v2, v3, :cond_d

    .line 1817
    iput v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    if-nez v3, :cond_b

    move v4, v9

    goto :goto_4

    :cond_b
    move v4, v7

    .line 1818
    :goto_4
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mNeedPrepareColorFade:Z

    if-nez v3, :cond_c

    if-ne v2, v12, :cond_c

    move v2, v9

    goto :goto_5

    :cond_c
    move v2, v7

    .line 1819
    :goto_5
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingTransitionOffInDualCase:Z

    .line 1822
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v2, :cond_d

    .line 1823
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController2;->noteScreenState(I)V

    .line 1827
    :cond_d
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingTransitionOffInDualCase:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mIsInTransition:Z

    if-eqz v2, :cond_e

    .line 1828
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    invoke-virtual {v2, v9}, Lcom/android/server/display/state/DisplayStateController;->setPerformScreenOffTransition(Z)V

    .line 1829
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingTransitionOffInDualCase:Z

    .line 1833
    :cond_e
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    .line 1838
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    invoke-virtual {v3}, Lcom/android/server/display/state/DisplayStateController;->shouldPerformScreenOffTransition()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/DisplayPowerController2;->animateScreenStateChange(IZ)V

    .line 1839
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v6

    .line 1841
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1842
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateUserSetScreenBrightness()Z

    move-result v24

    .line 1844
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1845
    invoke-virtual {v1, v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v25

    .line 1846
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v1

    .line 1847
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v3

    .line 1848
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    const/4 v4, 0x4

    if-eq v6, v8, :cond_10

    if-ne v6, v4, :cond_f

    goto :goto_6

    :cond_f
    move v13, v7

    goto :goto_7

    :cond_10
    :goto_6
    move v13, v9

    .line 1853
    :goto_7
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v14, v9, :cond_11

    move v15, v9

    goto :goto_8

    :cond_11
    move v15, v7

    :goto_8
    if-ne v10, v9, :cond_12

    if-ne v14, v8, :cond_12

    .line 1857
    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v14

    if-nez v14, :cond_13

    .line 1858
    :cond_12
    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v6}, Landroid/view/Display;->isOnState(I)Z

    move-result v14

    if-eqz v14, :cond_14

    :cond_13
    move/from16 v26, v9

    goto :goto_9

    :cond_14
    move/from16 v26, v7

    .line 1860
    :goto_9
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController2;->mIsSupportedAodMode:Z

    const/16 v12, 0xb

    if-eqz v14, :cond_16

    .line 1861
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_16

    if-nez v13, :cond_15

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnByAodReady:Z

    if-nez v13, :cond_15

    if-eqz v15, :cond_16

    :cond_15
    iget v13, v0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    .line 1863
    invoke-static {v13}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 1864
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastOriginalTarget:F

    .line 1866
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v3, v12, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(IF)V

    move v3, v1

    .line 1874
    :cond_16
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController2;->mResetBrightnessConfiguration:Z

    if-eqz v13, :cond_18

    .line 1876
    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v13, :cond_17

    .line 1877
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->clearAdaptiveBrightnessLongtermModelBuilder()V

    .line 1878
    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayPowerController2;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    .line 1879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->onShortTermReset()V

    .line 1884
    :cond_17
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController2;->mResetBrightnessConfiguration:Z

    .line 1885
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mResetBrightnessConfiguration:Z

    move/from16 v27, v13

    goto :goto_a

    :cond_18
    move/from16 v27, v7

    .line 1891
    :goto_a
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 1892
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isShortTermModelActive()Z

    move-result v15

    .line 1893
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1894
    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v16

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1895
    invoke-virtual {v14}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v17

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1896
    invoke-virtual {v8}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getLastUserSetScreenBrightness()F

    move-result v19

    .line 1898
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->isLightSensorCovered()Z

    move-result v21

    iget v8, v0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    move/from16 v18, v14

    move v14, v6

    move/from16 v28, v15

    move/from16 v15, v16

    move/from16 v16, v1

    move/from16 v20, v24

    move/from16 v22, v27

    move/from16 v23, v8

    .line 1893
    invoke-virtual/range {v13 .. v23}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZFIIFZZZI)V

    .line 1903
    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController2;->mAutoBrightnessEnabled:Z

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 1904
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v13

    if-eq v8, v13, :cond_1b

    .line 1905
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController2;->mAutoBrightnessEnabled:Z

    .line 1906
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController2;->mDozing:Z

    if-nez v8, :cond_19

    if-ne v10, v9, :cond_1b

    .line 1908
    :cond_19
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mInitialAutoBrightnessUpdated:Z

    .line 1909
    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1910
    :cond_1a
    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController2;->mWaitingAutoBrightnessFromDoze:Z

    .line 1918
    :cond_1b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 1919
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentChanged()Z

    move-result v2

    if-nez v2, :cond_1c

    if-eqz v24, :cond_1d

    :cond_1c
    move v8, v9

    goto :goto_b

    :cond_1d
    move v8, v7

    .line 1922
    :goto_b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1924
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 1923
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v13

    if-nez v13, :cond_1f

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeupEnabled:Z

    if-eqz v13, :cond_1e

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;

    .line 1924
    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerController2$EarlyWakeUpManager;->isEarlyLightSensorEnabled()Z

    move-result v13

    if-eqz v13, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v13, 0x2

    goto :goto_d

    :cond_1f
    :goto_c
    move v13, v9

    .line 1922
    :goto_d
    invoke-virtual {v2, v13}, Lcom/android/server/display/HighBrightnessModeController;->setAutoBrightnessEnabled(I)V

    .line 1930
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v2

    .line 1939
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_28

    .line 1940
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v13

    if-eqz v13, :cond_29

    .line 1941
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v1

    .line 1943
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-nez v3, :cond_22

    cmpl-float v3, v1, v15

    if-nez v3, :cond_20

    goto :goto_e

    .line 1986
    :cond_20
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastOriginalTarget:F

    .line 1988
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v3, v12, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(IF)V

    .line 1992
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDozing:Z

    if-eqz v3, :cond_21

    .line 1993
    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController2;->mAwakenFromDozingInAutoBrightness:Z

    :cond_21
    move v3, v1

    goto/16 :goto_13

    .line 1945
    :cond_22
    :goto_e
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1946
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->getRawAutomaticScreenBrightness()F

    move-result v3

    .line 1947
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightness(F)F

    move-result v1

    .line 1949
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v13}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v13

    .line 1950
    iget v12, v0, Lcom/android/server/display/DisplayPowerController2;->mLastAutomaticScreenBrightness:F

    cmpl-float v12, v1, v12

    if-eqz v12, :cond_23

    .line 1952
    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastAutomaticScreenBrightness:F

    move v12, v9

    goto :goto_f

    :cond_23
    move v12, v7

    .line 1957
    :goto_f
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->hasAppliedAutoBrightness()Z

    move-result v15

    if-eqz v15, :cond_24

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 1958
    invoke-virtual {v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentChanged()Z

    move-result v15

    if-nez v15, :cond_24

    if-eqz v12, :cond_24

    move v12, v9

    goto :goto_10

    :cond_24
    move v12, v7

    :goto_10
    if-eqz v12, :cond_26

    .line 1963
    sget-boolean v15, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-nez v15, :cond_25

    sget-boolean v15, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    if-eqz v15, :cond_26

    .line 1966
    :cond_25
    invoke-virtual {v0, v1, v13}, Lcom/android/server/display/DisplayPowerController2;->getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController2$BrightnessDynamicRampRatePair;

    move-result-object v15

    .line 1967
    iget v14, v15, Lcom/android/server/display/DisplayPowerController2$BrightnessDynamicRampRatePair;->brightnessRampRateDynamic:F

    .line 1968
    iget v15, v15, Lcom/android/server/display/DisplayPowerController2$BrightnessDynamicRampRatePair;->brightnessRampRateDynamicAtHbm:F

    goto :goto_11

    :cond_26
    const/high16 v14, 0x7fc00000    # Float.NaN

    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 1973
    :goto_11
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 1974
    invoke-virtual {v9}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentReasonsFlags()I

    move-result v9

    .line 1976
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v21

    cmpl-float v21, v2, v21

    if-eqz v21, :cond_27

    const/16 v21, 0x1

    goto :goto_12

    :cond_27
    move/from16 v21, v7

    .line 1977
    :goto_12
    iput v13, v0, Lcom/android/server/display/DisplayPowerController2;->mLastAmbientLux:F

    .line 1978
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mAwakenFromDozingInAutoBrightness:Z

    .line 1979
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v13, v4, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(IF)V

    .line 1981
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v13, :cond_2a

    .line 1982
    invoke-virtual {v13, v7}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    goto :goto_14

    .line 2004
    :cond_28
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightnessForFinal(F)F

    move-result v1

    :cond_29
    :goto_13
    move v9, v7

    move v12, v9

    move/from16 v21, v12

    const/high16 v14, 0x7fc00000    # Float.NaN

    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 2008
    :cond_2a
    :goto_14
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 2009
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v13

    if-eqz v13, :cond_2b

    iget v13, v0, Lcom/android/server/display/DisplayPowerController2;->mDualScreenPolicy:I

    .line 2010
    invoke-static {v13}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v13

    if-nez v13, :cond_2b

    .line 2011
    iget v3, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDozeConfig:F

    .line 2012
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightness(F)F

    move-result v1

    .line 2013
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v7, 0x3

    invoke-virtual {v13, v7, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(IF)V

    .line 2019
    :cond_2b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v7, :cond_2e

    .line 2022
    invoke-virtual {v7}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v1

    .line 2024
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2025
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightness(F)F

    move-result v3

    .line 2026
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v7}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v7

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_2c

    const/4 v7, 0x1

    goto :goto_15

    :cond_2c
    const/4 v7, 0x0

    .line 2028
    :goto_15
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v4, 0x9

    invoke-virtual {v13, v4, v3}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(IF)V

    move/from16 v21, v7

    move/from16 v42, v3

    move v3, v1

    move/from16 v1, v42

    goto :goto_16

    :cond_2d
    move v3, v1

    .line 2035
    :cond_2e
    :goto_16
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/16 v7, 0x2000

    if-eqz v4, :cond_30

    .line 2037
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightness(F)F

    move-result v1

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2f

    const/16 v21, 0x1

    .line 2044
    :cond_2f
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(IF)V

    .line 2049
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    if-eqz v3, :cond_31

    iget v3, v0, Lcom/android/server/display/DisplayPowerController2;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 2050
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2051
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 2052
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v3, v7, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    goto :goto_17

    :cond_30
    move v2, v3

    .line 2062
    :cond_31
    :goto_17
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBatteryLevelCritical:Z

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eq v3, v4, :cond_33

    if-eqz v4, :cond_32

    .line 2064
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mClock:Lcom/android/server/display/DisplayPowerController2$Clock;

    invoke-interface {v3}, Lcom/android/server/display/DisplayPowerController2$Clock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBatteryLevelCriticalTime:J

    .line 2066
    :cond_32
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBatteryLevelCritical:Z

    .line 2069
    :cond_33
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mIsDisplayInternal:Z

    if-eqz v3, :cond_3c

    const/4 v3, 0x2

    if-ne v6, v3, :cond_3c

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x3

    if-ne v4, v13, :cond_3c

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz v4, :cond_34

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-eqz v4, :cond_3c

    .line 2072
    :cond_34
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBatteryLevelCritical:Z

    move v13, v8

    if-eqz v4, :cond_36

    .line 2073
    iget-wide v7, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBatteryLevelCriticalTime:J

    sget-wide v29, Lcom/android/server/display/DisplayPowerController2;->sLastScreenBrightnessSettingChangedTime:J

    cmp-long v7, v7, v29

    if-lez v7, :cond_36

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez v3, :cond_36

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 2075
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_36

    .line 2077
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v3

    if-eqz v3, :cond_36

    :cond_35
    const/4 v3, 0x1

    goto :goto_18

    :cond_36
    const/4 v3, 0x0

    :goto_18
    if-eqz v3, :cond_38

    .line 2082
    iget-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    if-nez v7, :cond_38

    const/4 v7, 0x1

    .line 2083
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    .line 2084
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget v3, v3, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 2085
    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastScreenBrightnessSettingBeforeForceDim:F

    goto :goto_19

    .line 2087
    :cond_37
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2088
    invoke-virtual {v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v3

    iput v3, v0, Lcom/android/server/display/DisplayPowerController2;->mLastScreenBrightnessSettingBeforeForceDim:F

    :goto_19
    if-nez v26, :cond_3a

    .line 2090
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v3, :cond_3a

    :goto_1a
    const/4 v3, 0x1

    goto :goto_1b

    :cond_38
    if-nez v3, :cond_3a

    .line 2091
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    .line 2092
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    .line 2093
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v3

    if-nez v3, :cond_39

    .line 2094
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 2095
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    const/16 v21, 0x1

    :cond_39
    if-nez v26, :cond_3a

    .line 2099
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v3, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v3, 0x0

    .line 2102
    :goto_1b
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedForceDimming:Z

    if-eqz v4, :cond_3b

    const/4 v4, 0x0

    cmpl-float v7, v1, v4

    if-lez v7, :cond_3b

    .line 2104
    iget v7, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessMinimumDimAmount:F

    sub-float/2addr v1, v7

    iget v7, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDimConfig:F

    .line 2105
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2104
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2107
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v7, 0x1000

    invoke-virtual {v4, v7, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move v7, v1

    move v8, v3

    const/16 v21, 0x1

    goto :goto_1c

    :cond_3b
    move v7, v1

    move v8, v3

    goto :goto_1c

    :cond_3c
    move v13, v8

    move v7, v1

    const/4 v8, 0x0

    .line 2123
    :goto_1c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessThrottler;->isThrottled()Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_3e

    .line 2124
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setThermalMax(F)V

    .line 2125
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2126
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 2128
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedThrottling:Z

    if-nez v3, :cond_3d

    const/4 v3, 0x1

    const/4 v12, 0x0

    goto :goto_1d

    :cond_3d
    const/4 v3, 0x1

    .line 2133
    :goto_1d
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedThrottling:Z

    goto :goto_1e

    .line 2134
    :cond_3e
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedThrottling:Z

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    .line 2135
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedThrottling:Z

    :cond_3f
    move v1, v7

    .line 2138
    :goto_1e
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v3, :cond_40

    const/4 v3, 0x0

    goto :goto_1f

    .line 2139
    :cond_40
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v3

    :goto_1f
    move/from16 v30, v12

    const/4 v4, 0x0

    .line 2140
    :goto_20
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v4, v12, :cond_41

    .line 2141
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/display/DisplayPowerControllerInterface;

    move/from16 v31, v15

    .line 2142
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2143
    invoke-virtual {v15, v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v15

    .line 2142
    invoke-interface {v12, v2, v15, v3}, Lcom/android/server/display/DisplayPowerControllerInterface;->setBrightnessToFollow(FFF)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v31

    goto :goto_20

    :cond_41
    move/from16 v31, v15

    if-eqz v21, :cond_42

    .line 2147
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_43

    .line 2157
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateScreenBrightnessSetting(F)Z

    move-result v2

    move v12, v2

    goto :goto_21

    :cond_42
    const/4 v3, 0x2

    :cond_43
    const/4 v12, 0x0

    .line 2164
    :goto_21
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v2, v3, :cond_46

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_44

    .line 2166
    iget v3, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessMinimumDimAmount:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessDimConfig:F

    .line 2167
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2166
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2170
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    goto :goto_22

    :cond_44
    const/4 v3, 0x1

    .line 2173
    :goto_22
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedDimming:Z

    if-nez v2, :cond_45

    const/16 v30, 0x0

    .line 2176
    :cond_45
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedDimming:Z

    goto :goto_23

    .line 2177
    :cond_46
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedDimming:Z

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    .line 2179
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedDimming:Z

    const/16 v30, 0x0

    .line 2183
    :cond_47
    :goto_23
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mLastOriginalTarget:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_48

    .line 2184
    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastOriginalTarget:F

    .line 2190
    :cond_48
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4b

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAwakenFromDozingInAutoBrightness:Z

    if-nez v2, :cond_4b

    .line 2191
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    if-nez v2, :cond_4b

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_49

    .line 2193
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 2194
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    .line 2196
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2197
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 2200
    :cond_49
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedLowPower:Z

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    const/16 v30, 0x0

    goto :goto_24

    :cond_4a
    const/4 v2, 0x1

    .line 2203
    :goto_24
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedLowPower:Z

    goto :goto_25

    .line 2204
    :cond_4b
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedLowPower:Z

    if-eqz v2, :cond_4c

    const/4 v2, 0x0

    .line 2206
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedLowPower:Z

    const/16 v30, 0x0

    .line 2209
    :cond_4c
    :goto_25
    invoke-virtual {v0, v1, v6}, Lcom/android/server/display/DisplayPowerController2;->getFinalBrightness(FI)F

    move-result v15

    .line 2212
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    if-eqz v1, :cond_4d

    .line 2214
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const-string v2, "ForceSlowChange is requested, set slowChange as true"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x1

    .line 2223
    :cond_4d
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2224
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result v2

    .line 2223
    invoke-virtual {v1, v15, v7, v2}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    .line 2229
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2230
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_4f

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 2232
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_26

    :cond_4e
    const/16 v21, 0x0

    goto :goto_27

    :cond_4f
    :goto_26
    const/16 v21, 0x1

    .line 2233
    :goto_27
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOff:Z

    if-nez v1, :cond_82

    .line 2234
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v1, :cond_53

    const/4 v1, 0x2

    if-ne v6, v1, :cond_52

    .line 2236
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    if-nez v1, :cond_50

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mDozing:Z

    if-eqz v4, :cond_50

    .line 2237
    iput v15, v0, Lcom/android/server/display/DisplayPowerController2;->mInitialAutoBrightness:F

    const/4 v4, 0x1

    .line 2238
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    goto :goto_28

    :cond_50
    const/4 v4, 0x1

    if-ne v1, v4, :cond_51

    .line 2239
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_51

    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mInitialAutoBrightness:F

    .line 2241
    invoke-static {v15, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_51

    const/4 v1, 0x2

    .line 2243
    iput v1, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    goto :goto_29

    :cond_51
    const/4 v1, 0x2

    .line 2244
    iget v4, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    if-ne v4, v1, :cond_54

    const/4 v4, 0x0

    .line 2245
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    goto :goto_29

    :cond_52
    const/4 v4, 0x0

    .line 2248
    iput v4, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    goto :goto_29

    :cond_53
    :goto_28
    const/4 v1, 0x2

    :cond_54
    :goto_29
    if-ne v6, v1, :cond_55

    .line 2252
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mSkipRampState:I

    if-nez v1, :cond_56

    :cond_55
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2254
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->shouldSkipRampBecauseOfProximityChangeToNegative()Z

    move-result v1

    if-eqz v1, :cond_57

    :cond_56
    const/4 v1, 0x1

    goto :goto_2a

    :cond_57
    const/4 v1, 0x0

    .line 2257
    :goto_2a
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 2258
    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_59

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mInitialAutoBrightnessUpdated:Z

    if-eqz v4, :cond_58

    if-eqz v27, :cond_59

    :cond_58
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController2;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v4, :cond_59

    const/4 v4, 0x1

    goto :goto_2b

    :cond_59
    const/4 v4, 0x0

    .line 2261
    :goto_2b
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v27

    if-eqz v27, :cond_5a

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v2, v2, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5a

    const/4 v2, 0x1

    goto :goto_2c

    :cond_5a
    const/4 v2, 0x0

    .line 2263
    :goto_2c
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    .line 2264
    sget-boolean v17, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

    if-nez v17, :cond_5b

    if-eqz v3, :cond_5b

    const/16 v17, 0x1

    goto :goto_2d

    :cond_5b
    const/16 v17, 0x0

    .line 2271
    :goto_2d
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    move-result v33

    if-eqz v33, :cond_5c

    move/from16 v33, v6

    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v6, :cond_5d

    move/from16 v34, v10

    const/4 v6, 0x1

    goto :goto_2e

    :cond_5c
    move/from16 v33, v6

    :cond_5d
    move/from16 v34, v10

    const/4 v6, 0x0

    .line 2274
    :goto_2e
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    if-eqz v10, :cond_5e

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2275
    invoke-virtual {v10}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v10

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v32

    if-nez v10, :cond_5e

    move/from16 v32, v11

    const/4 v10, 0x1

    goto :goto_2f

    :cond_5e
    move/from16 v32, v11

    const/4 v10, 0x0

    .line 2286
    :goto_2f
    invoke-virtual {v0, v15}, Lcom/android/server/display/DisplayPowerController2;->clampScreenBrightnessForFinal(F)F

    move-result v11

    move/from16 v35, v7

    .line 2302
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v7}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v7

    move/from16 v36, v9

    const/4 v9, 0x2

    if-ne v7, v9, :cond_64

    .line 2303
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v7}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v7

    and-int/2addr v7, v9

    if-eqz v7, :cond_5f

    const/4 v7, 0x1

    goto :goto_30

    :cond_5f
    const/4 v7, 0x0

    .line 2305
    :goto_30
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v9}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v9

    if-eqz v9, :cond_61

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v9, :cond_60

    .line 2307
    invoke-virtual {v9}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v9

    if-eqz v9, :cond_60

    goto :goto_31

    :cond_60
    const/4 v9, 0x0

    goto :goto_32

    :cond_61
    :goto_31
    const/4 v9, 0x1

    :goto_32
    if-nez v7, :cond_63

    if-eqz v9, :cond_63

    .line 2313
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v7}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v7

    .line 2314
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v37, v12

    const/4 v12, 0x4

    invoke-virtual {v9, v12, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    .line 2318
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v12, v7, v9

    if-ltz v12, :cond_62

    .line 2320
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v12, 0x20

    invoke-virtual {v7, v12, v9}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(IF)V

    move v7, v9

    :cond_62
    move/from16 v23, v13

    move/from16 v38, v15

    goto :goto_34

    :cond_63
    move/from16 v37, v12

    .line 2326
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    move/from16 v23, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v38, v15

    const-string/jumbo v15, "pending hdr: low power: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " brightness ready: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_64
    move/from16 v37, v12

    move/from16 v23, v13

    move/from16 v38, v15

    :goto_33
    move v7, v11

    .line 2332
    :goto_34
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v9}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v9

    .line 2333
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v12

    .line 2339
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->shouldEnableMoreFastRampRateCase()Z

    move-result v13

    .line 2340
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->shouldEnableHdrRampRateCase()Z

    move-result v15

    move-object/from16 v39, v5

    .line 2341
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2342
    invoke-virtual {v5}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v5

    move/from16 v40, v15

    const/16 v15, 0xa

    if-ne v5, v15, :cond_65

    const/4 v5, 0x1

    goto :goto_35

    :cond_65
    const/4 v5, 0x0

    .line 2343
    :goto_35
    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController2;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v15, :cond_67

    if-eqz v26, :cond_66

    goto :goto_36

    :cond_66
    move/from16 v26, v5

    const/4 v15, 0x0

    goto :goto_37

    :cond_67
    :goto_36
    move/from16 v26, v5

    const/4 v15, 0x1

    .line 2348
    :goto_37
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2349
    invoke-virtual {v5}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getCurrentValue()F

    move-result v5

    .line 2348
    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    .line 2350
    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v41

    sub-int v5, v5, v41

    .line 2348
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move/from16 v41, v15

    const/4 v15, 0x1

    if-gt v5, v15, :cond_68

    .line 2351
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2352
    invoke-virtual {v5}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_68

    const/4 v5, 0x1

    goto :goto_38

    :cond_68
    const/4 v5, 0x0

    .line 2355
    :goto_38
    invoke-static {v7}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v15

    if-eqz v15, :cond_7b

    cmpl-float v9, v7, v9

    if-nez v9, :cond_69

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_7b

    :cond_69
    if-nez v1, :cond_7a

    if-nez v6, :cond_7a

    if-eqz v10, :cond_7a

    if-eqz v21, :cond_6a

    .line 2358
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    if-eqz v1, :cond_7a

    :cond_6a
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mPassRampAnimation:Z

    if-nez v1, :cond_7a

    if-nez v4, :cond_7a

    if-nez v2, :cond_7a

    if-nez v17, :cond_7a

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2367
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6b

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2368
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->isStartBrightnessChanged(Lcom/android/server/display/brightness/BrightnessReason;)Z

    move-result v1

    if-eqz v1, :cond_6b

    if-nez v13, :cond_6b

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAppliedDimming:Z

    if-eqz v1, :cond_7a

    :cond_6b
    if-nez v8, :cond_7a

    if-eqz v5, :cond_6c

    goto/16 :goto_40

    :cond_6c
    if-lez v9, :cond_6d

    const/4 v1, 0x1

    goto :goto_39

    :cond_6d
    const/4 v1, 0x0

    :goto_39
    if-eqz v1, :cond_6e

    if-eqz v30, :cond_6e

    .line 2387
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateSlowIncrease:F

    :goto_3a
    const/high16 v15, 0x7fc00000    # Float.NaN

    goto :goto_3c

    :cond_6e
    if-eqz v1, :cond_6f

    if-nez v30, :cond_6f

    .line 2389
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateFastIncrease:F

    goto :goto_3a

    :cond_6f
    if-nez v1, :cond_71

    if-eqz v30, :cond_71

    .line 2393
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_3b

    .line 2395
    :cond_70
    iget v14, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateSlowDecrease:F

    :goto_3b
    move v2, v14

    move/from16 v15, v31

    goto :goto_3c

    .line 2399
    :cond_71
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateFastDecrease:F

    goto :goto_3a

    :goto_3c
    if-eqz v13, :cond_72

    .line 2404
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mMoreFastRampRate:F

    const/high16 v15, 0x7fc00000    # Float.NaN

    :cond_72
    if-eqz v3, :cond_73

    const v2, 0x3eb33333    # 0.35f

    :cond_73
    if-eqz v41, :cond_75

    if-eqz v1, :cond_74

    const/4 v2, 0x0

    goto :goto_3d

    .line 2414
    :cond_74
    sget v2, Lcom/android/server/display/DisplayPowerController2;->RATE_FROM_DOZE_TO_ON:F

    :cond_75
    :goto_3d
    if-eqz v40, :cond_77

    if-eqz v1, :cond_76

    .line 2419
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateHdrIncrease:F

    goto :goto_3e

    .line 2421
    :cond_76
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessRampRateHdrDecrease:F

    :cond_77
    :goto_3e
    if-eqz v26, :cond_78

    .line 2425
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mFollowerRampSpeed:F

    .line 2426
    iget v2, v0, Lcom/android/server/display/DisplayPowerController2;->mFollowerRampSpeedAtHbm:F

    move v15, v1

    goto :goto_3f

    :cond_78
    move/from16 v42, v15

    move v15, v2

    move/from16 v2, v42

    .line 2430
    :goto_3f
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getTarget()F

    move-result v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_79

    .line 2431
    invoke-virtual {v0, v7, v11, v15, v2}, Lcom/android/server/display/DisplayPowerController2;->animateScreenBrightness(FFFF)V

    :cond_79
    move v9, v2

    goto :goto_41

    :cond_7a
    :goto_40
    const/4 v1, 0x0

    .line 2378
    invoke-virtual {v0, v7, v11, v1, v1}, Lcom/android/server/display/DisplayPowerController2;->animateScreenBrightness(FFFF)V

    move v9, v1

    move v15, v9

    goto :goto_41

    :cond_7b
    const/4 v1, 0x0

    move v15, v1

    const/high16 v9, 0x7fc00000    # Float.NaN

    :goto_41
    const/4 v1, 0x0

    .line 2438
    :goto_42
    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7c

    move-object/from16 v2, v39

    .line 2439
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 2440
    invoke-interface {v3, v15, v9}, Lcom/android/server/display/DisplayPowerControllerInterface;->setRampSpeedToFollower(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 2443
    :cond_7c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_7d

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    .line 2444
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mForceSlowChange:Z

    .line 2448
    :cond_7d
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 2449
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v5

    move-object/from16 v1, p0

    const/16 v10, 0x20

    move/from16 v2, v38

    move/from16 v3, v23

    const/16 v11, 0x8

    const/4 v12, 0x7

    move/from16 v4, v28

    move/from16 v13, v33

    move/from16 v6, v21

    .line 2448
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController2;->notifyBrightnessTrackerChanged(FZZZZ)V

    .line 2453
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->hasAppliedAutoBrightness()Z

    move-result v1

    if-nez v1, :cond_7e

    if-eqz v8, :cond_7f

    :cond_7e
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mInitialAutoBrightnessUpdated:Z

    if-nez v1, :cond_7f

    const/4 v1, 0x1

    .line 2455
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mInitialAutoBrightnessUpdated:Z

    .line 2456
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mWaitingAutoBrightnessFromDoze:Z

    if-eqz v1, :cond_7f

    const/4 v1, 0x0

    .line 2457
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mWaitingAutoBrightnessFromDoze:Z

    :cond_7f
    if-eqz v37, :cond_81

    if-nez v23, :cond_81

    .line 2461
    iget v1, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    if-eqz v1, :cond_80

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mIsCoverDisplay:Z

    if-eqz v1, :cond_81

    .line 2464
    :cond_80
    invoke-virtual {v0, v15, v9, v7}, Lcom/android/server/display/DisplayPowerController2;->putAutoBrightnessTransitionTime(FFF)V

    .line 2470
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->getScreenBrightnessSetting()F

    move-result v1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/display/DisplayPowerController2;->saveBrightnessInfo(FF)Z

    move-result v1

    goto :goto_43

    :cond_82
    move v12, v4

    move v13, v6

    move/from16 v35, v7

    move/from16 v36, v9

    move/from16 v34, v10

    move/from16 v32, v11

    move/from16 v38, v15

    const/16 v10, 0x20

    const/16 v11, 0x8

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->getScreenBrightnessSetting()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController2;->saveBrightnessInfo(F)Z

    move-result v1

    :goto_43
    if-eqz v1, :cond_83

    if-nez v21, :cond_83

    .line 2477
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->postBrightnessChangeRunnable()V

    .line 2481
    :cond_83
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    if-eqz v36, :cond_84

    goto :goto_45

    .line 2486
    :cond_84
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_85

    if-eqz v24, :cond_85

    .line 2488
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v38

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] manual adjustment."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_85
    move/from16 v3, v38

    :goto_44
    move/from16 v7, v36

    goto :goto_46

    :cond_86
    :goto_45
    move/from16 v3, v38

    .line 2482
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brightness ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] reason changing to: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v7, v36

    .line 2483
    invoke-virtual {v4, v7}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', previous reason: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2482
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 2495
    :goto_46
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/display/brightness/BrightnessEvent;->setTime(J)V

    .line 2496
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setBrightness(F)V

    .line 2497
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayId(Ljava/lang/String;)V

    .line 2498
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setReason(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 2499
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMax(F)V

    .line 2500
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMode(I)V

    .line 2501
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 2502
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mIsRbcActive:Z

    or-int/2addr v2, v3

    .line 2503
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v3, :cond_87

    goto :goto_47

    :cond_87
    const/4 v10, 0x0

    :goto_47
    or-int/2addr v2, v10

    .line 2501
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 2504
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_88

    .line 2505
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsStrength()I

    move-result v2

    goto :goto_48

    :cond_88
    const/4 v2, -0x1

    .line 2504
    :goto_48
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setRbcStrength(I)V

    .line 2506
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPowerFactor(F)V

    .line 2507
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    move/from16 v2, v28

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setWasShortTermModelActive(Z)Z

    .line 2508
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2509
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v2

    .line 2508
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayBrightnessStrategyName(Ljava/lang/String;)V

    .line 2510
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 2511
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v2

    .line 2510
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setAutomaticBrightnessEnabled(Z)V

    .line 2514
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2515
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    if-ne v1, v12, :cond_89

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2516
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    if-ne v1, v12, :cond_89

    const/4 v1, 0x1

    goto :goto_49

    :cond_89
    const/4 v1, 0x0

    .line 2519
    :goto_49
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2520
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_8a

    const/4 v2, 0x1

    goto :goto_4a

    :cond_8a
    const/4 v2, 0x0

    .line 2522
    :goto_4a
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z

    move-result v3

    if-nez v3, :cond_8b

    if-eqz v1, :cond_8c

    :cond_8b
    if-eqz v7, :cond_91

    .line 2524
    :cond_8c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setInitialBrightness(F)V

    .line 2525
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 2526
    new-instance v1, Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 2529
    invoke-virtual {v1, v7}, Lcom/android/server/display/brightness/BrightnessEvent;->setAdjustmentFlags(I)V

    .line 2530
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v3

    if-eqz v24, :cond_8d

    goto :goto_4b

    :cond_8d
    const/4 v11, 0x0

    :goto_4b
    or-int/2addr v3, v11

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 2532
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_8e

    .line 2535
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v3

    if-eq v3, v12, :cond_8f

    :cond_8e
    move/from16 v3, v35

    .line 2536
    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/DisplayPowerController2;->logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;F)V

    .line 2538
    :cond_8f
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v3, :cond_90

    .line 2539
    invoke-virtual {v3, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_90
    if-eqz v2, :cond_91

    .line 2542
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2558
    :cond_91
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_92

    instance-of v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    if-eqz v1, :cond_92

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->updateForceUpdateAbJob()V

    .line 2568
    :cond_92
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController2$ScreenOnUnblocker;

    if-nez v1, :cond_94

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeEnabled:Z

    if-eqz v1, :cond_93

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2569
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_94

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2570
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_94

    :cond_93
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mCleanListener:Ljava/lang/Runnable;

    .line 2571
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_94

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingScreenOnByAodReady:Z

    if-nez v1, :cond_94

    const/4 v1, 0x1

    goto :goto_4c

    :cond_94
    const/4 v1, 0x0

    :goto_4c
    if-eqz v1, :cond_95

    .line 2573
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2574
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_95

    const/4 v4, 0x1

    goto :goto_4d

    :cond_95
    const/4 v4, 0x0

    :goto_4d
    if-eqz v1, :cond_96

    const/4 v2, 0x1

    if-eq v13, v2, :cond_96

    .line 2577
    iget v3, v0, Lcom/android/server/display/DisplayPowerController2;->mReportedScreenStateToPolicy:I

    if-ne v3, v2, :cond_96

    const/4 v2, 0x2

    .line 2579
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController2;->setReportedScreenState(I)V

    .line 2580
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController2;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayId:I

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn(I)V

    :cond_96
    const/4 v2, 0x5

    if-nez v4, :cond_97

    .line 2585
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v3, v2}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 2589
    :cond_97
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 2590
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_98

    .line 2592
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v3

    if-eqz v3, :cond_98

    goto :goto_4e

    :cond_98
    const/4 v3, 0x0

    goto :goto_4f

    :cond_99
    :goto_4e
    const/4 v3, 0x1

    :goto_4f
    if-eqz v1, :cond_9b

    if-eqz v32, :cond_9b

    if-eqz v3, :cond_9b

    .line 2599
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2600
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_9a

    const/4 v3, 0x1

    .line 2601
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController2;->mDisplayReadyLocked:Z

    .line 2607
    :cond_9a
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2608
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController2;->sendOnStateChangedWithWakelock()V

    goto :goto_50

    :catchall_0
    move-exception v0

    .line 2607
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9b
    :goto_50
    const/4 v1, 0x1

    if-eqz v4, :cond_9d

    if-ne v13, v1, :cond_9c

    .line 2615
    sget-object v3, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 2616
    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_9c

    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    if-nez v4, :cond_9c

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9c

    .line 2619
    iput-boolean v1, v3, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    .line 2620
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController2;->mTag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    sget-object v4, Lcom/android/server/power/PowerManagerUtil;->sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

    new-instance v6, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    invoke-direct {v6, v3}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_51

    :cond_9c
    const/4 v5, 0x0

    .line 2625
    :goto_51
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController2;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v3, v2}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    goto :goto_52

    :cond_9d
    const/4 v5, 0x0

    :goto_52
    const/4 v2, 0x2

    if-eq v13, v2, :cond_9e

    move v7, v1

    goto :goto_53

    :cond_9e
    move v7, v5

    .line 2629
    :goto_53
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController2;->mDozing:Z

    .line 2631
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController2;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v4, v34

    if-eq v4, v1, :cond_9f

    .line 2632
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController2;->logDisplayPolicyChanged(I)V

    :cond_9f
    return-void

    :catchall_1
    move-exception v0

    .line 1788
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
