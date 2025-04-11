.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# static fields
.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field public static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

.field public static final DEFAULT_PROTECTION_THRESHOLD_LEVEL:I

.field public static final DUMPSYS_ARGS:[Ljava/lang/String;

.field public static final EUREKA_PROJECT:Z

.field public static final FEATURE_FULL_BATTERY_CYCLE:Z

.field public static final FEATURE_HICCUP_CONTROL:Z

.field public static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field public static final FEATURE_SUPPORTED_DAILY_BOARD:Z

.field public static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field public static final PACKAGE_DEVICE_CARE:Ljava/lang/String;

.field public static final PRODUCT_NAME:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "BatteryService"

.field public static final TAG_SS:Ljava/lang/String;


# instance fields
.field public final HEALTH_INSTANCE_VENDOR:Ljava/lang/String;

.field public isVideoCall:Z

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerReady:Z

.field public final mAdaptiveFastChargingOffset:I

.field public mAdaptiveFastChargingSettingsEnable:Z

.field public mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

.field public mAfcDisableSysFs:Ljava/lang/String;

.field public mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

.field public mBatteryCapacity:I

.field public mBatteryChangedOptions:Landroid/os/Bundle;

.field public mBatteryInputSuspended:Z

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

.field public mBatteryMaxCurrent:J

.field public mBatteryMaxTemp:J

.field public mBatteryNearlyFullLevel:I

.field public mBatteryOptions:Landroid/os/Bundle;

.field public mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBatteryType:I

.field public mBatteryUsageSinceLastAsocUpdate:I

.field public mBinderService:Lcom/android/server/BatteryService$BinderService;

.field public mBootCompleted:Z

.field public mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field public mCallHandler:Landroid/os/Handler;

.field public mCallHandlerThread:Landroid/os/HandlerThread;

.field public mChargeStartLevel:I

.field public mChargeStartTime:J

.field public final mContext:Landroid/content/Context;

.field public mCriticalBatteryLevel:I

.field public mCurrentBatteryUsage:J

.field public mCurrentCalendar:Ljava/util/Calendar;

.field public mDateChangedReceiver:Lcom/android/server/BatteryService$DateChangedReceiver;

.field public mDexReceiver:Landroid/content/BroadcastReceiver;

.field public mDischargeStartLevel:I

.field public mDischargeStartTime:J

.field public mEnableIqi:Z

.field public mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

.field public mFullBatteryDuration:J

.field public mFullBatteryStartTime:J

.field public mFullCapacityEnable:Z

.field public mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field public mHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field public mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mInvalidCharger:I

.field public mIsAuthQrEqualsEfs:Z

.field public mIsFirstIntentSended:Z

.field public mIsHiccupPopupShowing:Z

.field public mIsSbpFgQrEqualsEfs:Z

.field public mIsSkipActionBatteryChanged:Z

.field public mIsUnlockedBootCompleted:Z

.field public mIsWirelessTxSupported:Z

.field public mLastBatteryChargeType:I

.field public mLastBatteryCurrentEvent:I

.field public mLastBatteryCurrentNow:I

.field public mLastBatteryCycleCount:I

.field public mLastBatteryEvent:I

.field public mLastBatteryEventWaterInConnector:Z

.field public mLastBatteryHealth:I

.field public mLastBatteryHighVoltageCharger:I

.field public mLastBatteryLevel:I

.field public mLastBatteryLevelChangedSentMs:J

.field public mLastBatteryLevelCritical:Z

.field public mLastBatteryOnline:I

.field public mLastBatteryPowerSharingOnline:Z

.field public mLastBatteryPresent:Z

.field public mLastBatteryStatus:I

.field public mLastBatteryTemperature:I

.field public mLastBatteryVoltage:I

.field public mLastCharingState:I

.field public mLastDeterioration:I

.field public mLastInvalidCharger:I

.field public mLastLowBatteryWarningLevel:I

.field public mLastMaxChargingCurrent:I

.field public mLastMaxChargingVoltage:I

.field public mLastPlugType:I

.field public mLastSecPlugTypeSummary:I

.field public final mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mLastTxEventRxConnected:Z

.field public mLastTxEventTxEnabled:Z

.field public mLastWcTxId:I

.field public mLastWirelessBackPackChargingStatus:Z

.field public mLastWirelessChargingStatus:Z

.field public mLastWirelessPinDetected:Z

.field public mLastWirelessPowerSharingExternelEvent:I

.field public mLastWirelessPowerSharingTxEvent:I

.field public mLastchargerPogoOnline:Z

.field public mLatestWirelessChargingMode:I

.field public mLed:Lcom/android/server/BatteryService$Led;

.field public mLedChargingSettingsEnable:Z

.field public mLedLowBatterySettingsEnable:Z

.field public mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

.field public mLifeExtender:Z

.field public mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

.field public final mLock:Ljava/lang/Object;

.field public final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field public mLongBatteryRetryCnt:I

.field public mLowBatteryCloseWarningLevel:I

.field public mLowBatteryWarningLevel:I

.field public mLtcHighSocDuration:I

.field public mLtcHighThreshold:I

.field public mLtcReleaseThreshold:I

.field public mManufactureDate:Ljava/lang/String;

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNotifyWirelessEnabled:Z

.field public mPassThroughSettingsEnable:Z

.field public mPassThroughSettingsObserver:Lcom/android/server/BatteryService$PassThroughSettingsObserver;

.field public mPlugType:I

.field public mPogoCondition:I

.field public mPogoDockState:I

.field public mPowerOptions:Landroid/os/Bundle;

.field public mProtectBatteryMode:I

.field public mProtectionThreshold:I

.field public mRefreshRateModeSetting:I

.field public mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

.field public mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

.field public mRfCalDate:Ljava/lang/String;

.field public final mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

.field public final mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

.field public final mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

.field public mSavedBatteryAsoc:J

.field public mSavedBatteryBeginningDate:I

.field public mSavedBatteryMaxCurrent:J

.field public mSavedBatteryMaxTemp:J

.field public mSavedBatteryUsage:J

.field public mSavedDiffWeek:I

.field public mSavedFullBatteryDuration:J

.field public mScreenOn:Z

.field public mSecPlugTypeSummary:I

.field public mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mSentLowBatteryBroadcast:Z

.field public mSequence:I

.field public mShouldCheckFirstUseDateRegularly:Z

.field public mShutdownBatteryTemperature:I

.field public mSkipActionBatteryChangedHandler:Landroid/os/Handler;

.field public mSleepChargingDismissReceiver:Landroid/content/BroadcastReceiver;

.field public mSleepChargingHandler:Landroid/os/Handler;

.field public mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final mSuperFastChargingOffset:I

.field public mSuperFastChargingSettingsEnable:Z

.field public mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

.field public mTxBatteryLimit:I

.field public mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

.field public final mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

.field public final mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

.field public final mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

.field public mUpdatesStopped:Z

.field public mWasUsedWirelessFastChargerPreviously:Z

.field public mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

.field public final mWcParamOffset:I

.field public mWcTxId:I

.field public final mWirelessFastChargingOffset:I

.field public mWirelessFastChargingSettingsEnable:Z

.field public mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

.field public mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

.field public tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$C0jYqK1gnSOcF3Uu55I-EjBFdG0(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$resetBattery$6(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKlP_0rJm58YpjK3fAt131VdaIY(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$logFullBatteryDurationLocked$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$UxSPlu6Nj53UjlseDPN52c1Emm8(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->lambda$setBatteryLevel$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bx3fXJyhsvV0pCwfFAeCJRzKFv8(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$logFullBatteryDurationLocked$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hbwz-03SFuAqTN98vd7TVtrN7DU(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->lambda$setChargerAcOnline$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ja40XDgCPFKSYFHkHV2QWAfddbI(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rM1bToVdJIQx4JPo9dPPAXIZoXw(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method public static synthetic $r8$lambda$xpEZz9yzRBTcJBcgP7WgmH0dfT8(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$unplugBattery$5(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxcncUjFj-WdcPjuCc8TrVl5ioY(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdaptiveFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevelCritical(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevelLow(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryMaxCurrent(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryMaxTemp(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryOptions(Lcom/android/server/BatteryService;)Landroid/os/Bundle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBatteryOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/BatteryService;)Lcom/android/internal/app/IBatteryStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryType(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentBatteryUsage(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableIqi(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullCapacityEnable(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandlerForBatteryInfoBackUp(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthServiceWrapper(Lcom/android/server/BatteryService;)Lcom/android/server/health/HealthServiceWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInvalidCharger(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSkipActionBatteryChanged(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUnlockedBootCompleted(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTxEventTxEnabled(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLed(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLedChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLifeExtender(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLongBatteryRetryCnt(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPassThroughSettingsEnable(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlugType(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPogoCondition(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPogoDockState(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerOptions(Lcom/android/server/BatteryService;)Landroid/os/Bundle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mPowerOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProtectBatteryMode(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRefreshRateModeSetting(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSaveBatteryUsageRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryMaxTemp(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedFullBatteryDuration(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecPlugTypeSummary(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSehHealthInfo(Lcom/android/server/BatteryService;)Lvendor/samsung/hardware/health/SehHealthInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSkipActionBatteryChangedHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSleepChargingManager(Lcom/android/server/BatteryService;)Lcom/android/server/battery/sleepcharging/SleepChargingManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuperFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTxBatteryLimit(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateBatteryUsageExtenderRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateBatteryUsageFullCapacityEnableRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWasUsedWirelessFastChargerPreviously(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWcParamOffset(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWcTxId(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mWcTxId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdaptiveFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryNearlyFullLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentBatteryUsage(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFullCapacityEnable(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInvalidCharger(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsFirstIntentSended(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHiccupPopupShowing(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSkipActionBatteryChanged(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsUnlockedBootCompleted(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLedChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLifeExtender(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLongBatteryRetryCnt(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPassThroughSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProtectBatteryMode(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRefreshRateModeSetting(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryMaxTemp(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryUsage(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedFullBatteryDuration(Lcom/android/server/BatteryService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSuperFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTxBatteryLimit(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWasUsedWirelessFastChargerPreviously(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWirelessFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->activateSleepChargingManager(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckFaiExpired(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->checkFaiExpired()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckLongLifeBatteryInternal(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->checkLongLifeBatteryInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceSecurityPackageName(Lcom/android/server/BatteryService;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getDeviceSecurityPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitializeSavedAsoc(Lcom/android/server/BatteryService;J)J
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->initializeSavedAsoc(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$misPoweredLocked(Lcom/android/server/BatteryService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogFullBatteryDurationLocked(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->logFullBatteryDurationLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryAsocFromEfsLocked(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)J
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryMaxCurrentFromEfsLocked(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryMaxTempFromEfsLocked(Lcom/android/server/BatteryService;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;Ljava/lang/String;)J
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mreadFromFile(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mresetBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendBatteryChangedIntentLocked(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendOTGIntentLocked(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendOTGIntentLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBatteryLevel(Lcom/android/server/BatteryService;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->setBatteryLevel(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setCallWirelessPowerSharingExternelEvent(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetChargerAcOnline(Lcom/android/server/BatteryService;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRefreshRateMode(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setRefreshRateMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setSleepCharging(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWcParamInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setWcParamInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessFastCharging(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessPowerSharingExternelEventInternal(Lcom/android/server/BatteryService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessPowerSharingTxBatteryLimit(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingTxBatteryLimit(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msuspendBatteryInput(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munplugBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryDate(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryDate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryWarningLevelLocked(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteProtectBatteryValues(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetFEATURE_SUPPORTED_DAILY_BOARD()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPACKAGE_DEVICE_CARE()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG_SS()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smfileWriteInt(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisFileSupported(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/BatteryService;->sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 190
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SS]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    .line 208
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    const-string v0, "/sys/class/sec/switch/afc_disable"

    const-string/jumbo v1, "sys/class/sec/afc/afc_disable"

    .line 219
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    const-string v0, "/sys/class/sec/switch/hiccup"

    .line 267
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 285
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    const-string v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    .line 296
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    const-string v0, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    .line 297
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    .line 490
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    const-string/jumbo v0, "ro.product.vendor.device"

    const-string v1, "NONE"

    .line 491
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "e1"

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "e2"

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "e3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/server/BatteryService;->EUREKA_PROJECT:Z

    if-nez v0, :cond_2

    const-string v0, "BFSU"

    .line 495
    invoke-static {v0}, Lcom/android/server/battery/BattFeatures;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    sput-boolean v2, Lcom/android/server/BatteryService;->FEATURE_FULL_BATTERY_CYCLE:Z

    .line 554
    invoke-static {}, Lcom/android/server/BatteryService;->isSupportedDailyBoard()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 603
    sget v0, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    sput v0, Lcom/android/server/BatteryService;->DEFAULT_PROTECTION_THRESHOLD_LEVEL:I

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 2375
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1463
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 268
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 313
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 333
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 337
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 344
    new-instance v1, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    const/4 v9, 0x1

    .line 362
    iput v9, v0, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v10, -0x1

    .line 374
    iput v10, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 378
    iput v10, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 394
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 403
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 404
    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x2

    .line 405
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryChangedOptions:Landroid/os/Bundle;

    .line 408
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 409
    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    const-string v4, "android"

    .line 410
    invoke-virtual {v1, v4, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 411
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/BatteryService;->mPowerOptions:Landroid/os/Bundle;

    .line 414
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 415
    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    const-string v3, "android.intent.action.BATTERY_OKAY"

    .line 416
    invoke-virtual {v1, v4, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 417
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryOptions:Landroid/os/Bundle;

    .line 422
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 425
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    .line 428
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 430
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 431
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 436
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 441
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 446
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 457
    iput v8, v0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 458
    iput v8, v0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 464
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 467
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 468
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 473
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    const v1, 0x445c0

    .line 476
    iput v1, v0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    .line 478
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    const-wide/16 v1, -0x1

    .line 502
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 503
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 504
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    .line 505
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    .line 506
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    .line 509
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 510
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    const-wide/16 v3, 0x0

    .line 511
    iput-wide v3, v0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    .line 512
    iput v8, v0, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    .line 513
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    .line 514
    iput-wide v3, v0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    .line 527
    iput v8, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 528
    iput v10, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 537
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 550
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 559
    iput v8, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 560
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 565
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 566
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    const-string v1, "default"

    .line 573
    iput-object v1, v0, Lcom/android/server/BatteryService;->HEALTH_INSTANCE_VENDOR:Ljava/lang/String;

    .line 588
    iput v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryBeginningDate:I

    const/4 v11, 0x0

    .line 592
    iput-object v11, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 593
    iput v8, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 598
    iput v8, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 599
    iput v10, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    const/16 v1, 0x50

    .line 615
    iput v1, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 660
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    .line 688
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 792
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 796
    new-instance v1, Lcom/android/server/BatteryService$3;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 819
    new-instance v1, Lcom/android/server/BatteryService$4;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

    .line 919
    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    .line 941
    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    .line 1037
    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    .line 1059
    new-instance v1, Lcom/android/server/BatteryService$9;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mDexReceiver:Landroid/content/BroadcastReceiver;

    .line 1132
    new-instance v1, Lcom/android/server/BatteryService$11;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    new-instance v1, Lcom/android/server/BatteryService$12;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2378
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 2379
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 2383
    iput v8, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 4185
    new-instance v1, Lcom/android/server/BatteryService$37;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$37;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    .line 4287
    new-instance v1, Lcom/android/server/BatteryService$38;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$38;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    .line 4316
    new-instance v1, Lcom/android/server/BatteryService$39;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$39;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    .line 4364
    new-instance v1, Lcom/android/server/BatteryService$40;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$40;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    .line 4389
    new-instance v1, Lcom/android/server/BatteryService$41;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$41;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    .line 4421
    new-instance v1, Lcom/android/server/BatteryService$42;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$42;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

    .line 1465
    iput-object v7, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 1466
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12, v9}, Landroid/os/Handler;-><init>(Z)V

    iput-object v12, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 1467
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v9}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 1468
    new-instance v1, Lcom/android/server/BatteryService$Led;

    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    invoke-direct {v1, v0, v7, v2}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 1469
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1470
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1472
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 1474
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1478
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 1481
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 1482
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1485
    new-instance v1, Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$LedSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    .line 1487
    new-instance v1, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    .line 1490
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v1, :cond_0

    .line 1491
    new-instance v1, Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    .line 1496
    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    if-eqz v1, :cond_1

    .line 1497
    new-instance v1, Lcom/android/server/BatteryService$PassThroughSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$PassThroughSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$PassThroughSettingsObserver;

    .line 1502
    :cond_1
    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v13, :cond_2

    .line 1503
    new-instance v1, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    .line 1506
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    if-eqz v1, :cond_2

    .line 1507
    new-instance v1, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    .line 1514
    :cond_2
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v1, :cond_3

    .line 1515
    new-instance v1, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    .line 1520
    :cond_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz v1, :cond_5

    .line 1521
    :cond_4
    new-instance v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    .line 1526
    :cond_5
    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v14, :cond_6

    .line 1527
    new-instance v1, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    .line 1532
    :cond_6
    iget-object v1, v0, Lcom/android/server/BatteryService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1535
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 1536
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 1537
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 1538
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 1540
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->getBatteryType()I

    move-result v2

    iput v2, v0, Lcom/android/server/BatteryService;->mBatteryType:I

    const/16 v15, 0xa

    if-ne v2, v15, :cond_7

    .line 1544
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->syncBatteryInfoAuthEfs()V

    goto :goto_0

    :cond_7
    const/16 v3, 0x14

    if-ne v2, v3, :cond_8

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->syncBatteryInfoSbpFgEfs()V

    .line 1548
    :cond_8
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->initBatteryInfo()V

    .line 1550
    iget-object v2, v0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1552
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    .line 1553
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1554
    iget-object v2, v0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sec.permission.OTG_CHARGE_BLOCK"

    invoke-virtual {v7, v2, v1, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1558
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    .line 1559
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.permission.OTG_CHARGE_BLOCK"

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1564
    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v1, :cond_9

    .line 1565
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 1566
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 1567
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1568
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_9
    if-eqz v14, :cond_a

    .line 1574
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    .line 1575
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1576
    iget-object v2, v0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.permission.wirelesspowersharing"

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1579
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    if-eqz v1, :cond_a

    .line 1580
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1581
    sget-object v1, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1582
    sget-object v1, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    iget-object v2, v0, Lcom/android/server/BatteryService;->mDexReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_a
    if-eqz v13, :cond_b

    .line 1590
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 1591
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1592
    iget-object v2, v0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    .line 1593
    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    .line 1594
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->startCallThread()V

    .line 1599
    :cond_b
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    if-eqz v1, :cond_c

    .line 1600
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    .line 1601
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1602
    iget-object v2, v0, Lcom/android/server/BatteryService;->mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1608
    :cond_c
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1609
    new-instance v1, Lcom/android/server/BatteryService$13;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    const-string v2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    .line 1620
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 1625
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v2, "att.devicehealth.support"

    .line 1626
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1627
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 1632
    :cond_e
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v1, :cond_10

    .line 1633
    sget-object v1, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    aget-object v2, v1, v8

    invoke-static {v2}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1634
    aget-object v1, v1, v8

    goto :goto_1

    :cond_f
    aget-object v1, v1, v9

    :goto_1
    iput-object v1, v0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    .line 1635
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ mAfcDisableSysFs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v1, "ro.boot.cm.param.offset"

    .line 1640
    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    if-eq v1, v10, :cond_11

    add-int/2addr v1, v9

    goto :goto_2

    :cond_11
    move v1, v10

    .line 1641
    :goto_2
    iput v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    const-string/jumbo v1, "ro.boot.pd.param.offset"

    .line 1642
    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    const-string/jumbo v1, "ro.boot.wc.param.offset"

    .line 1644
    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    const-string v2, "/sys/class/power_supply/battery/wc_param_info"

    .line 1645
    invoke-virtual {v0, v2}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq v1, v10, :cond_12

    if-eqz v2, :cond_12

    .line 1647
    new-instance v1, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    .line 1653
    :cond_12
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_SET"

    .line 1654
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1655
    new-instance v2, Lcom/android/server/BatteryService$TimeChangedReceiver;

    invoke-direct {v2, v0, v11}, Lcom/android/server/BatteryService$TimeChangedReceiver;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$TimeChangedReceiver-IA;)V

    invoke-virtual {v7, v2, v1, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1657
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 1658
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 1659
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1660
    new-instance v2, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;

    invoke-direct {v2, v0, v11}, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SetupWizardCompleteReceiver-IA;)V

    invoke-virtual {v7, v2, v1, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1663
    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryType:I

    if-ne v1, v15, :cond_14

    const-string v1, "/sys/class/power_supply/sec_auth/fai_expired"

    .line 1664
    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1665
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BatteryService]faiExpiredStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "faiExpiredStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/log/battery_service/battery_service_main_history"

    const-string v6, "Check FAI Expiered When Boot"

    invoke-static {v5, v6, v4}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    .line 1667
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "0"

    .line 1668
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1669
    invoke-virtual {v0, v1, v4}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_13
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 1673
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1674
    new-instance v2, Lcom/android/server/BatteryService$DateChangedReceiver;

    invoke-direct {v2, v0, v11}, Lcom/android/server/BatteryService$DateChangedReceiver;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$DateChangedReceiver-IA;)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mDateChangedReceiver:Lcom/android/server/BatteryService$DateChangedReceiver;

    .line 1675
    invoke-virtual {v7, v2, v1, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "[BatteryService]DateChangedReceiver Registered For FAI Expired"

    .line 1676
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_14
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    const-string v1, "BatteryService Created"

    const-string v2, ""

    const-string v3, "/data/log/battery_service/sleep_charging_history"

    .line 1684
    invoke-static {v3, v1, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    new-instance v1, Lcom/android/server/BatteryService$14;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Landroid/os/Handler;

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Battery service (battery) commands:"

    .line 4552
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 4553
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 4554
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get [-f] [ac|usb|wireless|dock|status|level|temp|present|counter|invalid]"

    .line 4555
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set [-f] [ac|usb|wireless|dock|status|level|temp|present|counter|invalid] <value>"

    .line 4556
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force a battery property value, freezing battery state."

    .line 4558
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    .line 4559
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  unplug [-f]"

    .line 4560
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Force battery unplugged, freezing battery state."

    .line 4561
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4562
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  reset [-f]"

    .line 4563
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    .line 4564
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4566
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "  suspend_input"

    .line 4567
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Suspend charging even if plugged in. "

    .line 4568
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 3

    .line 3918
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileWriteInt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3921
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3925
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3926
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3928
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 3930
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 3932
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_3
    :goto_1
    return-void
.end method

.method public static isFileSupported(Ljava/lang/String;)Z
    .locals 2

    .line 3974
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3976
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isSupportedDailyBoard()Z
    .locals 6

    .line 3949
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ","

    .line 3954
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3960
    :cond_1
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const-string v5, "TA"

    .line 3961
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private synthetic lambda$logFullBatteryDurationLocked$1(J)V
    .locals 0

    .line 4243
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->saveFullBatteryDuration(J)V

    return-void
.end method

.method private synthetic lambda$logFullBatteryDurationLocked$2(J)V
    .locals 0

    .line 4254
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->saveFullBatteryDuration(J)V

    return-void
.end method

.method private synthetic lambda$resetBattery$6(ZLjava/io/PrintWriter;)V
    .locals 0

    .line 4830
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    .line 3272
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBatteryChangedOptions:Landroid/os/Bundle;

    invoke-static {p1, v0, p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V

    return-void
.end method

.method private synthetic lambda$setBatteryLevel$4(Z)V
    .locals 0

    .line 4802
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method private synthetic lambda$setChargerAcOnline$3(Z)V
    .locals 0

    .line 4789
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method private synthetic lambda$unplugBattery$5(ZLjava/io/PrintWriter;)V
    .locals 0

    .line 4818
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I
    .locals 3

    .line 2602
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2604
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2614
    :cond_0
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v1, :cond_1

    const/4 p0, 0x4

    return p0

    .line 2616
    :cond_1
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    return p0

    .line 2621
    :cond_2
    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz p0, :cond_3

    return v2

    .line 2625
    :cond_3
    iget-boolean p0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 3939
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastToExplicitPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 3942
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3943
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 5006
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 5010
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public final activateSleepChargingManager(Z)V
    .locals 9

    .line 691
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[activateSleepChargingManager]activate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 693
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz p1, :cond_0

    const-string p0, "[activateSleepChargingManager]activated multiple times => ignored"

    .line 694
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->createSleepChargingHandler()V

    .line 699
    new-instance v2, Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-direct {v2, p1, v0, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 700
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    if-eqz p1, :cond_1

    .line 701
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-wide v4, p0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    iget v6, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget-wide v7, p1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->updateChargingInfo(IJIJ)V

    .line 705
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    .line 706
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->createSleepChargingDismissReceiver()V

    .line 708
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.permission.WRITE_SM_DATA"

    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 711
    :cond_2
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    .line 712
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 713
    iput-object v1, p0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Landroid/content/BroadcastReceiver;

    .line 716
    :cond_3
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz p1, :cond_4

    .line 717
    invoke-virtual {p1}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->end()V

    .line 718
    iput-object v1, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 721
    :cond_4
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    .line 722
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 723
    iput-object v1, p0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Landroid/os/Handler;

    :cond_5
    :goto_0
    return-void
.end method

.method public final checkFaiExpired()V
    .locals 5

    const-string v0, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 1992
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1993
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->convertDateStringToLocalDate(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1994
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkFaiExpired]firstUseDate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0xe

    .line 1998
    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1999
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    .line 2000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkFaiExpired]currentDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,thresholdDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "/sys/class/power_supply/sec_auth/fai_expired"

    const-string v2, "1"

    .line 2004
    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkFaiExpired]check write result - isFaiExpired:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 2009
    iget-object v1, p0, Lcom/android/server/BatteryService;->mDateChangedReceiver:Lcom/android/server/BatteryService$DateChangedReceiver;

    if-eqz v1, :cond_2

    .line 2010
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 2011
    iput-object v1, p0, Lcom/android/server/BatteryService;->mDateChangedReceiver:Lcom/android/server/BatteryService$DateChangedReceiver;

    .line 2014
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFaiExpired:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/data/log/battery_service/battery_service_main_history"

    const-string v1, "FAI Expired Written"

    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkLongLifeBattery()V
    .locals 5

    const-string v0, "/efs/FactoryApp/batt_after_manufactured"

    .line 2025
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/sys/class/power_supply/battery/batt_after_manufactured"

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2027
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2028
    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2029
    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    goto :goto_0

    .line 2031
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2033
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 2034
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] Write weeklyDiff EFS ->  Sys : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2036
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2039
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@[LLB] can not change. value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", e: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2044
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$18;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$18;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final checkLongLifeBatteryInternal()I
    .locals 8

    const-string/jumbo v0, "ril.rfcal_date"

    .line 2073
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ril.manufacturedate"

    .line 2074
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "."

    const-string v2, ""

    .line 2077
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2080
    iget-object v0, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2081
    iget-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2082
    iget-object v6, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2083
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[LLB] rfcal_date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2084
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 2085
    iget-object v0, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2086
    iget-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2087
    iget-object v6, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2088
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[LLB] manufacture_date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 2095
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2096
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v6, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 2098
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 2100
    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2102
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v5

    .line 2103
    iget-object v4, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    if-nez v0, :cond_4

    sub-int/2addr v3, v2

    if-lez v3, :cond_3

    .line 2108
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] same year diff_Week= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2110
    :cond_3
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[LLB] same year but error month!!!"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    if-gez v0, :cond_5

    .line 2114
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[LLB] error year"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x34

    rsub-int/lit8 v2, v2, 0x34

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    :goto_1
    const-string v0, "/efs/FactoryApp/batt_after_manufactured"

    .line 2121
    invoke-virtual {p0, v0, v3}, Lcom/android/server/BatteryService;->checkWeeklyDiffIsValid(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "/sys/class/power_supply/battery/batt_after_manufactured"

    .line 2122
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2123
    invoke-static {v0, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2124
    iput v3, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    :cond_6
    return v1

    .line 2090
    :cond_7
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[LLB] mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final checkWeeklyDiffIsValid(Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "!@[LLB] "

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2131
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " path string is nul"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2138
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null, It looks first time, just make it."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 2142
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    :try_start_1
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] EFS values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Diff_week: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 2145
    :catch_1
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] !@[BatteryInfo] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : data is \""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ge v0, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final createSleepChargingDismissReceiver()V
    .locals 2

    .line 777
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v1, "[createSleepChargingDismissReceiver]"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Lcom/android/server/BatteryService$2;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final createSleepChargingHandler()V
    .locals 2

    .line 729
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v1, "[createSleepChargingHandler]"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Landroid/os/Handler;

    return-void
.end method

.method public final dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 4855
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 4856
    :try_start_0
    array-length v2, p3

    if-eqz v2, :cond_1

    const-string v2, "-a"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4943
    :cond_0
    new-instance v3, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 4944
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v6, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string p1, "Current Battery Service state:"

    .line 4857
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4858
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz p1, :cond_2

    const-string p1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    .line 4859
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4861
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AC powered: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  USB powered: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4863
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Wireless powered: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4864
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Dock powered: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging current: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging voltage: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Charge counter: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4868
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  status: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  health: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  present: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  level: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  scale: 100"

    .line 4872
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  voltage: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4874
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  temperature: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  technology: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  batteryMiscEvent: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  batteryCurrentEvent: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSecPlugTypeSummary: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4881
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  LED Charging: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  LED Low Battery: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4883
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget p1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_3

    .line 4884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  current now: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4886
    :cond_3
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    if-eq p1, v2, :cond_4

    .line 4887
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  charge counter: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Adaptive Fast Charging Settings: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4892
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Super Fast Charging Settings: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4895
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWasUsedWirelessFastChargerPreviously: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWirelessFastChargingSettingsEnable: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4901
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LLB CAL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4902
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LLB MAN: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4903
    iget-object p1, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 4904
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB CURRENT: YEAR"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "M"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    .line 4905
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    .line 4906
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4904
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB DIFF: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4910
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSavedBatteryBeginningDate: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryBeginningDate:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_FEATURE_BATTERY_FULL_CAPACITY: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4914
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFullCapacityEnable: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4917
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_HICCUP_CONTROL: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4918
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_SUPPORTED_DAILY_BOARD: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_FEATURE_BATTERY_LIFE_EXTENDER: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4920
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_FEATURE_USE_WIRELESS_POWER_SHARING: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4923
    sget-boolean p1, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz p1, :cond_7

    .line 4925
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mProtectBatteryMode: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mProtectionThreshold: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4927
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mLtcHighThreshold: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mLtcHighSocDuration: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mLtcReleaseThreshold: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4933
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz p1, :cond_6

    const-string p1, "[Battery Adaptive Protect Mode]"

    .line 4934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-virtual {p1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    move-result-object p1

    .line 4936
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "[Not Battery Adaptive Protect Mode]"

    .line 4938
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    :cond_7
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4949
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p3, :cond_8

    .line 4950
    :try_start_1
    array-length v0, p3

    if-eqz v0, :cond_8

    const-string v0, "-a"

    aget-object p3, p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    :cond_8
    const-string p3, "BatteryInfoBackUp"

    .line 4951
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryAsoc: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4953
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryMaxTemp: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryMaxCurrent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4955
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryUsage: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4956
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedFullStatusDuration: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "/efs/FactoryApp/bsoh"

    .line 4957
    invoke-virtual {p0, p3}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4958
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 4959
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryBsoh: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4961
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  FEATURE_SAVE_BATTERY_CYCLE: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4963
    :cond_a
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 4946
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .locals 4

    .line 4968
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4970
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4971
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const-wide v2, 0x10800000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4973
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4975
    :cond_0
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 4977
    :cond_1
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 4979
    :cond_2
    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-wide v2, 0x10e00000002L

    .line 4982
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4983
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4986
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4989
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide v2, 0x10500000005L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4991
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-wide v2, 0x10e00000006L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4992
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-wide v2, 0x10e00000007L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4993
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4994
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-wide v2, 0x10500000009L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000aL

    const/16 v3, 0x64

    .line 4995
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4996
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-wide v2, 0x1050000000bL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4997
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5000
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-wide v1, 0x1090000000dL

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5001
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5002
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p0

    .line 5001
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 3850
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3851
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString : file not found:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 3855
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "fileWriteString : value null"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3859
    :cond_1
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileWriteString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 3863
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3869
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3870
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_0

    .line 3865
    :catch_2
    :try_start_2
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p2, "fileWriteString : FileNotFoundException"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    .line 3873
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 3875
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 3877
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public final getBatteryType()I
    .locals 11

    const-string v0, "/sys/class/power_supply/sec_auth/presence"

    .line 3986
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "/sys/class/power_supply/sec_auth/batt_auth"

    .line 3987
    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v2

    .line 3988
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getBatteryType]presence:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,auth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/sys/class/power_supply/sbp-fg/type"

    .line 3989
    invoke-static {v5}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v5

    .line 3990
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getBatteryType]sbp_fg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v6

    const-string v9, "/data/log/battery_service/battery_service_main_history"

    const-string v10, "/efs/FactoryApp/HwParamBattQR"

    if-nez v8, :cond_1

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    const-string v0, "/sys/class/power_supply/sec_auth/qr_code"

    .line 3992
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3993
    invoke-virtual {p0, v10}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3996
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mIsAuthQrEqualsEfs:Z

    .line 3997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBatteryType]mIsAuthQrEqualsEfs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mIsAuthQrEqualsEfs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsAuthQrEqualsEfs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mIsAuthQrEqualsEfs:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ,authQR:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,efsQR:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getBatteryType QR"

    invoke-static {v9, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa

    goto :goto_1

    :cond_0
    const/16 p0, 0xd

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    const/16 p0, 0xb

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    const/16 p0, 0xc

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne v5, v0, :cond_5

    const-string v0, "/sys/class/power_supply/sbp-fg/qr_code"

    .line 4009
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4010
    invoke-virtual {p0, v10}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 4012
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsSbpFgQrEqualsEfs:Z

    .line 4013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getBatteryType]SBP-FG mIsSbpFgQrEqualsEfs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mIsSbpFgQrEqualsEfs:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p0, "[getBatteryType]SBP-FG QR read failed!!"

    .line 4015
    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, 0x14

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    .line 4018
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getBatteryType]type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryType"

    invoke-static {v9, v1, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getDeviceSecurityPackageName()Ljava/lang/String;
    .locals 3

    .line 3705
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SECURITY_CONFIG_DEVICEMONITOR_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm.devicesecurity"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3707
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 3709
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIconLocked(I)I
    .locals 3

    .line 3686
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v0, 0x2

    const v1, 0x1080aa7

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const v2, 0x1080a99

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const p0, 0x1080ab5

    return p0

    :cond_3
    :goto_0
    const/16 p1, 0xf

    .line 3692
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/16 p1, 0x64

    if-lt p0, p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final initBatteryInfo()V
    .locals 2

    .line 4131
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$36;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$36;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final initializeSavedAsoc(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x64

    .line 4345
    :goto_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@initializeSavedAsoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/efs/FactoryApp/asoc"

    .line 4346
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4347
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-string v0, "/sys/class/power_supply/sec_auth/asoc"

    .line 4348
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_1
    return-wide p1
.end method

.method public final isPoweredLocked(I)Z
    .locals 4

    .line 2326
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 2329
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_1

    return v2

    :cond_1
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    .line 2333
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    .line 2337
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_3

    return v2

    :cond_3
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_4

    .line 2341
    iget-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p1, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    .line 2347
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz p0, :cond_5

    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedWirelessTx()Z
    .locals 0

    .line 3805
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3807
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logBatteryStatsLocked()V
    .locals 8

    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    .line 3608
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3611
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    if-eqz p0, :cond_7

    const-string v3, "BATTERY_DISCHARGE_INFO"

    .line 3612
    invoke-virtual {p0, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v4, 0x0

    .line 3618
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/batterystats.dump"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3619
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3620
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v7, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v4, v7}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 3621
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    const/4 v2, 0x2

    .line 3624
    invoke-virtual {p0, v3, v5, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3633
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3635
    :catch_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_4

    .line 3639
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v4, v6

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object v4, v6

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v4, v6

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v5, v4

    goto :goto_6

    :catch_5
    move-exception p0

    move-object v5, v4

    .line 3628
    :goto_1
    :try_start_4
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to write dumpsys file"

    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_2

    .line 3633
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_2

    .line 3635
    :catch_6
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    .line 3638
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_4

    .line 3639
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_7
    move-exception p0

    move-object v5, v4

    .line 3626
    :goto_3
    :try_start_6
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to dump battery service"

    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_3

    .line 3633
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_4

    .line 3635
    :catch_8
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 3638
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_4

    .line 3639
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3639
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :catchall_2
    move-exception p0

    :goto_6
    if-eqz v4, :cond_5

    .line 3633
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_7

    .line 3635
    :catch_9
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    .line 3638
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3639
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3639
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    :cond_6
    throw p0

    :cond_7
    :goto_8
    return-void
.end method

.method public final logFullBatteryDurationLocked(Z)V
    .locals 9

    .line 4229
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/16 v1, 0x64

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "logFullBatteryDurationLocked : save duration, mFullBatteryDuration="

    const-wide/16 v5, -0x1

    if-ne v0, v1, :cond_2

    .line 4230
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 4231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    .line 4233
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    .line 4234
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logFullBatteryDurationLocked : mFullBatteryStartTime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mFullBatteryDuration="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    iget-wide v5, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    const-wide/32 v7, 0x927c0

    cmp-long v1, v5, v7

    if-gez v1, :cond_1

    if-eqz p1, :cond_3

    .line 4238
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    .line 4241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    .line 4242
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/BatteryService;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4246
    :cond_2
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_3

    .line 4247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    .line 4248
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    .line 4251
    iput-wide v2, p0, Lcom/android/server/BatteryService;->mFullBatteryDuration:J

    .line 4252
    iput-wide v5, p0, Lcom/android/server/BatteryService;->mFullBatteryStartTime:J

    .line 4253
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/BatteryService;J)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final logOutlierLocked(J)V
    .locals 5

    .line 3646
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3657
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v1, :cond_0

    const-string v1, "battery_discharge_threshold"

    .line 3658
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_discharge_duration_threshold"

    .line 3660
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3667
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3668
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    .line 3669
    iget p1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object p2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p2, p2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr p1, p2

    if-lt p1, v4, :cond_1

    .line 3672
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3679
    :catch_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid DischargeThresholds GService string: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public onBootPhase(I)V
    .locals 8

    .line 1720
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onBootPhase]phase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x226

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_1

    .line 1723
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1725
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 1727
    new-instance p1, Lcom/android/server/BatteryService$15;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v5}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 1735
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "low_power_trigger_level"

    .line 1736
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v3, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1739
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 1740
    invoke-virtual {p0, v5}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 1742
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v2, "SemInputDeviceManagerService"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz p1, :cond_0

    .line 1743
    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    if-eqz v2, :cond_0

    const/16 v3, 0xb

    .line 1744
    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 1746
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 1748
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWirelessChargingMode(All): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_0
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_7

    .line 1756
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1757
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/BatteryService$16;

    invoke-direct {v5, p0}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1770
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1771
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 1772
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1775
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "persist.sys.shutdown_received"

    .line 1776
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v5, "persist.sys.shutdown_received"

    const-string v6, "false"

    .line 1777
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 1780
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/BatteryService$17;

    invoke-direct {v5, p0}, Lcom/android/server/BatteryService$17;-><init>(Lcom/android/server/BatteryService;)V

    const-wide/32 v6, 0xc350

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1798
    :cond_2
    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v1, :cond_4

    .line 1799
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    and-int/lit8 v5, v1, 0x20

    if-nez v5, :cond_3

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "bootCompleted and HiccupPopup"

    .line 1802
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/batt_misc_event"

    .line 1803
    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1809
    :cond_4
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v1, :cond_5

    .line 1810
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isSupportedWirelessTx()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 1815
    :cond_5
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "protect_battery"

    const/4 v5, -0x2

    .line 1816
    invoke-static {p1, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_6

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 1817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@mLifeExtender Settings = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mLifeExtenderSettingsObserver register"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "protect_battery"

    .line 1818
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1819
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 1772
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    .line 4587
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4589
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 4590
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string/jumbo v4, "sleepstatus"

    const-string/jumbo v5, "sleeptime"

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "reset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "set"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "get"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "suspend_input"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "unplug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v15, "level"

    const-string/jumbo v6, "temp"

    const-string v7, "dock"

    const-string/jumbo v8, "usb"

    const-string v9, "ac"

    const-string/jumbo v10, "present"

    const-string/jumbo v14, "status"

    const-string/jumbo v12, "wireless"

    const/4 v11, 0x0

    const-string v13, "android.permission.DEVICE_POWER"

    packed-switch v3, :pswitch_data_0

    .line 4774
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4763
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 4764
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    const/4 v13, 0x1

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    .line 4766
    :goto_2
    invoke-virtual {v0, v13, v2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    goto/16 :goto_12

    .line 4687
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 4688
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4690
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v0, "No property specified"

    .line 4692
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, -0x1

    return v4

    :cond_9
    const/4 v4, -0x1

    .line 4696
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    const-string v0, "No value specified"

    .line 4698
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 4703
    :cond_a
    :try_start_0
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v4, :cond_b

    .line 4707
    iget-object v4, v0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v11, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v4, v11}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 4711
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_3

    :sswitch_7
    const-string v4, "invalid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v6, 0x9

    goto :goto_4

    :sswitch_8
    const-string v4, "counter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x7

    goto :goto_4

    :sswitch_9
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x6

    goto :goto_4

    :sswitch_a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v6, 0x8

    goto :goto_4

    :sswitch_b
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x4

    goto :goto_4

    :sswitch_c
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x2

    goto :goto_4

    :sswitch_d
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x1

    goto :goto_4

    :sswitch_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x0

    goto :goto_4

    :sswitch_f
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x5

    goto :goto_4

    :sswitch_10
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v6, 0x3

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v6, -0x1

    :goto_4
    packed-switch v6, :pswitch_data_1

    .line 4743
    new-instance v4, Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 4740
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_a

    .line 4737
    :pswitch_3
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    goto/16 :goto_a

    .line 4734
    :pswitch_4
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    goto :goto_a

    .line 4731
    :pswitch_5
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto :goto_a

    .line 4728
    :pswitch_6
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    goto :goto_a

    .line 4725
    :pswitch_7
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    goto :goto_a

    .line 4722
    :pswitch_8
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    goto :goto_a

    .line 4719
    :pswitch_9
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    goto :goto_a

    .line 4716
    :pswitch_a
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    goto :goto_a

    .line 4713
    :pswitch_b
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    :goto_a
    const/4 v3, 0x1

    goto :goto_c

    .line 4743
    :goto_b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown set option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_24

    .line 4748
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    .line 4750
    :try_start_1
    iput-boolean v6, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    and-int/2addr v1, v6

    if-eqz v1, :cond_12

    const/4 v13, 0x1

    goto :goto_d

    :cond_12
    const/4 v13, 0x0

    .line 4751
    :goto_d
    invoke-virtual {v0, v13, v2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4754
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4755
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4758
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :pswitch_c
    const/4 v1, -0x1

    .line 4644
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    const-string v0, "No property specified"

    .line 4646
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 4650
    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :goto_e
    move v6, v1

    goto/16 :goto_f

    :sswitch_11
    const-string v4, "invalid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_e

    :cond_14
    const/16 v6, 0x9

    goto/16 :goto_f

    :sswitch_12
    const-string v4, "counter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_e

    :cond_15
    const/16 v6, 0x8

    goto :goto_f

    :sswitch_13
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_e

    :cond_16
    const/4 v6, 0x7

    goto :goto_f

    :sswitch_14
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_e

    :cond_17
    const/4 v6, 0x6

    goto :goto_f

    :sswitch_15
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_e

    :cond_18
    const/4 v6, 0x5

    goto :goto_f

    :sswitch_16
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_e

    :cond_19
    const/4 v6, 0x4

    goto :goto_f

    :sswitch_17
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v6, 0x3

    goto :goto_f

    :sswitch_18
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v6, 0x2

    goto :goto_f

    :sswitch_19
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v6, 0x1

    goto :goto_f

    :sswitch_1a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v6, 0x0

    :goto_f
    packed-switch v6, :pswitch_data_2

    .line 4682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown get option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4679
    :pswitch_d
    iget v0, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_12

    .line 4673
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_12

    .line 4670
    :pswitch_f
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_12

    .line 4676
    :pswitch_10
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_12

    .line 4664
    :pswitch_11
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_12

    .line 4658
    :pswitch_12
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_12

    .line 4655
    :pswitch_13
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_12

    .line 4652
    :pswitch_14
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_12

    .line 4667
    :pswitch_15
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_12

    .line 4661
    :pswitch_16
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_12

    .line 4594
    :pswitch_17
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onShellCommand]cmd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onShellCommand]Build.TYPE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "user"

    .line 4596
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string/jumbo v0, "user build cannot use this cmd"

    .line 4597
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4600
    :cond_1e
    iget-object v6, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-nez v6, :cond_1f

    const-string v0, "Curretly, Not Adaptive Mode"

    .line 4601
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Curretly, Not Adaptive Mode"

    .line 4602
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4606
    :cond_1f
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 4607
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sleeptime input weekType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 4610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sleeptime input confidence:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 4612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sleeptime input bedTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 4614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sleeptime input wakeupTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_21

    .line 4616
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    if-eqz v4, :cond_21

    .line 4617
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    if-eqz v5, :cond_21

    .line 4618
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    if-eqz v6, :cond_21

    .line 4619
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_10

    :cond_20
    const/4 v13, 0x0

    goto :goto_11

    :cond_21
    :goto_10
    const/4 v13, 0x1

    :goto_11
    if-eqz v13, :cond_22

    const-string v0, "Args Error"

    .line 4622
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Args Error"

    .line 4623
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4626
    :cond_22
    iget-object v0, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->modifySleepPatternsForTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 4627
    :cond_23
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProtectBatteryMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 4631
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4632
    iget-object v0, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4633
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4769
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    :cond_24
    :goto_12
    const/4 v0, 0x0

    goto :goto_14

    .line 4638
    :pswitch_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 4639
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_25

    move v13, v3

    goto :goto_13

    :cond_25
    const/4 v13, 0x0

    .line 4641
    :goto_13
    invoke-virtual {v0, v13, v2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    goto :goto_12

    :goto_14
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x32165859 -> :sswitch_6
        -0x204dc1f9 -> :sswitch_5
        -0xb3c1dc -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x5c164189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_17
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3b9b7862 -> :sswitch_10
        -0x3532300e -> :sswitch_f
        -0x12f88745 -> :sswitch_e
        0xc22 -> :sswitch_d
        0x1c584 -> :sswitch_c
        0x2f2233 -> :sswitch_b
        0x3643d4 -> :sswitch_a
        0x6219b84 -> :sswitch_9
        0x391755fc -> :sswitch_8
        0x74cff1f7 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_1a
        -0x3532300e -> :sswitch_19
        -0x12f88745 -> :sswitch_18
        0xc22 -> :sswitch_17
        0x1c584 -> :sswitch_16
        0x2f2233 -> :sswitch_15
        0x3643d4 -> :sswitch_14
        0x6219b84 -> :sswitch_13
        0x391755fc -> :sswitch_12
        0x74cff1f7 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 1707
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const-string v2, "battery"

    .line 1708
    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1709
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryPropertiesRegistrar-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    const-string v2, "batteryproperties"

    .line 1710
    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1711
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->checkLongLifeBattery()V

    return-void
.end method

.method public parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 2

    const/4 p0, 0x0

    .line 4577
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "-f"

    .line 4578
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public final processValuesLocked(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 2636
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v2, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 2642
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v1}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    move-result v8

    iput v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-nez v8, :cond_2

    .line 2646
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2669
    :cond_1
    iput v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    goto :goto_2

    .line 2650
    :cond_2
    :goto_1
    iput v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2651
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v6, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    or-int/2addr v6, v4

    .line 2652
    iput v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2654
    :cond_3
    iget-boolean v6, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v6, :cond_4

    .line 2655
    iget v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v6, v2

    iput v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2657
    :cond_4
    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v5, :cond_5

    .line 2658
    iget v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v5, v1

    iput v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2661
    :cond_5
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v6, :cond_6

    .line 2662
    iget v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2665
    :cond_6
    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v5, :cond_7

    .line 2666
    iget v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2686
    :cond_7
    :goto_2
    :try_start_0
    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v7, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v9, v6, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v10, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v11, v6, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v12, v6, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v13, v6, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget v14, v6, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget-wide v1, v6, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v15, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v4, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v3, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v0, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iget-boolean v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    move/from16 v20, v6

    move v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v16, v15

    move-wide v14, v1

    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v19, v0

    invoke-interface/range {v5 .. v20}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJIIIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2705
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 2711
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz v0, :cond_8

    move-object/from16 v0, p0

    .line 2712
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz v1, :cond_9

    .line 2713
    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-wide v3, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget-wide v7, v5, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    move v5, v6

    move-wide v6, v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->updateChargingInfo(IJIJ)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    .line 2720
    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v1, :cond_a

    const-string v1, "/sys/class/power_supply/battery/wc_tx_id"

    .line 2721
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    .line 2723
    iput v1, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    :goto_4
    const/4 v1, 0x3

    if-nez p1, :cond_e

    .line 2727
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v3, v4, :cond_e

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v3, v4, :cond_e

    iget-boolean v3, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v3, v4, :cond_e

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v3, v4, :cond_e

    iget v3, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v3, v4, :cond_e

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-eq v2, v3, :cond_b

    sub-int/2addr v2, v3

    .line 2734
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_e

    :cond_b
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v2, v3, :cond_c

    sub-int/2addr v2, v3

    .line 2736
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_e

    :cond_c
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v3, v4, :cond_e

    iget v3, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v3, v4, :cond_e

    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-ne v4, v5, :cond_e

    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-ne v4, v5, :cond_e

    iget-boolean v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-ne v4, v5, :cond_e

    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    if-ne v4, v5, :cond_e

    iget v4, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    if-ne v4, v5, :cond_e

    :cond_d
    iget-boolean v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-ne v4, v5, :cond_e

    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v4, v5, :cond_e

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    if-ne v3, v4, :cond_e

    iget v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v3, v4, :cond_e

    iget v3, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v3, v4, :cond_e

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    if-ne v3, v4, :cond_e

    iget v2, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    iget v3, v0, Lcom/android/server/BatteryService;->mLastCharingState:I

    if-ne v2, v3, :cond_e

    iget v2, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    iget v3, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    if-eq v2, v3, :cond_2c

    .line 2759
    :cond_e
    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v4, 0x5

    const-wide/16 v5, 0x0

    if-eq v2, v3, :cond_12

    const/16 v7, 0x58a

    const/16 v8, 0x58d

    const/16 v9, 0x589

    if-nez v3, :cond_f

    .line 2762
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 2763
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 2765
    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, v9}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 2766
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2767
    iget v3, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2768
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2769
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2768
    invoke-virtual {v2, v7, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2770
    iget-object v3, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2774
    iget-wide v2, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-eq v2, v3, :cond_11

    .line 2775
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v2, v7

    .line 2777
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2778
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0xaaa

    .line 2777
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2780
    iput-wide v5, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const/4 v7, 0x1

    goto :goto_5

    :cond_f
    if-nez v2, :cond_11

    .line 2784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 2785
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2787
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v2, v10

    cmp-long v10, v10, v5

    if-eqz v10, :cond_10

    cmp-long v10, v2, v5

    if-eqz v10, :cond_10

    .line 2789
    new-instance v10, Landroid/metrics/LogMaker;

    invoke-direct {v10, v9}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2790
    invoke-virtual {v10, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2791
    iget v9, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v8, 0x58c

    .line 2793
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2792
    invoke-virtual {v10, v8, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2794
    iget v2, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 2795
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2794
    invoke-virtual {v10, v7, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2796
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2797
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x58b

    .line 2796
    invoke-virtual {v10, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2798
    iget-object v2, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v10}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2800
    :cond_10
    iput-wide v5, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    :cond_11
    move-wide v2, v5

    const/4 v7, 0x0

    .line 2802
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mLastPlugType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,mPlugType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,mHealthInfo.batteryLevel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,mHealthInfo.batteryChargeTimeToFullNowSeconds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-wide v9, v9, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/data/log/battery_service/sleep_charging_history"

    const-string v10, "Battery PlugType Changed"

    invoke-static {v9, v10, v8}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move-wide v2, v5

    const/4 v7, 0x0

    .line 2808
    :goto_6
    iget v8, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    if-gtz v8, :cond_13

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez v8, :cond_13

    .line 2809
    iput v8, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2813
    :cond_13
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v8, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v9, v10, :cond_14

    iget v10, v8, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v10, v11, :cond_14

    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v10, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v8, v10, :cond_14

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v8, v10, :cond_15

    :cond_14
    new-array v4, v4, [Ljava/lang/Object;

    .line 2818
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v4, v9

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v4, v9

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2819
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v1

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v8, v8, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v8, v4, v9

    const/16 v8, 0xaa3

    .line 2817
    invoke-static {v8, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2820
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 2822
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "debug.tracing.battery_status"

    .line 2820
    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    iget v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "debug.tracing.plug_type"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    :cond_15
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    const/16 v9, 0x64

    if-eq v4, v8, :cond_19

    .line 2830
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 2831
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2832
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v4, v8, v10}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v8, 0xaa2

    .line 2828
    invoke-static {v8, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2835
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ge v4, v8, :cond_17

    .line 2838
    iget-wide v10, v0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    sub-int/2addr v8, v4

    int-to-long v12, v8

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    const-wide/16 v12, 0xa

    cmp-long v4, v10, v12

    if-ltz v4, :cond_16

    .line 2840
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2843
    :cond_16
    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr v8, v10

    add-int/2addr v4, v8

    iput v4, v0, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    .line 2846
    :cond_17
    iget-wide v10, v0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    cmp-long v4, v10, v5

    if-ltz v4, :cond_18

    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    if-lt v4, v9, :cond_19

    .line 2848
    :cond_18
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x0

    .line 2849
    iput v4, v0, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    .line 2853
    :cond_19
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v4, :cond_1a

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v4, :cond_1a

    iget v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_1a

    .line 2857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v2, v7

    const/4 v7, 0x1

    .line 2861
    :cond_1a
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v4, :cond_1b

    .line 2863
    iget v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_1e

    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v10, 0x1

    if-eq v8, v10, :cond_1e

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v8, :cond_1e

    .line 2867
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    .line 2871
    :cond_1b
    iget v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    .line 2872
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    :cond_1c
    const/4 v4, 0x0

    .line 2873
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v8, v10, :cond_1d

    .line 2874
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    :cond_1d
    if-eqz p1, :cond_1e

    .line 2875
    iget v10, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v8, v10, :cond_1e

    .line 2878
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 2882
    :cond_1e
    :goto_7
    iget v4, v0, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v8, 0x1

    add-int/2addr v4, v8

    iput v4, v0, Lcom/android/server/BatteryService;->mSequence:I

    .line 2885
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    if-eqz v4, :cond_1f

    .line 2886
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    if-ne v4, v9, :cond_1f

    .line 2887
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    if-nez v4, :cond_1f

    .line 2888
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 2890
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "enable wireless charger menu in setting"

    invoke-static {v4, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v4, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v9, "show_wireless_charger_menu"

    const/4 v10, -0x2

    invoke-static {v4, v9, v8, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2896
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$21;

    invoke-direct {v8, v0}, Lcom/android/server/BatteryService$21;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2915
    :cond_1f
    iget v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v8, -0x1

    const-string/jumbo v9, "seq"

    const/high16 v10, 0x4000000

    if-eqz v4, :cond_21

    iget v11, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v11, :cond_20

    if-ne v11, v8, :cond_21

    .line 2917
    :cond_20
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2919
    iget v8, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2920
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/BatteryService$22;

    invoke-direct {v11, v0, v4}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_21
    if-nez v4, :cond_23

    .line 2947
    iget v4, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v4, :cond_22

    if-ne v4, v8, :cond_23

    .line 2949
    :cond_22
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2951
    iget v8, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2952
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/BatteryService$23;

    invoke-direct {v11, v0, v4}, Lcom/android/server/BatteryService$23;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2980
    :cond_23
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    .line 2981
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2982
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2983
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2984
    iget v8, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2985
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$24;

    invoke-direct {v9, v0, v4}, Lcom/android/server/BatteryService$24;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 2992
    :cond_24
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v4, :cond_25

    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v4, v8, :cond_25

    const/4 v4, 0x0

    .line 2994
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2995
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2996
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2997
    iget v8, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2998
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$25;

    invoke-direct {v9, v0, v4}, Lcom/android/server/BatteryService$25;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3010
    :cond_25
    :goto_9
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_26

    iget-object v9, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v9, v9, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    if-ge v9, v1, :cond_26

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-nez v4, :cond_26

    .line 3013
    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v8, v4, :cond_27

    .line 3014
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "skip send broadcast ACTION_BATTERY_CHANGED for 250ms"

    invoke-static {v4, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 3015
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 3016
    iget-object v8, v0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Landroid/os/Handler;

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 3019
    :cond_26
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 3020
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 3021
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3025
    :cond_27
    :goto_a
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    if-nez v4, :cond_28

    .line 3026
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 3029
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryEventIntentLocked()V

    .line 3031
    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ne v4, v8, :cond_29

    iget v4, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v4, v8, :cond_2a

    .line 3032
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    :cond_2a
    const/4 v4, 0x0

    .line 3035
    invoke-virtual {v0, v4}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 3038
    iget-object v4, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v4}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    if-eqz v7, :cond_2b

    cmp-long v4, v2, v5

    if-eqz v4, :cond_2b

    .line 3042
    invoke-virtual {v0, v2, v3}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 3045
    :cond_2b
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 3046
    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 3047
    iget-boolean v3, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 3048
    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 3049
    iget v3, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 3050
    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 3051
    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 3052
    iget v3, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 3053
    iget v3, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 3055
    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 3056
    iget v3, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 3057
    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    .line 3058
    iget v2, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastCharingState:I

    .line 3060
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 3061
    iget v3, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 3062
    iget-boolean v3, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 3063
    iget v3, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 3064
    iget v3, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    .line 3065
    iget-boolean v3, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 3066
    iget v3, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iput v3, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 3067
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 3068
    iget v2, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 3069
    iget v2, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 3074
    :cond_2c
    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_FULL_BATTERY_CYCLE:Z

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    .line 3075
    invoke-virtual {v0, v2}, Lcom/android/server/BatteryService;->logFullBatteryDurationLocked(Z)V

    goto :goto_b

    :cond_2d
    const/4 v2, 0x0

    .line 3080
    :goto_b
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v3, :cond_2e

    .line 3081
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V

    .line 3086
    :cond_2e
    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v3, :cond_2f

    .line 3087
    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v3, :cond_2f

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_2f

    const-string v4, "/sys/class/power_supply/battery/batt_misc_event"

    .line 3089
    invoke-static {v4, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 3094
    :cond_2f
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    int-to-long v4, v3

    iget-wide v6, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_30

    int-to-long v3, v3

    .line 3095
    iput-wide v3, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 3096
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3098
    :cond_30
    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    int-to-long v4, v3

    iget-wide v6, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_31

    int-to-long v3, v3

    .line 3099
    iput-wide v3, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 3100
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3105
    :cond_31
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-eq v3, v4, :cond_32

    .line 3106
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 3107
    invoke-virtual {v0, v3}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 3111
    :cond_32
    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_c

    :cond_33
    move v3, v2

    .line 3113
    :goto_c
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-eq v4, v3, :cond_34

    .line 3114
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 3115
    invoke-virtual {v0, v3}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 3119
    :cond_34
    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    goto :goto_d

    :cond_35
    move v3, v2

    .line 3121
    :goto_d
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    if-eq v2, v3, :cond_37

    .line 3122
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v2, :cond_36

    if-eqz v3, :cond_36

    .line 3123
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "notify wireless backpack on"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iput v1, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 3125
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v4, :cond_36

    const/16 v5, 0xb

    .line 3126
    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 3128
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget v4, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 3130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWirelessChargingMode(All): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :cond_36
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    :cond_37
    return-void
.end method

.method public final processValuesLocked(ZLjava/io/PrintWriter;)V
    .locals 0

    .line 4848
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 4850
    iget p0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    return-void
.end method

.method public final readBatteryAsocFromEfsLocked()J
    .locals 2

    const-string v0, "/efs/FactoryApp/asoc"

    .line 4355
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4357
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@readBatteryAsocFromEfsLocked: not exist"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 4360
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readBatteryInfo(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 4439
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "!@[BatteryInfo] "

    if-nez p0, :cond_1

    .line 4442
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : data is null."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4445
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4447
    :catch_0
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : data is \""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v0
.end method

.method public final readBatteryMaxCurrentFromEfsLocked()J
    .locals 5

    const-string v0, "/efs/FactoryApp/max_current"

    .line 4308
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/16 v1, -0x1

    .line 4310
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_0
    return-wide v1
.end method

.method public final readBatteryMaxTempFromEfsLocked()J
    .locals 5

    const-string v0, "/efs/FactoryApp/max_temp"

    .line 4279
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/16 v1, -0x1

    .line 4281
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_0
    return-wide v1
.end method

.method public final readBatteryUsageFromEfsLocked(Ljava/lang/String;)J
    .locals 4

    .line 4177
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x1

    .line 4179
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_0
    return-wide v0
.end method

.method public final readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 4454
    invoke-virtual {p0, p1, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readFromFile(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    .line 4461
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4463
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 4464
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz p2, :cond_0

    .line 4466
    sget-object p2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[BatteryInfo] readFromFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "/efs/FactoryApp/batt_discharge_level"

    .line 4468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "/efs/FactoryApp/batt_full_status_usage"

    .line 4469
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_1
    const/16 p2, 0x3e8

    const/16 v1, 0x3ef

    const/16 v2, 0x1b0

    .line 4470
    invoke-static {p1, v2, p2, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object p2, p0

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-object p2, p0

    .line 4475
    :goto_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[BatteryInfo] IOException in readFromFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 4478
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 4481
    :catch_2
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@[BatteryInfo] Exception in readFromFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move-object p0, p2

    :cond_3
    :goto_2
    return-object p0
.end method

.method public final registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 8

    const-string/jumbo v0, "led_indicator_charing"

    const/4 v1, 0x1

    const/4 v2, -0x2

    .line 2153
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    const-string/jumbo v3, "led_indicator_low_battery"

    .line 2154
    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 2155
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Led Charging Settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Led Low Battery Settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    const/4 v7, -0x1

    invoke-virtual {p1, v0, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2159
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2162
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v0, :cond_2

    .line 2163
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    const-string v0, "adaptive_fast_charging"

    .line 2164
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2169
    :cond_2
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "super_fast_charging"

    .line 2170
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 2171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@SuperFastCharging Settings = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    .line 2173
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2178
    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "show_wireless_charger_menu"

    .line 2179
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    const-string/jumbo v0, "wireless_fast_charging"

    .line 2180
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 2181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@WirelessFastCharging Settings = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 2183
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2186
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "refresh_rate_mode"

    .line 2187
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 2189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@RefreshRateMode Setting = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setRefreshRateMode(I)V

    .line 2191
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2198
    :cond_7
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "pass_through"

    .line 2199
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 2200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@mPassThroughSettingsEnable Settings = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    .line 2202
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$PassThroughSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2206
    :cond_9
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    const-string/jumbo v3, "protect_battery"

    if-eqz v0, :cond_a

    .line 2207
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    invoke-virtual {p1, v0, v4, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2208
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2209
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 2210
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mProtectBatteryMode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "battery_protection_threshold"

    .line 2212
    sget v3, Lcom/android/server/BatteryService;->DEFAULT_PROTECTION_THRESHOLD_LEVEL:I

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mProtectionThreshold:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ltc_highsoc_threshold"

    const/16 v3, 0x5f

    .line 2215
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLtcHighThreshold:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/efs/Battery/batt_ltc_highsoc_threshold"

    .line 2217
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    invoke-static {v1, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ltc_highsoc_duration"

    const/16 v3, 0x2760

    .line 2219
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLtcHighSocDuration:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/efs/Battery/batt_ltc_highsoc_duration"

    .line 2221
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    invoke-static {v1, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ltc_release_threshold"

    const/16 v3, 0x4b

    .line 2223
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLtcReleaseThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/efs/Battery/batt_ltc_release_threshold"

    .line 2225
    iget v1, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2227
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    goto :goto_8

    .line 2229
    :cond_a
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    if-eqz v0, :cond_d

    .line 2231
    invoke-static {p1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_6
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 2232
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2234
    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_7

    :cond_c
    move v1, v4

    :goto_7
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@mFullCapacityEnable Settings = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2237
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    invoke-virtual {p1, v0, v4, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2243
    :cond_d
    :goto_8
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x1e

    const-string/jumbo v1, "tx_battery_limit"

    .line 2244
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Tx Battery Limit Settings = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iget v0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingTxBatteryLimit(I)V

    .line 2247
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    invoke-virtual {p1, v0, v4, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_e
    const-string v0, "/sys/class/power_supply/battery/wc_param_info"

    .line 2253
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2254
    iget v1, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    if-eq v1, v7, :cond_f

    if-eqz v0, :cond_f

    .line 2255
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wireless_wc_write"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2256
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-virtual {p1, v1, v4, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2257
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setWcParamInfo(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final registerHealthCallback()V
    .locals 8

    const-string v0, "HealthInitWrapper"

    .line 2264
    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 2267
    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2275
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    const-string v0, "HealthInitWaitUpdate"

    .line 2278
    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 2282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2283
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2284
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    if-nez v3, :cond_0

    .line 2285
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2288
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2290
    :catch_0
    :try_start_3
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2294
    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2296
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: Waited "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms and received the update."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    .line 2294
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 2272
    :try_start_5
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    throw p0

    :catch_2
    move-exception p0

    .line 2269
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "health: cannot register callback. (RemoteException)"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2275
    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 2276
    throw p0
.end method

.method public final resetBattery(ZLjava/io/PrintWriter;)V
    .locals 3

    .line 4822
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4823
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 4827
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 4830
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 4832
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    if-eqz p1, :cond_1

    .line 4833
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 4834
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    :cond_1
    return-void
.end method

.method public final saveBatteryInfo(Ljava/lang/String;J)I
    .locals 0

    .line 4488
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public final saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 4492
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final saveFullBatteryDuration(J)V
    .locals 6

    .line 4260
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter v0

    .line 4261
    :try_start_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveFullBatteryDuration : duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/efs/FactoryApp/batt_full_status_usage"

    .line 4262
    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    div-long/2addr p1, v4

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    const-string p1, "/efs/FactoryApp/batt_full_status_usage"

    .line 4263
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4264
    iget p1, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    const-string p1, "/sys/class/power_supply/sec_auth/batt_full_status_usage"

    .line 4265
    iget-wide v2, p0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4267
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveFullBatteryDuration : mSavedFullBatteryDuration(min)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    sget-boolean p1, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    if-eqz p1, :cond_1

    const-string p1, "/sys/class/power_supply/battery/battery_cycle"

    .line 4271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/BatteryService;->mSavedFullBatteryDuration:J

    const-wide/16 v3, 0x2d0

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendBatteryChangedIntentLocked()V
    .locals 9

    .line 3140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x60000000

    .line 3141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    .line 3146
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3148
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 3149
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 3150
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3154
    iget-object v5, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 3155
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v8, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-nez v8, :cond_1

    iget-boolean v8, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-nez v8, :cond_1

    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v5, :cond_0

    goto :goto_0

    .line 3159
    :cond_0
    iput v6, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x2

    .line 3156
    iput v5, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 3161
    :goto_1
    iput v6, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    goto :goto_2

    .line 3163
    :cond_2
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 3164
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 3168
    :goto_2
    iget v5, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    const-string/jumbo v8, "pogo_plugged"

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    if-eq v2, v3, :cond_6

    .line 3169
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v2, :cond_4

    const-string v2, "device_provisioned"

    .line 3170
    invoke-static {v4, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3171
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "kids_home_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto :goto_3

    :cond_4
    move v2, v7

    move v3, v2

    :goto_3
    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 3175
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3176
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3177
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$26;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$26;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 3187
    :cond_5
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device_provisioned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "kids_home_mode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 3196
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    :goto_5
    const-string/jumbo v2, "seq"

    .line 3200
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3201
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3202
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3203
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3204
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "battery_low"

    .line 3205
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    .line 3206
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "icon-small"

    .line 3207
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "plugged"

    .line 3208
    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3209
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v2, "voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3210
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v2, "temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3212
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v2, "technology"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "invalid_charger"

    .line 3213
    iget v2, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3214
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-string/jumbo v2, "max_charging_current"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3216
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-string/jumbo v2, "max_charging_voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3219
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v2, "charge_counter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3220
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string v2, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3221
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string v2, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3224
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    const-string/jumbo v2, "online"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3225
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    const-string v2, "charge_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3226
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-string/jumbo v2, "power_sharing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hv_charger"

    .line 3227
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3228
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    const-string v2, "charger_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "capacity"

    .line 3229
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3230
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    const-string v2, "current_now"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3231
    iget v1, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3232
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v2, "misc_event"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3233
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    const-string v2, "current_event"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3242
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending ACTION_BATTERY_CHANGED: level:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", health:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remain:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-wide v4, v4, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ac:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", usb:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wireless:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pogo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", misc:0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 3250
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", charge_type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", charger_type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", voltage:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", temperature:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", online:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", charging_status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cycle_count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current_avg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ps:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hvc:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", capacity:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current_event:0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 3262
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", current_now:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mcc:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mcv:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cc:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", present:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", scale:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", technology:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3242
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3275
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 3276
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$27;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$27;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public final sendBatteryEventIntentLocked()V
    .locals 5

    .line 3287
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/BatteryService;->mWcTxId:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3297
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    const/high16 v2, 0x24000000

    if-eq v0, v1, :cond_2

    .line 3298
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "water"

    .line 3301
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3303
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$28;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/server/BatteryService$28;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3310
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 3314
    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-eq v0, v1, :cond_4

    .line 3316
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3321
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v2, "misc_event"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "sec_plug_type"

    .line 3322
    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "wc_tx_id"

    .line 3323
    iget v2, p0, Lcom/android/server/BatteryService;->mWcTxId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3325
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$29;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final sendBatteryLevelChangedIntentLocked()V
    .locals 9

    .line 3559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string/jumbo v3, "seq"

    .line 3561
    iget v4, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3562
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3563
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3564
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3565
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "battery_low"

    .line 3566
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    .line 3567
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "plugged"

    .line 3568
    iget v5, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3569
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3570
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3571
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v5, "charge_counter"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    .line 3572
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3573
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string v5, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3574
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string v5, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3576
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 3577
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3579
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 3580
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_2

    .line 3585
    iget-wide v3, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v5, v1, v3

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    add-long/2addr v3, v7

    sub-long v0, v3, v1

    .line 3587
    :goto_0
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final sendBroadcastDeterioration(Z)V
    .locals 8

    const-string v0, "/efs/FactoryApp/cisd_data"

    .line 3357
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3358
    invoke-virtual {p0, v0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, " "

    .line 3360
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    .line 3362
    :try_start_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3364
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDeteriorationIntentLocked highSwellingCnt"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "/efs/FactoryApp/bsoh"

    .line 3368
    invoke-static {v1}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3369
    invoke-virtual {p0, v1, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3372
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 3374
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDeteriorationIntentLocked nfe"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide v1, 0x4059400000000000L    # 101.0

    :goto_1
    const/16 v3, 0x1388

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-gt v0, v3, :cond_3

    const-wide v6, 0x404b800000000000L    # 55.0

    .line 3380
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_3

    .line 3381
    :cond_3
    :goto_2
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcastDeterioration hsc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bsoh : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :goto_3
    const-wide/16 v1, 0x2710

    if-eqz p1, :cond_4

    goto :goto_5

    .line 3391
    :cond_4
    iget p1, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    const-wide/16 v6, 0xa

    if-eq p1, v0, :cond_6

    .line 3392
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz p1, :cond_6

    if-ne v0, v4, :cond_6

    .line 3394
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move-wide v1, v6

    .line 3397
    :goto_4
    iput v0, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    move-wide v1, v6

    :goto_5
    if-eqz v5, :cond_7

    .line 3402
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "deterioration"

    .line 3403
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 3404
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3405
    sget-object v3, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3407
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$30;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/server/BatteryService$30;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public final sendBroadcastDeteriorationLegacy(Z)V
    .locals 7

    .line 3419
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    const-wide/16 v5, 0xa

    if-eqz p1, :cond_0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 3430
    :cond_0
    iget p1, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    if-eq p1, v0, :cond_3

    .line 3431
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz p1, :cond_1

    const/16 p1, 0xf

    if-ne v0, p1, :cond_1

    .line 3433
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    move-wide v2, v5

    .line 3437
    :goto_0
    iput v0, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    goto :goto_1

    :cond_3
    move v1, v4

    move-wide v2, v5

    :goto_1
    if-eqz v1, :cond_4

    .line 3441
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "deterioration"

    .line 3442
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3443
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3444
    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3445
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$31;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/server/BatteryService$31;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public final sendDeteriorationIntentLocked(Z)V
    .locals 2

    const-string/jumbo v0, "r0q,r0s,g0q,g0s,b0q,b0s"

    .line 3341
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3342
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->sendBroadcastDeterioration(Z)V

    goto :goto_0

    .line 3344
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->sendBroadcastDeteriorationLegacy(Z)V

    :goto_0
    return-void
.end method

.method public final sendEnqueuedBatteryLevelChangedEvents()V
    .locals 4

    .line 3593
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3594
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3595
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 3596
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3597
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 3598
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.os.extra.EVENTS"

    .line 3599
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3601
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3603
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    return-void

    :catchall_0
    move-exception p0

    .line 3596
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendOTGIntentLocked()V
    .locals 3

    .line 3459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3461
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$32;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$32;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendScreenState()V
    .locals 1

    .line 3844
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    const-string v0, "/sys/class/power_supply/battery/lcd"

    invoke-static {v0, p0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final sendWirelessPowerSharingIntentLocked()V
    .locals 9

    .line 3473
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3477
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    const/high16 v6, 0x10000000

    if-eq v5, v2, :cond_3

    .line 3478
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "enabled"

    .line 3479
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3480
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3481
    sget-object v7, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3482
    iget-object v7, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$33;

    invoke-direct {v8, p0, v2, v5}, Lcom/android/server/BatteryService$33;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3489
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3492
    :goto_1
    iput v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 3493
    iget-object v5, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v5, :cond_2

    const/16 v7, 0xb

    .line 3494
    invoke-virtual {v5, v7, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 3496
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWirelessChargingMode(DEVID_SPEN): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v2, :cond_3

    .line 3499
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v2, :cond_3

    .line 3500
    iget v5, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 3502
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWirelessChargingMode(TSP): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4

    move v3, v4

    .line 3510
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    if-eq v2, v3, :cond_5

    .line 3511
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "connected"

    .line 3512
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3513
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3514
    sget-object v4, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3515
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/BatteryService$34;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/server/BatteryService$34;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3533
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 3537
    :cond_5
    iget v2, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    if-eq v1, v2, :cond_6

    .line 3538
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "tx_event"

    .line 3539
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3540
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3541
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$35;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/BatteryService$35;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3552
    iput v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    .line 3554
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAdaptiveFastCharging(Z)V
    .locals 4

    .line 3733
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    iget v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    xor-int/lit8 v2, p1, 0x1

    const-string v3, "afc"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    .line 3736
    iget-object v0, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    xor-int/lit8 v1, p1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3737
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "success to set AFC sysfs as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3739
    :cond_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "fail to set AFC sysfs"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setBatteryLevel(IZ)V
    .locals 2

    .line 4793
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 4797
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 4800
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput p1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/4 p1, 0x1

    .line 4801
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 4802
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setCallWirelessPowerSharingExternelEvent(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    .line 1088
    iget-object p1, p0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 1089
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 1090
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_0
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call start, isVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    if-eqz p1, :cond_1

    .line 1095
    invoke-virtual {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_1

    .line 1098
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_1

    .line 1102
    :cond_2
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call end, isVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1104
    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_0

    .line 1106
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 1108
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    :goto_1
    return-void
.end method

.method public final setChargerAcOnline(ZZ)V
    .locals 2

    .line 4780
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 4784
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 4787
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    const/4 p1, 0x1

    .line 4788
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 4789
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setHiccupDisable()Z
    .locals 2

    const-string v0, "/sys/class/sec/switch/hiccup"

    const-string v1, "DISABLE"

    .line 3770
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOTGEnableDisable(Z)Z
    .locals 3

    const-string v0, "/sys/class/power_supply/otg/online"

    const-wide/16 v1, 0x0

    .line 3720
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public setPassThrough(Z)V
    .locals 3

    const-string v0, "/sys/class/power_supply/battery/pass_through"

    const-wide/16 v1, 0x0

    .line 3760
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3761
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "success to set PassThrough sysfs as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3763
    :cond_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "fail to set PassThrough sysfs"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setRefreshRateMode(I)V
    .locals 0

    const-string p0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 2406
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 2408
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setResponseHiccupEvent()V
    .locals 1

    const-string p0, "/sys/class/power_supply/battery/batt_misc_event"

    const/16 v0, 0x2000

    .line 3774
    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setSleepCharging(Z)V
    .locals 3

    .line 1424
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSleepCharging]on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery/batt_full_capacity"

    if-eqz p1, :cond_0

    .line 1426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SLEEP"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    .line 1428
    invoke-static {v0, p0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setSuperFastCharging(Z)V
    .locals 4

    .line 3747
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    iget v1, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    xor-int/lit8 v2, p1, 0x1

    const-string/jumbo v3, "sfc"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    const-string v1, "/sys/class/power_supply/battery/pd_disable"

    const-wide/16 v2, 0x0

    .line 3750
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3751
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "success to set SFC sysfs as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3753
    :cond_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "fail to set SFC sysfs"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setWcParamInfo(Ljava/lang/String;)V
    .locals 3

    .line 2416
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v0, 0x1

    const-string/jumbo v1, "wc param"

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    .line 2417
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wireless_wc_write"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWirelessChargingState(Z)V
    .locals 6

    .line 3818
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wirelessChargingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", notifyWirelessEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    const-string v3, "/sys/class/sec/switch/wireless"

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 3820
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-nez v5, :cond_0

    const-string/jumbo p1, "notify wireless on"

    .line 3821
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    iput v4, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 3823
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 3824
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3825
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-eqz p1, :cond_1

    .line 3826
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-nez p1, :cond_1

    const-string/jumbo p1, "notify wireless off"

    .line 3827
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3828
    iput p1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 3829
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 3830
    invoke-virtual {p0, v3, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 3833
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    .line 3834
    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 3836
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget v1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, v4, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 3838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWirelessChargingMode(All): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final setWirelessFastCharging(Z)V
    .locals 3

    .line 2390
    iget v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2391
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    xor-int/lit8 v1, p1, 0x1

    const-string/jumbo v2, "wfc"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    :cond_0
    const-string p0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 2397
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 2399
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setWirelessPowerSharing(Z)Z
    .locals 3

    const-string v0, "/sys/class/power_supply/battery/wc_tx_en"

    const-wide/16 v1, 0x0

    .line 3780
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public final setWirelessPowerSharingExternelEventInternal(II)V
    .locals 4

    .line 3784
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3785
    :try_start_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWirelessPowerSharingExternelEventInternal packageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    iget v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    not-int p1, p1

    and-int/2addr p1, v1

    or-int/2addr p1, p2

    if-eq p1, v1, :cond_0

    const-string p2, "/sys/class/power_supply/battery/ext_event"

    .line 3792
    invoke-static {p2, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 3793
    iput p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 3795
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

.method public final setWirelessPowerSharingTxBatteryLimit(I)V
    .locals 0

    const-string p0, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    .line 3799
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final shouldSendBatteryLowLocked()Z
    .locals 5

    .line 2422
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2423
    :goto_0
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    .line 2431
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v4, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v4, :cond_3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-gt v3, v4, :cond_2

    iget p0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    if-le v0, p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public final shouldShutdownLocked()Z
    .locals 5

    .line 2441
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 2444
    :cond_1
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez v1, :cond_2

    return v4

    .line 2449
    :cond_2
    iget-boolean v2, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    if-nez v2, :cond_3

    return v4

    :cond_3
    if-nez v1, :cond_5

    .line 2454
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_5

    .line 2455
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    if-ltz v0, :cond_4

    const/16 v0, 0xf

    .line 2456
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2457
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ BatteryService plug type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " battery current avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", so doesn\'t shutdown"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 2464
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v0, :cond_6

    .line 2465
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 2466
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2467
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "Emergency mode is on so doesn\'t shutdown"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    move v3, v4

    :cond_6
    return v3
.end method

.method public final shutdownIfNoPowerLocked()V
    .locals 3

    .line 2490
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$19;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$19;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2528
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-nez v0, :cond_2

    .line 2529
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2530
    :cond_1
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ BatteryService mBootCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " am.isSystemReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2531
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", so doesn\'t shutdown"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2530
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final startCallThread()V
    .locals 2

    .line 1113
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    .line 1114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1116
    new-instance v0, Lcom/android/server/BatteryService$10;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;

    return-void
.end method

.method public final suspendBatteryInput()V
    .locals 1

    .line 4839
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 4843
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    .line 4844
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    return-void

    .line 4840
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "battery suspend_input is only supported on debuggable builds"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final syncBatteryInfoAuthEfs()V
    .locals 19

    move-object/from16 v0, p0

    .line 4024
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[syncBatteryInfoAuthEfs]mIsAuthQrEqualsEfs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mIsAuthQrEqualsEfs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 4026
    invoke-virtual {v0, v2}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4027
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const-string v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[syncBatteryInfoAuthEfs]authFirstUseDate valid => sync to efs"

    .line 4028
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/efs/FactoryApp/batt_beginning_date"

    .line 4029
    invoke-virtual {v0, v3, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 4030
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    goto :goto_0

    :cond_0
    const-string v3, "[syncBatteryInfoAuthEfs]authFirstUseDate invalid => Not sync to efs"

    .line 4032
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 4033
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    .line 4035
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authFirstUseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,mShouldCheckFirstUseDateRegularly:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/log/battery_service/battery_service_main_history"

    const-string/jumbo v4, "syncBatteryInfoAuthEfs"

    invoke-static {v3, v4, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4038
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mIsAuthQrEqualsEfs:Z

    const-string v5, "/efs/FactoryApp/batt_full_status_usage"

    const-string v6, "/efs/FactoryApp/asoc"

    const-string v7, "/efs/FactoryApp/batt_discharge_level"

    const-string v8, "/sys/class/power_supply/sec_auth/batt_full_status_usage"

    const-string v9, "/sys/class/power_supply/sec_auth/asoc"

    const-wide/16 v10, 0x0

    const-wide/32 v12, 0xffffff

    const-string v14, "/sys/class/power_supply/sec_auth/batt_discharge_level"

    if-eqz v2, :cond_8

    .line 4039
    invoke-virtual {v0, v7}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked(Ljava/lang/String;)J

    move-result-wide v15

    .line 4040
    invoke-virtual {v0, v14}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v17

    cmp-long v2, v17, v12

    if-eqz v2, :cond_2

    cmp-long v2, v17, v15

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "[syncBatteryInfoAuthEfs]authDischargeLevel is worse"

    .line 4047
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v3, v17

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "[syncBatteryInfoAuthEfs]efsDischargeLevel is worse"

    .line 4044
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v15

    .line 4049
    :goto_2
    invoke-virtual {v0, v7, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4050
    invoke-virtual {v0, v14, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4052
    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_FULL_BATTERY_CYCLE:Z

    if-eqz v2, :cond_5

    .line 4053
    invoke-virtual {v0, v5}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked(Ljava/lang/String;)J

    move-result-wide v2

    .line 4054
    invoke-virtual {v0, v8}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v4, v14, v12

    if-eqz v4, :cond_4

    cmp-long v4, v14, v2

    if-gtz v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "[syncBatteryInfoAuthEfs]authFullStatusUsage is worse"

    .line 4061
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v14

    goto :goto_4

    :cond_4
    :goto_3
    const-string v4, "[syncBatteryInfoAuthEfs]efsFullStatusUsage is worse"

    .line 4058
    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    :goto_4
    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4064
    invoke-virtual {v0, v8, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4067
    :cond_5
    invoke-virtual {v0, v9}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v2

    .line 4068
    invoke-virtual {v0, v6}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v7, v2, v10

    if-ltz v7, :cond_7

    const-wide/16 v7, 0x64

    cmp-long v7, v2, v7

    if-gtz v7, :cond_7

    cmp-long v7, v2, v4

    if-ltz v7, :cond_6

    goto :goto_5

    :cond_6
    const-string v4, "[syncBatteryInfoAuthEfs]authAsoc is worse"

    .line 4075
    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    :goto_5
    const-string v2, "[syncBatteryInfoAuthEfs]efsAsoc is worse"

    .line 4072
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 4077
    :goto_6
    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4078
    invoke-virtual {v0, v9, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    goto :goto_a

    :cond_8
    const-string v2, "/sys/class/power_supply/sec_auth/qr_code"

    .line 4080
    invoke-virtual {v0, v2}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/efs/FactoryApp/HwParamBattQR"

    if-eqz v2, :cond_9

    .line 4082
    invoke-virtual {v0, v3, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    const-string v2, "[syncBatteryInfoAuthEfs]QR read fail"

    .line 4084
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    .line 4085
    invoke-virtual {v0, v3, v1}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    :goto_7
    invoke-virtual {v0, v14}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v12

    const-wide/16 v12, 0x1

    if-eqz v3, :cond_a

    cmp-long v3, v1, v10

    if-gez v3, :cond_b

    .line 4091
    :cond_a
    invoke-virtual {v0, v14, v12, v13}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v1, v12

    .line 4093
    :cond_b
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4095
    invoke-virtual {v0, v8}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0xffffff

    cmp-long v3, v1, v3

    if-eqz v3, :cond_d

    cmp-long v3, v1, v10

    if-gez v3, :cond_c

    goto :goto_8

    :cond_c
    move-wide v12, v1

    goto :goto_9

    .line 4098
    :cond_d
    :goto_8
    invoke-virtual {v0, v8, v12, v13}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4100
    :goto_9
    invoke-virtual {v0, v5, v12, v13}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    .line 4102
    invoke-virtual {v0, v9}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0xffff

    cmp-long v3, v1, v3

    if-eqz v3, :cond_e

    cmp-long v3, v1, v10

    if-gez v3, :cond_f

    :cond_e
    const-wide/16 v1, 0x64

    .line 4105
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_f
    move-wide v3, v1

    .line 4107
    invoke-virtual {v0, v6, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :goto_a
    return-void
.end method

.method public final syncBatteryInfoSbpFgEfs()V
    .locals 3

    .line 4112
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[syncBatteryInfoSbpFgEfs]mIsSbpFgQrEqualsEfs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mIsSbpFgQrEqualsEfs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mIsSbpFgQrEqualsEfs:Z

    if-nez v1, :cond_1

    const-string v1, "/sys/class/power_supply/sbp-fg/qr_code"

    .line 4115
    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/efs/FactoryApp/HwParamBattQR"

    if-eqz v1, :cond_0

    .line 4117
    invoke-virtual {p0, v2, v1}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "[syncBatteryInfoSbpFgEfs]QR read fail"

    .line 4119
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 4120
    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "/sys/class/power_supply/sbp-fg/first_use_date"

    .line 4123
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/efs/FactoryApp/batt_beginning_date"

    .line 4125
    invoke-virtual {p0, v1, v0}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final unplugBattery(ZLjava/io/PrintWriter;)V
    .locals 2

    .line 4806
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 4810
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 4813
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 4814
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 4815
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 4816
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    const/4 v0, 0x1

    .line 4817
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 4818
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final update(Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 5

    .line 2562
    iget-object v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    const-string v1, "HealthInfoUpdate"

    .line 2564
    invoke-static {v1}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    const-string v1, "BatteryChargeCounter"

    .line 2566
    iget v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "BatteryCurrent"

    .line 2568
    iget v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "PlugType"

    .line 2572
    invoke-static {p1}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    move-result v2

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "BatteryStatus"

    .line 2575
    iget v2, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2577
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2578
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_0

    .line 2579
    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2582
    iput-object p1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    const/4 p1, 0x0

    .line 2586
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 2587
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 2592
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {p0, p1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 2595
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2596
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    .line 2595
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, -0x2

    const-string v1, "adaptive_fast_charging"

    const/4 v2, 0x1

    .line 3726
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 3727
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@AdaptiveFastCharging Settings = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    return-void
.end method

.method public final updateBatteryDate()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1829
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1831
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "[updateBatteryDate]Exception"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v2, v1

    .line 1834
    :goto_0
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateBatteryDate]isSetupWizardCompleted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    return-void

    .line 1839
    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_6

    const-string/jumbo v2, "persist.sys.setupwizard.user_setup_complete"

    .line 1840
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateBatteryDate]isSetupWizardCompletedByUser:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "BatteryFirstUseDate"

    const-string v6, "/data/log/battery_service/battery_service_main_history"

    if-nez v2, :cond_2

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSetupWizardCompletedByUser:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    return-void

    :cond_2
    const-string/jumbo v2, "persist.sys.setupwizard.jig_on_wifisetup"

    .line 1849
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1850
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateBatteryDate]isSetupWizardSkipWifi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSetupWizardSkipWifi:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    return-void

    :cond_4
    const-string v2, "/sys/class/power_supply/sec_auth/use_date_wlock"

    .line 1858
    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v2, v7

    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v1

    .line 1859
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateBatteryDate]isDateLockLocked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDateLockLocked:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    return-void

    .line 1868
    :cond_6
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    const/16 v5, 0x8

    if-ne v2, v4, :cond_8

    const-string v2, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 1869
    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1870
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_7

    const-string v6, "20"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    .line 1871
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateBatteryDate]isFirstUseDateExist:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    .line 1873
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    goto :goto_4

    :cond_8
    const-string v0, "/efs/FactoryApp/batt_beginning_date"

    .line 1876
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    :cond_9
    :goto_4
    if-nez v0, :cond_c

    .line 1881
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    if-ne v0, v4, :cond_a

    .line 1882
    invoke-static {}, Lcom/android/server/battery/BattUtils;->getCurrentNetworkDateStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1884
    :cond_a
    invoke-static {}, Lcom/android/server/battery/BattUtils;->getCurrentCalenderStr()Ljava/lang/String;

    move-result-object v0

    .line 1886
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateBatteryDate]currentBatteryDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b

    .line 1889
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 1890
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->writeBatteryDate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1891
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@[B_DATE] succeed : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const-string p0, "!@[B_DATE] writing fail"

    .line 1893
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    const-string p0, "!@[B_DATE] isEfsExist"

    .line 1896
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method public final updateBatteryWarningLevelLocked()V
    .locals 3

    .line 2302
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2303
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 2305
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 2315
    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v0, v1, :cond_0

    .line 2316
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 2318
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    const/4 v0, 0x1

    .line 2320
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final writeBatteryDate(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "ril.rfcal_date"

    .line 1902
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ril.manufacturedate"

    .line 1903
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1904
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[writeBatteryDate]strRfCalDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,strManufactureDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1909
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_0

    const-string v4, "."

    const-string v5, ""

    .line 1912
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v4, 0xa

    const/16 v5, 0x8

    if-eqz v0, :cond_1

    .line 1915
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 1916
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "!@[B_DATE] rfcal date will be used for compare"

    .line 1917
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_5

    .line 1918
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1919
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "!@[B_DATE] manufacture date will be used for compare"

    .line 1920
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-gt v0, p1, :cond_4

    .line 1935
    iput p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryBeginningDate:I

    const-string v0, "/efs/FactoryApp/batt_beginning_date"

    .line 1936
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1937
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    if-ne v0, v4, :cond_2

    const-string v0, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 1938
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1939
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z

    goto :goto_1

    :cond_2
    const/16 p0, 0x14

    if-ne v0, p0, :cond_3

    const-string p0, "/sys/class/power_supply/sbp-fg/first_use_date"

    .line 1941
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1943
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "write batteryDate:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/data/log/battery_service/battery_service_main_history"

    const-string v0, "BatteryFirstUseDate"

    invoke-static {p1, v0, p0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "!@[B_DATE] date error"

    .line 1946
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    :try_start_1
    const-string p1, "!@[B_DATE] fail - no date for compare"

    .line 1922
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget p1, p0, Lcom/android/server/BatteryService;->mBatteryType:I

    if-ne p1, v4, :cond_6

    .line 1924
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mShouldCheckFirstUseDateRegularly:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return v3

    :catch_0
    move-exception p0

    .line 1929
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "NumberFormatException"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v3
.end method

.method public final writeProtectBatteryValues()V
    .locals 10

    .line 1388
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeProtectBatteryValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget v0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    const-string v1, "/efs/Battery/batt_full_capacity"

    const-string v2, "/efs/Battery/batt_soc_rechg"

    const-string v3, "/sys/class/power_supply/battery/batt_soc_rechg"

    const/16 v4, 0x64

    const-string v5, "/sys/class/power_supply/battery/batt_full_capacity"

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    const-string v7, " "

    const/4 v8, 0x1

    if-eq v0, v8, :cond_2

    const/4 v9, 0x2

    if-eq v0, v9, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    invoke-static {v5, v4}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1414
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1415
    invoke-static {v3, v8}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1416
    invoke-static {v2, v8}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1405
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HIGHSOC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1406
    invoke-static {v3, v6}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1408
    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1398
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "OPTION"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1399
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-static {v1, p0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1400
    invoke-static {v3, v6}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1401
    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1391
    :cond_3
    invoke-static {v5, v4}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1392
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1393
    invoke-static {v3, v6}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1394
    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final writeToFile(Ljava/lang/String;J)I
    .locals 0

    .line 4496
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final writeToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 p0, -0x1

    const/4 v0, 0x0

    .line 4502
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x0

    .line 4504
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string/jumbo v0, "line.separator"

    .line 4505
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 4507
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@[BatteryInfo] writeToFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 4510
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "/efs/FactoryApp/batt_beginning_date"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string p2, "/efs/FactoryApp/HwParamBattQR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_2
    const-string p2, "/efs/FactoryApp/asoc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_1

    :sswitch_3
    const-string p2, "/efs/FactoryApp/batt_full_status_usage"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_1

    :sswitch_4
    const-string p2, "/efs/FactoryApp/batt_discharge_level"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v5

    goto :goto_1

    :cond_0
    :goto_0
    move p2, p0

    :goto_1
    const/16 v6, 0x1b0

    const/16 v7, 0x3e8

    if-eqz p2, :cond_2

    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_2

    .line 4518
    :cond_1
    invoke-static {p1, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_2

    :cond_2
    const/16 p2, 0x3ef

    .line 4514
    invoke-static {p1, v6, v7, p2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v0

    :catch_0
    move-object v0, v1

    .line 4524
    :catch_1
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p2, "!@[BatteryInfo] IOException in writeToFile"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 4527
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 4530
    :catch_2
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p2, "!@[BatteryInfo] Exception in writeToFile"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b7c8ded -> :sswitch_4
        0xebbc010 -> :sswitch_3
        0x3657f712 -> :sswitch_2
        0x478e2b92 -> :sswitch_1
        0x5f3e5404 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToFile(Ljava/lang/String;JZ)Z
    .locals 3

    .line 3885
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3887
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3888
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 3894
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "rw"

    invoke-direct {v1, v2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3900
    :try_start_1
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p4, :cond_1

    const-string p0, "1"

    .line 3901
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "0"

    goto :goto_0

    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 3902
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 3896
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    .line 3904
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 3906
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 3908
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v0
.end method
