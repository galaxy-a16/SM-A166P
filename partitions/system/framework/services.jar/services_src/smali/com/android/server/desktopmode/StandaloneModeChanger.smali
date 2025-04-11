.class public Lcom/android/server/desktopmode/StandaloneModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "StandaloneModeChanger.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCurrentUiMode:I

.field public mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

.field public mStandaloneModeEnabled:Z

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public mTelecomManager:Landroid/telecom/TelecomManager;

.field public mTopTaskId:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

.field public mWallpaperShown:Z


# direct methods
.method public static synthetic $r8$lambda$c52UvxHe14rUESvMY5L8Qh0mrNE(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fN7remWO-m4M4EL8C6oC7p7VGus(Lcom/android/server/desktopmode/StandaloneModeChanger;ZLjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$setDesktopMode$1(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mMYCHEwis7og8PK2lXFU71BkFis(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$handleStartLoadingScreen$2(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeEnabled(Lcom/android/server/desktopmode/StandaloneModeChanger;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmWallpaperShown(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartLoadingScreen(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleStartLoadingScreen(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStopLoadingScreen(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleStopLoadingScreen(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDesktopModeInternal(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstoreDefaultHomePackageName(Lcom/android/server/desktopmode/StandaloneModeChanger;ZLjava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->storeDefaultHomePackageName(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/telecom/TelecomManager;Landroid/app/IUiModeManager;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/UiModeManagerInternal;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p15

    .line 144
    invoke-direct/range {v0 .. v13}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 104
    iput-boolean v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    const/4 v0, -0x1

    .line 106
    iput v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    .line 107
    iput v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    .line 117
    new-instance v0, Lcom/android/server/desktopmode/StandaloneModeChanger$1;

    invoke-direct {v0, v14}, Lcom/android/server/desktopmode/StandaloneModeChanger$1;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 158
    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v14, v2, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler-IA;)V

    iput-object v1, v14, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p16

    .line 159
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v1, p17

    .line 160
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    move-object/from16 v1, p19

    .line 161
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    move-object/from16 v1, p18

    .line 162
    iput-object v1, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 163
    iput-object v15, v14, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v15, :cond_0

    const/16 v1, 0xbb8

    .line 165
    invoke-virtual {v15, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 167
    :cond_0
    iget-object v1, v14, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method

.method private synthetic lambda$handleStartLoadingScreen$2(Z)V
    .locals 0

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(Z)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$setDesktopMode$1(ZLjava/lang/Boolean;)V
    .locals 2

    .line 362
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 363
    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add home role holder. desktopMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(Z)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsLockTaskModeEnabledAndSecured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStandaloneModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 622
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWallpaperShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 625
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getConfigurationState(Landroid/content/res/Configuration;)I
    .locals 6

    .line 275
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 277
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 279
    :goto_1
    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    if-eqz v4, :cond_2

    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 280
    invoke-virtual {v4}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeDensity()I

    move-result v4

    if-ne v5, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 281
    :goto_2
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    if-eqz p0, :cond_3

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 282
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeOriginalDensity(I)I

    move-result p0

    if-ne p1, p0, :cond_3

    move p0, v2

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    if-nez v1, :cond_5

    if-eqz p0, :cond_5

    return v3

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentUiMode()I
    .locals 0

    .line 525
    iget p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    return p0
.end method

.method public getDefaultHomePackageName(Landroid/app/role/RoleManager;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "android.app.role.HOME"

    .line 404
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 403
    invoke-virtual {p1, v0, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 405
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getModeToModeChangeType()I
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    .line 222
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 224
    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_e

    .line 225
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 229
    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOnConfigurationChanged(), newConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", desktopModeDensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 230
    invoke-virtual {v4}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeDensity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", desktopModeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 235
    iget v4, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v4, v2, :cond_3

    :cond_2
    if-nez p1, :cond_e

    iget v4, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v4, v3, :cond_e

    :cond_3
    const/4 v4, 0x0

    if-ne p1, v3, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    move v5, v4

    .line 238
    :goto_0
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleOnConfigurationChanged(), enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v5, :cond_6

    move v8, v6

    goto :goto_1

    :cond_6
    move v8, v7

    :goto_1
    const/16 v9, 0x28

    .line 240
    invoke-virtual {p0, v8, v9}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 241
    iput-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-ne p1, v3, :cond_7

    .line 243
    iget p1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne p1, v2, :cond_7

    .line 244
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack(I)V

    .line 246
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    .line 247
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack(I)V

    .line 249
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;)V

    const-string p1, "Ongoing phone call!"

    if-eqz v5, :cond_9

    .line 252
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->usingNativeInCallUi()Z

    move-result v0

    if-nez v0, :cond_c

    .line 253
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_8
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_2

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 260
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_a
    iput-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 262
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 264
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->clearSettingsBadgeCount()V

    .line 267
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v5}, Lcom/android/server/desktopmode/IStateManager;->notifyOnConfigurationChanged(Z)V

    if-eqz v5, :cond_d

    goto :goto_3

    :cond_d
    move v6, v7

    :goto_3
    const/16 p1, 0x32

    .line 269
    invoke-virtual {p0, v6, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStopLoadingScreenIfPossible()V

    :cond_e
    :goto_4
    return-void
.end method

.method public final handleStartLoadingScreen(ZI)V
    .locals 4

    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "loading screen"

    const/4 v3, 0x0

    .line 431
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 434
    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading screen shown by in-call UI timeout enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting loading screen... enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    const/4 p2, 0x3

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    const/16 v0, 0x14

    .line 442
    invoke-virtual {p0, p2, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 443
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyStartLoadingScreen(Z)V

    .line 447
    :cond_3
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->showModeChangeScreen()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    const/16 p2, 0x74

    goto :goto_2

    :cond_4
    const/16 p2, 0x75

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    const/16 p2, 0x71

    goto :goto_2

    :cond_6
    const/16 p2, 0x72

    .line 452
    :goto_2
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$2;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    const/16 v2, 0x64

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 462
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowManagerInternal;->launchHomeForDesktopMode(I)V

    if-eqz p1, :cond_8

    .line 464
    new-instance p1, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver-IA;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    .line 465
    invoke-static {p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->-$$Nest$mregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V

    goto :goto_3

    .line 468
    :cond_7
    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleStartLoadingScreen(), Binding DesktopUiService... enter="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method public final handleStopLoadingScreen(ZI)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 556
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading screen dismissed by timeout enter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "com.sec.android.app.desktoplauncher"

    .line 559
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/desktopmode/ModeChanger;->hasPackageTask(ILjava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 561
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v0, "DeX Home task does not exist"

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    goto :goto_0

    .line 565
    :cond_2
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping loading screen... enter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_4

    .line 569
    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 572
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->verifyCurrentState()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_6

    const/4 v1, 0x4

    .line 575
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 577
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    .line 578
    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 579
    :cond_7
    iget p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    if-eqz p1, :cond_8

    const/4 v1, 0x5

    goto :goto_1

    :cond_8
    move v1, v0

    :goto_1
    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 585
    :cond_9
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->showModeChangeScreen()Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz p1, :cond_a

    const/16 p2, 0x74

    goto :goto_2

    :cond_a
    const/16 p2, 0x75

    goto :goto_2

    :cond_b
    if-eqz p1, :cond_c

    const/16 p2, 0x71

    goto :goto_2

    :cond_c
    const/16 p2, 0x72

    .line 590
    :goto_2
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3, p2}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 591
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyStopLoadingScreen(Z)V

    .line 592
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock(Z)V

    if-nez p1, :cond_e

    .line 595
    iget-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    if-eqz p2, :cond_d

    .line 596
    invoke-static {p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->-$$Nest$munregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V

    const/4 p2, 0x0

    .line 597
    iput-object p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    goto :goto_3

    .line 599
    :cond_d
    sget-object p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mReceiver is null!"

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->forceKillProcessWhenExit()V

    .line 605
    :cond_e
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    xor-int/2addr p1, v0

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 606
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const p2, 0x1040429

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const v0, 0x1040428

    .line 607
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/ModeChanger;->showDexMirroringTipsNotification(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 p0, 0x80000

    const-string/jumbo p2, "loading screen"

    .line 608
    invoke-static {p0, p1, p2, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 213
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged(), config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 215
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final scheduleStartLoadingScreen(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(ZI)V

    return-void
.end method

.method public final scheduleStartLoadingScreen(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->scheduleStartLoadingScreen(ZII)V

    return-void
.end method

.method public final scheduleStartLoadingScreen(ZII)V
    .locals 4

    .line 417
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 422
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    int-to-long v1, p3

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 426
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 425
    invoke-virtual {p2, p3, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 427
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x3a98

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleStopLoadingScreenIfPossible()V
    .locals 5

    .line 529
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 530
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopLoadingScreenIfPossible()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", mWallpaperShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", desktopModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mStandaloneModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", internal overlay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x66

    .line 534
    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", external overlay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x67

    .line 536
    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    if-eqz v1, :cond_6

    :cond_2
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x71

    const/16 v2, 0x65

    .line 540
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x72

    .line 542
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x75

    .line 544
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x74

    .line 546
    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/UiManager;->hasOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method

.method public final setCustomConfigurations(Z)V
    .locals 1

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    .line 515
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 519
    sget-object p1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set custom configurations"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .locals 3

    .line 343
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), desktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->cancelKillProcessWhenExit()V

    :cond_1
    const/4 v0, 0x1

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/16 v2, 0x65

    goto :goto_0

    :cond_2
    move v2, v1

    .line 348
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/ModeChanger;->saveDisplayType(I)V

    .line 349
    iput-object p3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p3, :cond_3

    .line 352
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 353
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getTopTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    goto :goto_1

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    if-eqz p3, :cond_4

    .line 357
    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->setTopTaskId(I)V

    .line 361
    :cond_4
    :goto_1
    new-instance v0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->storeDefaultHomePackageName(ZLjava/util/function/Consumer;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_5

    .line 369
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 372
    :cond_5
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifySetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    return-object p3
.end method

.method public final setDesktopModeInternal(Z)V
    .locals 7

    .line 478
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 479
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/16 v5, 0x14

    const/16 v6, 0x65

    .line 481
    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 486
    :cond_1
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDesktopModeInternal(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 490
    filled-new-array {v1}, [I

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/ModeChanger;->dismissDialog([I)V

    .line 491
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->cancelToasts()V

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    const/16 v3, 0x1e

    .line 493
    invoke-virtual {p0, v2, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/ModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_4

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/ModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 506
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setCustomConfigurations(Z)V

    .line 508
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifySetDesktopModeInternal(Z)V

    return-void
.end method

.method public setDesktopModeState(II)V
    .locals 2

    .line 172
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x65

    .line 174
    :goto_0
    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    .line 175
    sget-object p1, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDesktopModeState(), newState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v0}, Lcom/android/server/desktopmode/IStateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 178
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_1
    return-void
.end method

.method public final setModeChangeLock(Z)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setModeChangeLocked(Z)V

    .line 474
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->setChangingStandaloneMode(Z)V

    return-void
.end method

.method public startHome(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 295
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startHome()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 301
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final storeDefaultHomePackageName(ZLjava/util/function/Consumer;)V
    .locals 9

    .line 378
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const-string v8, "default_home_package"

    if-eqz p1, :cond_0

    const-string v2, "android.app.role.HOME"

    const-string v3, "com.sec.android.app.desktoplauncher"

    const/4 v4, 0x0

    .line 382
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v1, v0

    move-object v7, p2

    .line 380
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 383
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getDefaultHomePackageName(Landroid/app/role/RoleManager;)Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-static {p1, v8, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {p1, v8, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "android.app.role.HOME"

    const/4 v4, 0x0

    .line 391
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v1, v0

    move-object v7, p2

    .line 390
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 392
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v8}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 396
    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "storeDefaultHomePackageName(), packageName is null"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final usingNativeInCallUi()Z
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "skt_phone20_settings"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 186
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "usingNativeInCallUi()=false, using T Phone"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "com.samsung.android.contacts"

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.telecom.InCallService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x20000

    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 197
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "usingNativeInCallUi()=false"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 206
    :cond_4
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "usingNativeInCallUi()=true"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3
.end method

.method public final verifyCurrentState()Z
    .locals 8

    .line 305
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 308
    iget-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-eqz v5, :cond_3

    :cond_0
    if-nez v2, :cond_1

    iget-boolean v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    if-nez v5, :cond_3

    :cond_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    iget v5, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v5, v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-ne v5, v4, :cond_8

    if-ne v2, v4, :cond_8

    .line 313
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCurrentState(), Something is wrong! config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mStandaloneModeEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", desktopModeDensity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 316
    invoke-virtual {v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->getStandaloneModeDensity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", desktopModeState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const/16 v7, 0x3e8

    invoke-static {v6, v5, v7}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 319
    :cond_4
    sget-object v6, Lcom/android/server/desktopmode/StandaloneModeChanger;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v7, 0x0

    if-ne v1, v3, :cond_5

    if-eq v2, v4, :cond_6

    :cond_5
    if-ne v1, v4, :cond_7

    if-nez v2, :cond_7

    :cond_6
    const-string v1, "Configuration is changed correctly, but was too late. Calling onConfigurationChanged() directly..."

    .line 323
    invoke-static {v6, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v7

    .line 331
    :cond_7
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-nez v0, :cond_9

    .line 334
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v7}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    :cond_8
    return v4

    .line 332
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
