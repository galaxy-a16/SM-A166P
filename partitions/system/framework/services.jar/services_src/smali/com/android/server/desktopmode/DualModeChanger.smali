.class public Lcom/android/server/desktopmode/DualModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "DualModeChanger.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field public mDesktopDisplayContext:Landroid/content/Context;

.field public mDesktopDisplayId:I

.field public mDisplayUnsupportDialogShown:Z

.field public mDualModeEnabled:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLoadingScreenAnimationComplete:Z

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPrevDesktopDisplayId:I

.field public mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

.field public final mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mTopTaskId:I

.field public mTopTaskIdValid:Z

.field public final mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field public mTouchpadRequestedByNotification:Z

.field public final mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mWallpaperShown:Z


# direct methods
.method public static synthetic $r8$lambda$GUlM8ztKL0Jb98PrRFlmUFJ0kT8(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->lambda$onDesktopDisplayConfigured$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RIDRyndi0jIjZ_ZgMNpZGRvGkmM(Lcom/android/server/desktopmode/DualModeChanger;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->lambda$onSecuredAppLaunched$0(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDisplayContext(Lcom/android/server/desktopmode/DualModeChanger;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayUnsupportDialogShown(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateListener(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadManager(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/TouchpadManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadRequestedByNotification(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWallpaperShown(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStateListener(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTouchpadRequestedByNotification(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWallpaperShown(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->collapsePanelsToDisplay(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStopLoadingScreen(Lcom/android/server/desktopmode/DualModeChanger;ZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->handleStopLoadingScreen(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowStabilizerModeDialogIfNeeded(Lcom/android/server/desktopmode/DualModeChanger;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showStabilizerModeDialogIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartSPenModeSettingActivity(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartTouchpadActivity(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startTouchpadActivity(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNavBarIcon(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->updateNavBarIcon(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSpenNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->updateSpenNotification(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->updateTouchpadNotification(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/CoverStateManager;Landroid/app/KeyguardManager;Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/PowerManager;Landroid/os/PowerManagerInternal;)V
    .locals 15

    move-object v14, p0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    .line 171
    invoke-direct/range {v0 .. v13}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    .line 114
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 115
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 116
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 117
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 118
    iput-boolean v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    const/4 v0, -0x1

    .line 120
    iput v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 121
    iput v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    .line 122
    iput v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 130
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$1;

    const-string/jumbo v1, "touchpad_enabled"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Ljava/lang/String;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 142
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$2;

    const-string/jumbo v1, "stabilizer_mode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$2;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Ljava/lang/String;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 185
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Landroid/os/Looper;)V

    iput-object v0, v14, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p5

    .line 186
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p16

    .line 187
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    move-object/from16 v0, p17

    .line 188
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v0, p18

    .line 189
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    move-object/from16 v0, p19

    .line 190
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p20

    .line 191
    iput-object v0, v14, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p7

    .line 192
    iput-object v0, v14, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-void
.end method

.method private synthetic lambda$onDesktopDisplayConfigured$1(Z)V
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->handleDesktopDisplayConfigured(Z)V

    return-void
.end method

.method private synthetic lambda$onSecuredAppLaunched$0(ILjava/lang/String;)V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showSecuredAppLaunchedDialog()V

    .line 302
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.desktopmode.action.SECURED_APP_LAUNCHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.dexonpc"

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.desktopmode.extra.TASK_ID"

    .line 304
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.samsung.android.desktopmode.extra.PACKAGE_NAME"

    .line 305
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public canShowTouchpadNotification(Lcom/android/server/desktopmode/State;)Z
    .locals 5

    .line 599
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isNavBarGestureEnabled()Z

    move-result v0

    .line 600
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->hasNavigationBar()Z

    move-result p0

    .line 601
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result v1

    .line 602
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadEnabled()Z

    move-result p1

    .line 603
    sget-object v2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canShowTouchpadNotification navBarGestureEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasNavigationBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isTouchpadAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isTouchpadEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final collapsePanelsToDisplay(I)V
    .locals 1

    .line 577
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 578
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 583
    sget-object p1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string v0, "collapsePanelsToDisplay failed."

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesktopDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDualModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mModeToModeChangeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrevDesktopDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTopTaskIdValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTouchpadRequestedByNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getModeToModeChangeType()I
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final handleDesktopDisplayConfigured(Z)V
    .locals 7

    .line 399
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 402
    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_8

    .line 403
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 407
    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    :cond_1
    if-nez p1, :cond_8

    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v3, v2, :cond_8

    .line 409
    :cond_2
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDesktopDisplayConfigured(), added="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", desktopModeState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    const/4 v1, 0x4

    const/4 v3, 0x2

    if-eqz p1, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    const/16 v5, 0x28

    .line 412
    invoke-virtual {p0, v4, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 413
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SECONDARY_LAUNCHER_ACTIVITY_SUPPORT_FOR_DEX:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "enable_new_dex_home"

    invoke-static {v4, v6, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move v5, v2

    :cond_5
    if-eqz p1, :cond_6

    if-nez v5, :cond_6

    .line 416
    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;I)V

    goto :goto_1

    .line 419
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 420
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 423
    :goto_1
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    const/16 v0, 0x32

    .line 424
    invoke-virtual {p0, v1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 425
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeOnConfigurationChanged(Z)V

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final handleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V
    .locals 3

    .line 341
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting loading screen... enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_3

    .line 344
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 345
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    goto :goto_1

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->showModeChangeScreen()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x75

    goto :goto_0

    :cond_2
    const/16 p1, 0x71

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$3;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DualModeChanger$3;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    const/16 v2, 0x67

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 363
    :goto_1
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 364
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    goto :goto_2

    .line 367
    :cond_3
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 368
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    const/4 p1, 0x0

    .line 369
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 371
    :goto_2
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeStartLoadingScreen(Z)V

    .line 372
    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeInternal(Z)V

    return-void
.end method

.method public final handleStopLoadingScreen(ZI)V
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v1, :cond_2

    .line 472
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading screen timeout! enter="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 477
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 481
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p2

    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/desktopmode/ModeChanger;->hasPackageTask(ILjava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 483
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string v1, "DeX Home task does not exist in DeX display"

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    .line 488
    :cond_2
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p2

    iget p2, p2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-eq p2, v1, :cond_4

    .line 489
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to stop loading screen. onDesktopDisplayConfigured() is not called! enter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", desktopModeState="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 494
    :cond_4
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_5

    sget-object p2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping loading screen... enter="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_5
    iget-boolean p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 497
    iget p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    iget v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    const/4 v5, 0x5

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 499
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 503
    :cond_6
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v4, 0x67

    const/16 v5, 0x6f

    invoke-virtual {p2, v4, v5}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 505
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setModeChangeLock(Z)V

    if-eqz p1, :cond_7

    const/4 v2, 0x4

    .line 506
    :cond_7
    invoke-virtual {p0, v2, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 507
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeStopLoadingScreen(Z)V

    if-nez p1, :cond_8

    .line 510
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    invoke-static {p2}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->-$$Nest$munregister(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V

    const/4 p2, 0x0

    .line 511
    iput-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 512
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 515
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->forceKillProcessWhenExit()V

    goto :goto_0

    .line 517
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V

    .line 520
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_open_last_app"

    .line 521
    invoke-static {p2, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 522
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    const v1, 0x1040423

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    .line 524
    :cond_9
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const v1, 0x1040429

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const v2, 0x1040428

    .line 525
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {p0, p2, v1}, Lcom/android/server/desktopmode/ModeChanger;->showDexMirroringTipsNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 527
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v0, 0xcc

    invoke-virtual {p2, v0}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    .line 529
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showStabilizerModeDialogIfNeeded()V

    .line 532
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    xor-int/2addr p1, v3

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyScheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public final hasNavigationBar()Z
    .locals 1

    .line 632
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101f2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onDesktopDisplayConfigured(Z)V
    .locals 3

    .line 393
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopDisplayConfigured(), added="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDesktopDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSecuredAppLaunched(ILjava/lang/String;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DualModeChanger;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveTopTaskId(I)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    return-void
.end method

.method public final scheduleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V
    .locals 5

    .line 330
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 335
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, -0x1

    .line 334
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    .line 333
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->handleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V

    return-void
.end method

.method public final scheduleStopLoadingScreenIfPossible(Z)V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 458
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopLoadingScreenIfPossible(), enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWallpaperShown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLoadingScreenAnimationComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", desktopModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/16 v3, 0x32

    const/16 v4, 0x66

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public final setDesktopDisplayId(I)V
    .locals 1

    .line 318
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    .line 319
    iput p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 320
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setDesktopDisplayId(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 321
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 322
    :goto_0
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    return-void
.end method

.method public setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .locals 9

    .line 215
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModeChangeLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setModeChangeLock(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 v2, 0x66

    goto :goto_0

    :cond_1
    move v2, v1

    .line 220
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/ModeChanger;->saveDisplayType(I)V

    .line 221
    iput-object p3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 224
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isAdapter()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 225
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "max_visible_freeform_count"

    const/4 v5, 0x5

    invoke-static {v2, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 231
    :goto_2
    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v4, v2, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMaxVisibleFreeformCountForDex(II)V

    .line 235
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    const/4 v4, 0x2

    if-nez v2, :cond_6

    if-eqz p3, :cond_4

    .line 237
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 238
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getTopTaskId()I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    goto :goto_4

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p2, :cond_5

    move v5, v1

    goto :goto_3

    .line 241
    :cond_5
    iget v5, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 240
    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 243
    :goto_4
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    :cond_6
    if-eqz p3, :cond_7

    .line 246
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 247
    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    invoke-virtual {p3, v2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->setTopTaskId(I)V

    .line 251
    :cond_7
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v5, 0x12d

    invoke-virtual {v2, v5}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    const/4 v2, 0x3

    if-eqz p2, :cond_8

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v0

    :goto_5
    const/16 v6, 0x14

    .line 252
    invoke-virtual {p0, v5, v6}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 253
    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/ModeChanger;->setDesktopModeToSurfaceFlinger(Z)V

    if-eqz p2, :cond_b

    .line 256
    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->cancelKillProcessWhenExit()V

    .line 258
    new-instance v3, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver-IA;)V

    iput-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 259
    invoke-static {v3}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->-$$Nest$mregister(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V

    .line 260
    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    if-nez v3, :cond_a

    .line 261
    new-instance v2, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    invoke-direct {v2, p0, v4}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener-IA;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 262
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mStateListener registered"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_9
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    invoke-interface {v2, v3}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    goto :goto_6

    .line 265
    :cond_a
    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/ModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V

    .line 268
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    goto :goto_7

    .line 270
    :cond_b
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/CoverStateManager;->goToSleepIfFlipTypeCoverClosed()Z

    move-result v2

    if-nez v2, :cond_c

    .line 271
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->isInternalDisplayOff()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 272
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/16 v7, 0x72

    const-string v8, "android.server:DeX"

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 276
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    if-eqz v2, :cond_e

    if-eqz p3, :cond_d

    .line 278
    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    if-ne v2, v4, :cond_e

    .line 279
    :cond_d
    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 281
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 283
    :cond_e
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    .line 284
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    .line 286
    :goto_7
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V

    return-object p3
.end method

.method public setDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-void
.end method

.method public final setDesktopModeInternal(Z)V
    .locals 3

    .line 376
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeInternal(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 377
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/ModeChanger;->dismissDialog([I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x1e

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 379
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeSetDesktopModeInternal(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/ModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_2

    .line 383
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 385
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_2
    :goto_1
    return-void
.end method

.method public setDesktopModeState(II)V
    .locals 2

    .line 197
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    .line 199
    :goto_0
    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    .line 200
    sget-object p1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDesktopModeState(), newState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1, v0}, Lcom/android/server/desktopmode/IStateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 203
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_1
    return-void
.end method

.method public final setModeChangeLock(Z)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setModeChangeLocked(Z)V

    return-void
.end method

.method public final showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 536
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDisplayResolutionUnsupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    :cond_0
    return-void
.end method

.method public final showSecuredAppLaunchedDialog()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_0
    return-void
.end method

.method public final showStabilizerModeDialogIfNeeded()V
    .locals 4

    .line 637
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "stabilizer_mode_consent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "stabilizer_mode"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DualModeChanger$4;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    .line 654
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p0

    const/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V
    .locals 2

    .line 567
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 568
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 569
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 570
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 571
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 570
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public startHome(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 431
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SECONDARY_LAUNCHER_ACTIVITY_SUPPORT_FOR_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "enable_new_dex_home"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 432
    :cond_0
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;I)V

    :cond_1
    return-void
.end method

.method public final startHome(Lcom/android/server/desktopmode/State;I)V
    .locals 3

    .line 442
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHome(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10210000

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 449
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sec.android.app.desktoplauncher"

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 451
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 452
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 453
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V
    .locals 4

    .line 543
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.desktoplauncher"

    const-string v3, "com.android.launcher3.settings.SPenInputModePreferenceActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14200000

    .line 546
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 549
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public final startTouchpadActivity(Lcom/android/server/desktopmode/State;)V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 554
    invoke-virtual {v1}, Lcom/android/server/desktopmode/TouchpadManager;->getInternalUiCallback()Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x12c

    .line 553
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->minimizeAllTasks(IZ)V

    .line 557
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isNavBarGestureEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->hasNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 559
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    goto :goto_0

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/TouchpadManager;->notifyStartedByNotification()V

    .line 562
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    :goto_0
    return-void
.end method

.method public final updateNavBarIcon(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 619
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNavBarIcon(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string p1, "Skip updateNavBarIcon"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 624
    :cond_2
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadAvailable()Z

    move-result p1

    const/16 v0, 0x190

    if-eqz p1, :cond_3

    .line 625
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->showNavBarIcon(I)V

    goto :goto_0

    .line 627
    :cond_3
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->removeNavBarIcon(I)V

    :goto_0
    return-void
.end method

.method public final updateSpenNotification(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 610
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpenNotification(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isTouchpadEnabled()Z

    move-result v0

    const/16 v1, 0xcb

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isSpenEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 612
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :goto_0
    return-void
.end method

.method public final updateTouchpadNotification(Lcom/android/server/desktopmode/State;)V
    .locals 3

    .line 588
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchpadNotification(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->canShowTouchpadNotification(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0xca

    goto :goto_0

    :cond_1
    const/16 p1, 0xc9

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_1

    .line 594
    :cond_2
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    :goto_1
    return-void
.end method
