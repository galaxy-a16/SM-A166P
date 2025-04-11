.class public Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "DesktopModeService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAllowPogoInitialDialog:Z

.field public mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

.field public mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

.field public mBootInitBlocker:Lcom/android/server/desktopmode/BootInitBlocker;

.field public final mContext:Landroid/content/Context;

.field public mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field public mCurrentUserId:I

.field public mDexManager:Lcom/samsung/android/knox/dex/DexManager;

.field public mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

.field public mDockManager:Lcom/android/server/desktopmode/DockManager;

.field public mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

.field public mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

.field public mEnteredViaWirelessDex:Z

.field public final mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public final mHandler:Landroid/os/Handler;

.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public mIsBootComplete:Z

.field public mIsBootInitBlockerRegistered:Z

.field public mIsDesktopModeEnablingOrEnabled:Z

.field public mIsDexSourceEntry:Z

.field public mIsNewDexEnabled:Z

.field public mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

.field public final mLock:Ljava/lang/Object;

.field public mMcfManager:Lcom/android/server/desktopmode/McfManager;

.field public mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field public final mNewDeXSettingObserver:Landroid/database/ContentObserver;

.field public mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

.field public final mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

.field public mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public mShowModeChangeScreen:Z

.field public mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field public mUiManager:Lcom/android/server/desktopmode/UiManager;

.field public mUserRequest:I

.field public mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field public mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

.field public final mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

.field public mWirelessDexSetting:I


# direct methods
.method public static synthetic $r8$lambda$Ts2KYyxSEP81RGlpbZAI6q28Y_g(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$scheduleUpdateDesktopMode$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sukTVIQFEE7bEN-TsbqcLrq0Tv0(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$sendMessage$2(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yX1Ks3_TlIb6emFXOmj9IS7_3TQ(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$sendMessage$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ynkYwA8pGc7Bat2Bd_UcRO-DNKw(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$scheduleUpdateDesktopMode$1(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHwManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/HardwareManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDexSourceEntry(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDexSourceEntry:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessDexManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/WirelessDexManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexSetting:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAllowPogoInitialDialog(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBootComplete(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBootInitBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootInitBlockerRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDexSourceEntry(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDexSourceEntry:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/desktopmode/DesktopModeService;Landroid/database/ContentObserver;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexSetting:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissDialog(Lcom/android/server/desktopmode/DesktopModeService;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentUiMode(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUiMode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetModeToModeChangeType(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getModeToModeChangeType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTouchpadSupportedFeatures(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getTouchpadSupportedFeatures()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->handleHdmiAutoEnter(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->handlePogoAutoEnter(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleWirelessDexEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->handleWirelessDexEnter(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeStates(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;ZZ)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->isAllowedInternal(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;Z)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isBlockerRegistered(Lcom/android/server/desktopmode/State;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misConfigurationChangedFromDeX(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeAvailableEx(Lcom/android/server/desktopmode/DesktopModeService;ZZ)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeAvailableEx(ZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isForcedInternalScreenModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isLockTaskModeEnabledAndSecured()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misNeededStartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isNeededStartConnectivityActivity(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogDesktopModeChanged(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->logDesktopModeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mminimizeAllTasks(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->minimizeAllTasks(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDesktopDisplayConfigured(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onDesktopDisplayConfigured(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSecuredAppLaunched(Lcom/android/server/desktopmode/DesktopModeService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->onSecuredAppLaunched(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarting(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserStarting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopping(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserStopping(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitching(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserSwitching(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocking(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserUnlocking(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->requestTileUpdate(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldStayInDesktopMode(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->shouldStayInDesktopMode(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowDialog(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNewDexMode(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->updateNewDexMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smuserRequestToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/Injector;Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 4

    .line 1104
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 313
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNewDeXSettingObserver:Landroid/database/ContentObserver;

    .line 336
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$3;

    const-string/jumbo v3, "welcome_completed"

    invoke-direct {v1, p0, v3}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 348
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$4;

    const-string v3, "external_display_mode"

    invoke-direct {v1, p0, v3}, Lcom/android/server/desktopmode/DesktopModeService$4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    const/4 v1, 0x0

    .line 358
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    .line 359
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDexSourceEntry:Z

    .line 360
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 361
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 362
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootInitBlockerRegistered:Z

    .line 363
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    .line 364
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    .line 365
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsNewDexEnabled:Z

    .line 366
    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    const/16 v1, -0x2710

    .line 368
    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 1105
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 1106
    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 1107
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 1108
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 1109
    iput-object p4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 1110
    iput-object p5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 1111
    invoke-interface {p5, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 1113
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz p2, :cond_0

    .line 1114
    new-instance p2, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;

    invoke-direct {p2, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker-IA;)V

    goto :goto_0

    .line 1115
    :cond_0
    new-instance p2, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    invoke-direct {p2, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker-IA;)V

    :goto_0
    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    .line 1116
    const-class p2, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    new-instance p3, Lcom/android/server/desktopmode/DesktopModeService$LocalService;

    invoke-direct {p3, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$LocalService;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$LocalService-IA;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/server/desktopmode/Injector;->addLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1117
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$Receiver;

    invoke-direct {p1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Receiver-IA;)V

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->register()V

    return-void
.end method

.method public static isConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z
    .locals 2

    .line 1351
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v0

    .line 1352
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getPreviousConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1354
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v0

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    .line 1260
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1261
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result p0

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

.method public static isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z
    .locals 1

    .line 1303
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z
    .locals 2

    .line 1317
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    iget p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 p1, 0x3

    const/16 v0, 0x1e

    .line 1320
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x14

    .line 1321
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .locals 0

    .line 1251
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result p0

    return p0
.end method

.method public static isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    .line 1347
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result p0

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

.method public static isModeChangePending(Lcom/android/server/desktopmode/State;I)Z
    .locals 1

    .line 1337
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$scheduleUpdateDesktopMode$0(Z)V
    .locals 2

    .line 1422
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)V

    return-void
.end method

.method private synthetic lambda$scheduleUpdateDesktopMode$1(ZZ)V
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)V

    return-void
.end method

.method private synthetic lambda$sendMessage$2(Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 1684
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->minimizeAllTasks(I)V

    return-void
.end method

.method private synthetic lambda$sendMessage$3()V
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 1

    .line 1753
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1754
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 1755
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static userRequestToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EXIT_REQUEST"

    return-object p0

    :cond_1
    const-string p0, "ENTER_REQUEST"

    return-object p0

    :cond_2
    const-string p0, "NO_REQUEST"

    return-object p0
.end method


# virtual methods
.method public final varargs dismissDialog([I)V
    .locals 4

    .line 1571
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1572
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1916
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_7

    .line 1918
    array-length p1, p3

    if-eqz p1, :cond_7

    const-string p1, "-a"

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 1973
    :cond_1
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_a

    .line 1974
    aget-object p1, p3, v0

    .line 1975
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    const-string v0, "  cmd desktopmode "

    if-eqz p3, :cond_2

    const-string/jumbo p3, "on"

    .line 1976
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_2
    const-string/jumbo p3, "off"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string/jumbo p3, "toggle"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "settings"

    .line 1980
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "resolution"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "ui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    .line 1985
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown argument: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; USAGE: [on|off|toggle|dblist]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    :goto_0
    const-string p0, "Please enter below instead:"

    .line 1981
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1977
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    const-string p0, "Please enter below next time:"

    .line 1978
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1919
    :cond_7
    :goto_2
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "DesktopModeService (dumpsys desktopmode):"

    .line 1920
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    invoke-static {p1}, Lcom/android/server/desktopmode/Log;->dump(Ljava/io/PrintWriter;)V

    .line 1922
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide p2

    .line 1923
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->dumpApp(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    .line 1924
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    .line 1925
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1926
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1927
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    .line 1928
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1929
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1930
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1931
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1932
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1933
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1934
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1935
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/PackageStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1936
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1937
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/desktopmode/SettingsHelper;->dump(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    .line 1938
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1939
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/UiManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1940
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1941
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1942
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1943
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/BlockerManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1944
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1945
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/HardwareManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1946
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1947
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/TouchpadManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1948
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1949
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/CoverStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1950
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1951
    invoke-static {p1}, Lcom/android/server/desktopmode/ToastManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1952
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1953
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1954
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1955
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1956
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1957
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/DockManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1958
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1959
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1960
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p2, :cond_9

    .line 1961
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1962
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1963
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    if-eqz p2, :cond_8

    .line 1964
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1965
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1967
    :cond_8
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    if-eqz p2, :cond_9

    .line 1968
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1969
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1972
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_a
    :goto_3
    return-void
.end method

.method public final dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "welcomeCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "welcome_completed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISPLAY_SIZE_FORCED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "display_size_forced"

    .line 1997
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1996
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISPLAY_DENSITY_FORCED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "display_density_forced"

    .line 1999
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1998
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCREEN_OFF_TIMEOUT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 2002
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2001
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOW_IME_WITH_HARD_KEYBOARD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 2005
    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2004
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final finishWelcomeActivity()V
    .locals 2

    .line 1591
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string v1, "finishWelcomeActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    return-void
.end method

.method public final getCurrentUiMode()I
    .locals 0

    .line 1405
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getCurrentUiMode()I

    move-result p0

    return p0
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 1616
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return p0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 0

    .line 1657
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    return-object p0
.end method

.method public final getModeToModeChangeType()I
    .locals 3

    .line 1783
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 1784
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 1785
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getModeToModeChangeType()I

    move-result p0

    return p0

    .line 1786
    :cond_0
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 1787
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->getModeToModeChangeType()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getTouchpadSupportedFeatures()I
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 1770
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    instance-of v1, v1, Lcom/android/server/desktopmode/DualModeChanger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1773
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isSPenFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1777
    :goto_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTouchpadSupportedFeatures(), supportedFeatures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method public final handleHdmiAutoEnter(Z)V
    .locals 4

    .line 1456
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-eqz p1, :cond_2

    .line 1460
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "hdmi_auto_enter"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1462
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1463
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "hdmi_initial_connection_dialog_shown"

    const/4 v3, 0x0

    .line 1464
    invoke-static {p1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1465
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->showInitialConnectionDialog(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    const/4 p1, 0x1

    .line 1469
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    .line 1474
    :cond_2
    filled-new-array {v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final handlePogoAutoEnter(Z)V
    .locals 6

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eqz p1, :cond_4

    .line 1484
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "pogo_auto_enter"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1486
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1487
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "dex_mode"

    const-string/jumbo v4, "new"

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1488
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1489
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "welcome_completed"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 1492
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 1493
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->updateNewDexMode(I)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 1497
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 1498
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    .line 1500
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    goto :goto_0

    .line 1502
    :cond_3
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    if-nez v1, :cond_5

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "pogo_initial_connection_dialog_shown"

    .line 1503
    invoke-static {p1, v1, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    if-eqz p1, :cond_5

    if-nez v3, :cond_5

    .line 1505
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->showInitialConnectionDialog(ILjava/lang/String;Z)V

    goto :goto_0

    .line 1510
    :cond_4
    filled-new-array {v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final handleWirelessDexEnter(Z)V
    .locals 1

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final initializeStates()V
    .locals 4

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$5;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 1198
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_2

    .line 1199
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->notifyBootCompleted()V

    :cond_2
    :goto_0
    return-void
.end method

.method public injectServices(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/desktopmode/BlockerManager;Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/PackageStateManager;Landroid/app/StatusBarManager;Lcom/android/server/desktopmode/BootInitBlocker;Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/McfManager;Lcom/samsung/android/knox/dex/DexManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p15

    move-object v3, p1

    .line 1144
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, p2

    .line 1145
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v3, p3

    .line 1146
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object v3, p4

    .line 1148
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    move-object v3, p5

    .line 1149
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    move-object v3, p6

    .line 1150
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 1151
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 1152
    iget-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p7, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 1153
    iget-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p7, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 1154
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    if-eqz v1, :cond_0

    .line 1155
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "new_dex"

    .line 1156
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/server/desktopmode/DesktopModeService;->mNewDeXSettingObserver:Landroid/database/ContentObserver;

    .line 1155
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    move-object v1, p8

    .line 1159
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    move-object v1, p9

    .line 1160
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    move-object/from16 v1, p10

    .line 1161
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    move-object/from16 v1, p11

    .line 1162
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    move-object/from16 v1, p12

    .line 1163
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v1, p13

    .line 1164
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    move-object/from16 v1, p14

    .line 1165
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v1, p19

    .line 1167
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    move-object/from16 v3, p20

    .line 1168
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 1169
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    if-eqz v2, :cond_2

    .line 1172
    iput-object v2, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBootInitBlocker:Lcom/android/server/desktopmode/BootInitBlocker;

    .line 1173
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/desktopmode/BootInitBlocker;->register()V

    :cond_2
    move-object/from16 v1, p16

    .line 1175
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

    move-object/from16 v1, p17

    .line 1176
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    move-object/from16 v1, p18

    .line 1177
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    move-object/from16 v1, p21

    .line 1178
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    move-object/from16 v1, p22

    .line 1179
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    return-void
.end method

.method public isAllowed()Z
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    return p0
.end method

.method public final isAllowedInternal(Lcom/android/server/desktopmode/State;ZZ)Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1291
    :cond_0
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1292
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isBlockerRegistered(Lcom/android/server/desktopmode/State;Z)Z
    .locals 4

    .line 1794
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/BlockerManager;->getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1798
    :cond_0
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowed(showToast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), blocked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 1801
    :try_start_0
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1802
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->saveState(Lcom/android/server/desktopmode/State;Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1804
    sget-object p2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get blocking message from blocker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1807
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootInitBlockerRegistered:Z

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 1808
    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    :cond_2
    return p2
.end method

.method public final isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1623
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    if-eqz v1, :cond_3

    .line 1624
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 1625
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result p0

    .line 1627
    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :cond_0
    if-nez p0, :cond_2

    iget p0, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne p0, v2, :cond_2

    :cond_1
    move v0, v2

    .line 1632
    :cond_2
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConfigurationChangedFromDeX()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", desktopModeState="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public isDesktopDockConnected()Z
    .locals 0

    .line 1247
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p0

    return p0
.end method

.method public isDesktopMode()Z
    .locals 1

    .line 1266
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDesktopModeAvailableEx(ZZ)Z
    .locals 0

    .line 1280
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isDesktopModeAvailableEx(ZZ)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeEnablingOrEnabled()Z
    .locals 1

    .line 1298
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeForPreparing()Z
    .locals 1

    .line 1309
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeForPreparing(I)Z
    .locals 0

    .line 1313
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public isDeviceConnected()Z
    .locals 0

    .line 1256
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public isExternalDisplayConnected()Z
    .locals 0

    .line 1343
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p0

    return p0
.end method

.method public final isForcedInternalScreenModeEnabled()Z
    .locals 0

    .line 1325
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result p0

    return p0
.end method

.method public final isFotaSuwCompleted()Z
    .locals 2

    .line 1538
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1540
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 1541
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 1542
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 1544
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1545
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1546
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string v0, "isFotaSuwCompleted()=false"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isLockTaskModeEnabledAndSecured()Z
    .locals 0

    .line 1410
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->isLockTaskModeEnabledAndSecured()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isModeChangePending()Z
    .locals 1

    .line 1329
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isModeChangePending(I)Z
    .locals 0

    .line 1333
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isNeededStartConnectivityActivity(Lcom/android/server/desktopmode/State;I)Z
    .locals 1

    .line 1862
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isNeededStartConnectivityActivity()"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_0
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    const/4 p0, 0x5

    if-eq p2, p0, :cond_1

    .line 1866
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1867
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isSystemReady()Z
    .locals 3

    .line 1555
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isFotaSuwCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1559
    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFactoryBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1559
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 3

    .line 1527
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    .line 1531
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isUserSetupComplete()=false"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public final logDesktopModeChanged(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    const/4 v1, -0x1

    .line 1596
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    .line 1598
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1600
    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_DESKTOP_MODE_SOURCE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    if-le p1, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1604
    :goto_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logDesktopModeChanged("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string v0, "LMTD"

    goto :goto_1

    :cond_2
    const-string v0, "LDTM"

    .line 1606
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1605
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final minimizeAllTasks(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->saveTopTaskId(I)V

    .line 1713
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->minimizeAllTasks(IZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1391
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    if-eqz p0, :cond_0

    .line 1392
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onDesktopDisplayConfigured(Z)V
    .locals 0

    .line 1399
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->onDesktopDisplayConfigured(Z)V

    return-void
.end method

.method public final onSecuredAppLaunched(ILjava/lang/String;)V
    .locals 3

    .line 1821
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSecuredAppLaunched, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1824
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->onSecuredAppLaunched(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->onSecuredAppLaunched(ILjava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1720
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1721
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1723
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1725
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/desktopmode/Shell;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/desktopmode/Shell;-><init>(Landroid/content/ContentResolver;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/HardwareManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto :goto_1

    .line 1728
    :cond_2
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    :goto_1
    return-void
.end method

.method public final onUserChanged(I)V
    .locals 3

    .line 1236
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    .line 1237
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserChanged(), userId and mCurrentUserId are same("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1240
    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCurrentUserId(I)V

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method public final onUserStarting(I)V
    .locals 2

    .line 1204
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 2

    .line 1226
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onUserStopping(I)V
    .locals 2

    .line 1222
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurrentUser="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 3

    .line 1216
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    return-void
.end method

.method public final onUserUnlocking(I)V
    .locals 3

    .line 1208
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1209
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 1210
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1211
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    :cond_1
    return-void
.end method

.method public registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z
    .locals 2

    .line 1369
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1372
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/BlockerManager;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1370
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call registerBlocker()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    .locals 2

    .line 1662
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    .line 1663
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-eqz v1, :cond_0

    .line 1664
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1672
    :cond_1
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerDesktopLauncher() is blocked!!"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1668
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1669
    :try_start_0
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    .line 1670
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .locals 0

    .line 1364
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final requestTileUpdate(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "new_dex"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 326
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    if-ne v1, p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsNewDexEnabled:Z

    if-eq v1, v0, :cond_4

    .line 327
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    .line 328
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsNewDexEnabled:Z

    .line 329
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.desktopmode.uiservice.DesktopModeTile"

    const-string v2, "com.sec.android.desktopmode.uiservice"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 331
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

    invoke-direct {p1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_4
    return-void
.end method

.method public scheduleUpdateDesktopMode(Z)V
    .locals 2

    .line 1422
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleUpdateDesktopMode(ZZ)V
    .locals 2

    .line 1426
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1678
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.desktopmode.permission.BIND_DESKTOP_MODE_UI_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "command"

    .line 1681
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 1683
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 1684
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1690
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1691
    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1693
    :try_start_1
    invoke-interface {v2, p1}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p1

    .line 1695
    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage(), Failed to communicate with launcher. Starting again..."

    invoke-static {v2, v3, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1697
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1700
    :cond_1
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendMessage(), mLauncherInterface == null"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public setCurrentUserId(I)V
    .locals 3

    .line 1230
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 1232
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setCurrentUserId(I)V

    return-void
.end method

.method public final setEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/State;)V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const-string v3, "display_type"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 306
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string v1, "Request to enter standalone mode, since the standalone mode was enabled on last boot"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 310
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 309
    invoke-static {v0, v3, p1, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method

.method public final setUserRequest(I)V
    .locals 2

    .line 1611
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 1612
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final shouldStayInDesktopMode(Lcom/android/server/desktopmode/State;)Z
    .locals 4

    .line 1885
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    .line 1886
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1887
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    .line 1888
    invoke-virtual {v3}, Lcom/samsung/android/knox/dex/DexManager;->getHDMIAutoEnterState()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1889
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const p1, 0x104042f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 1892
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexStationConnectedWithFlipCover()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1893
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v0, 0x104043a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v1, 0x104043f

    .line 1895
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1893
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method public final showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    .line 1567
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public final showInitialConnectionDialog(ILjava/lang/String;Z)V
    .locals 1

    .line 1436
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$6;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/desktopmode/DesktopModeService$6;-><init>(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;)V

    .line 1452
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public final startConnectivityActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1881
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity(I)V

    return-void
.end method

.method public final startConnectivityActivity(I)V
    .locals 4

    .line 1871
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConnectivityActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.desktopmode.uiservice"

    const-string v3, "com.sec.android.desktopmode.uiservice.activity.connectivity.ConnectivityActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14200000

    .line 1874
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1877
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1, v0, p1, p0}, Lcom/android/server/desktopmode/DesktopModeService;->startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method

.method public final startHome()V
    .locals 1

    .line 1639
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public final startHome(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 1643
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 1644
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1646
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 1647
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    goto :goto_1

    .line 1648
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 1649
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final startWelcomeActivity()V
    .locals 3

    .line 1577
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startWelcomeActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "skip_welcome_screen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "welcome_shown"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    if-nez v0, :cond_2

    .line 1583
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener-IA;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 1585
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x12d

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_1

    .line 1579
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "welcome_completed"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1380
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/BlockerManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    move-result p0

    return p0

    .line 1378
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call unregisterBlocker()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .locals 0

    .line 1385
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    move-result p0

    return p0
.end method

.method public final updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)V
    .locals 0

    .line 1430
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    .line 1431
    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->saveState(Lcom/android/server/desktopmode/State;ZZ)V

    return-void
.end method

.method public final updateNewDexMode(I)V
    .locals 2

    .line 1829
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    if-nez v0, :cond_1

    .line 1830
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateNewDexMode Failed : New Dex Feature Not Supported"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1833
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1834
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const p1, 0x1040439

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1837
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->shouldBlockDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1838
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New Dex Blocked, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1842
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 1843
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getDefaultHomePackageName(Landroid/app/role/RoleManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1844
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const p1, 0x1040858

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v0, "new_dex"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    goto :goto_0

    .line 1855
    :cond_5
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1850
    :cond_6
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
