.class public Lcom/android/server/desktopmode/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDependencies:Landroid/util/ArrayMap;

.field public final mProviders:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$-YAt-86ftWSsX4od5SfcGBuxChI(Lcom/android/server/desktopmode/Injector;)Landroid/hardware/input/InputManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getInputManager()Landroid/hardware/input/InputManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-euAYGrlB8KeKYhmYyFBTIK4lp4(Lcom/android/server/desktopmode/Injector;)Landroid/os/PowerManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1q9CsK9J7EBf8XPx_4D3H4eEEq4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSemDesktopModeStateNotifier()Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3tvFvyW64LVhrTWvfha54EjeLmk(Lcom/android/server/desktopmode/Injector;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7BpUtj_WhTZfgJ-QfGtJ3AitDjs(Lcom/android/server/desktopmode/Injector;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8K7e_rH0zoPlfsNwz84NH6SyhDg(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getWindowManagerInternal()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$933BZ17QqgGqXS4twL2qnIiLe-U(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/McfManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getMcfManager()Lcom/android/server/desktopmode/McfManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ak05d7EanlfYhzY13YRMbVj_zW0(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DualModeChanger;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDualModeChanger()Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BwvgZwkbs3yFG4W6pUpQwsjTqzs(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityTaskManagerService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CekwGuyizRPA6oAbhKfIhXhtuf4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/MultiResolutionManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getMultiResolutionManager()Lcom/android/server/desktopmode/MultiResolutionManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CkKug-HbnirFxt2WeWplsIw09Hs(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSemDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dg_luxDX1Gh0k7pDK6JNAheNc7A(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GQT_NxPDrZyTc0tP7vz0sb44_fA(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DesktopModeService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDesktopModeService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HF70STbX4mepqSIskKjTpB4rLqI(Lcom/android/server/desktopmode/Injector;)Landroid/app/KeyguardManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HVDgd53RJzpnApbmO0iDqYs5pzQ(Lcom/android/server/desktopmode/Injector;)Landroid/hardware/display/IDisplayManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIDisplayManager()Landroid/hardware/display/IDisplayManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HWR4cNtmtPILiOF4K8lS3JAQQQg(Lcom/android/server/desktopmode/Injector;)Landroid/app/ActivityManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J6DqtKUyiExZZMlYoPHAg1Q00oA(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KfRRvDbptXoDvtxn-orbg3ykg9I(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O8JqTH7J8Ou5iqWg46SB37DGVzk(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/WirelessDexManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getWirelessDexManager()Lcom/android/server/desktopmode/WirelessDexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PsKgxbpZY6MOw1zbh7IguMSl9RA(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/TouchpadManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getTouchpadManager()Lcom/android/server/desktopmode/TouchpadManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RrrefF1odyuTYBUnRWQ-aVIdAMo(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/knox/dex/DexManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDexManager()Lcom/samsung/android/knox/dex/DexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UnhXwQTnh_ke_UkSqtNAA1kuzE4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/BleAdvertiserServiceManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getBleAdvertiserServiceManager()Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V5VpVf3W_waAJX8sVZrjUwvBoTE(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/UiModeManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getUiModeManagerInternal()Lcom/android/server/UiModeManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VOoiKPZ8rA9enCQMkS1Vc9VZ60Y(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DockManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDockManager()Lcom/android/server/desktopmode/DockManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W5Sbif0z2DvXRFLfyoAk041jxxM(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/CoverStateManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getCoverStateManager()Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xgpq0AEMtHqLhw4XhepVQumYnDw(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xznd65XGYod-PQGwBpa_xTpPYT8(Lcom/android/server/desktopmode/Injector;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aXpQFIxLdFYA0fBb7tfmcmEVNb4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/HardwareManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getHardwareManager()Lcom/android/server/desktopmode/HardwareManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d7wN6lYjlbaO9oSpupkQx2erxiU(Lcom/android/server/desktopmode/Injector;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eSPnHlqhEAtjve40NI76UZ6TQzo(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/input/InputManagerService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iGh4AWt89EsqAmJN0mwMK5En-x4(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/ServiceThread;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$icF0cmASIfTCbX4YpXeOjarE3bo(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/DisplayPortStateManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDisplayPortStateManager()Lcom/android/server/desktopmode/DisplayPortStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kC7CP8fik4HhOkZ2UJjE_IM2MNM(Lcom/android/server/desktopmode/Injector;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kGKblf6UJnfTuYP0XqDTClHl2Ac(Lcom/android/server/desktopmode/Injector;)Landroid/app/IUiModeManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIUiModeManager()Landroid/app/IUiModeManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kMi2L4XJdGPutwqWOI5Iwa17l9A(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/BlockerManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getBlockerManager()Lcom/android/server/desktopmode/BlockerManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kcZYx56ymtDj5dSBdHSk9kj2VDo(Lcom/android/server/desktopmode/Injector;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSemDvfsManager()Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$no0RAdUG9tjDMgDuZ7IEF_Gmjuo(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/UiManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getUiManager()Lcom/android/server/desktopmode/UiManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oZWQeKG32F0m91PhwJ-HP6_HG1A(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/BootInitBlocker;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getBootInitBlocker()Lcom/android/server/desktopmode/BootInitBlocker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pUZeZCjlnEEMtgdJXS4js-ES1Dc(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/EmergencyModeBlocker;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getEmergencyModeBlocker()Lcom/android/server/desktopmode/EmergencyModeBlocker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pWFt5JffQw8lji_BRBi_L8-4kLY(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/PackageStateManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getPackageStateManager()Lcom/android/server/desktopmode/PackageStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sLzMWAPwY-zpddL43jdcztkd3wU(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/SettingsHelper;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getSettingsHelper()Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tORBtTqLJXKHMg-VTdeRDNZ1uak(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/StateManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getIStateManager()Lcom/android/server/desktopmode/StateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vUG6HqLpGqo8pRKfuwA49GBmwTw(Lcom/android/server/desktopmode/Injector;)Landroid/telecom/TelecomManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vtZcuBVq-rGGXgumtcbtki96Pe8(Lcom/android/server/desktopmode/Injector;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/Injector;->lambda$get$0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w3X6TAbmJvNuZcqHTIkOB5h3kuE(Lcom/android/server/desktopmode/Injector;)Landroid/os/PowerManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xCAOi5aWRJIjW6rESWmITvNuzXo(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/StandaloneModeChanger;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getStandaloneModeChanger()Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z1mRsBOxVZvaB2OYFs1SWZV-16c(Lcom/android/server/desktopmode/Injector;)Landroid/app/StatusBarManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Injector;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Injector;->mDependencies:Landroid/util/ArrayMap;

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    .line 53
    iput-object p1, p0, Lcom/android/server/desktopmode/Injector;->mContext:Landroid/content/Context;

    .line 55
    const-class p1, Landroid/content/Context;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class p1, Lcom/android/server/ServiceThread;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda33;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda41;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class p1, Lcom/android/server/desktopmode/DesktopModeService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda43;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda44;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda45;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-class p1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/IStateManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-class p1, Lcom/android/server/desktopmode/PackageStateManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/desktopmode/McfManager;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-class p1, Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-class p1, Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-class p1, Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-class p1, Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-class p1, Landroid/app/IUiModeManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-class p1, Landroid/hardware/input/InputManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-class p1, Lcom/android/server/input/InputManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class p1, Landroid/content/pm/IPackageManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-class p1, Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-class p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-class p1, Landroid/os/PowerManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-class p1, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-class p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-class p1, Lcom/samsung/android/os/SemDvfsManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-class p1, Landroid/app/StatusBarManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-class p1, Landroid/telecom/TelecomManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/UiModeManagerInternal;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance p1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/desktopmode/Injector;)V

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-class p1, Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-class p1, Landroid/app/KeyguardManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-class p1, Landroid/hardware/display/IDisplayManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-class p1, Lcom/samsung/android/knox/dex/DexManager;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/desktopmode/Injector;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$get$0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/Injector;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 111
    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public binderClearCallingIdentity()J
    .locals 2

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderGetCallingPid()I
    .locals 0

    .line 115
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUid()I
    .locals 0

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderRestoreCallingIdentity(J)V
    .locals 0

    .line 127
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/Injector;->mProviders:Landroid/util/ArrayMap;

    .line 139
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " providers known."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/desktopmode/Injector;->mDependencies:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/desktopmode/Injector;Ljava/lang/Class;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/desktopmode/Utils;->getOrPut(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityManager()Landroid/app/ActivityManager;
    .locals 1

    .line 352
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 368
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 0

    const-string p0, "activity"

    .line 356
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public final getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 360
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public final getActivityTaskManagerService()Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 364
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public final getBleAdvertiserServiceManager()Lcom/android/server/desktopmode/BleAdvertiserServiceManager;
    .locals 4

    .line 178
    new-instance v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    const-class v1, Landroid/content/Context;

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 181
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v0
.end method

.method public final getBlockerManager()Lcom/android/server/desktopmode/BlockerManager;
    .locals 7

    .line 162
    new-instance v6, Lcom/android/server/desktopmode/BlockerManager;

    const-class v0, Landroid/content/Context;

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Landroid/app/ActivityManager;

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/ActivityManager;

    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/BlockerManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;Lcom/android/server/desktopmode/Injector;)V

    return-object v6
.end method

.method public final getBootInitBlocker()Lcom/android/server/desktopmode/BootInitBlocker;
    .locals 4

    .line 171
    new-instance v0, Lcom/android/server/desktopmode/BootInitBlocker;

    const-class v1, Lcom/android/server/ServiceThread;

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ServiceThread;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/BootInitBlocker;-><init>(Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/server/desktopmode/Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCoverStateManager()Lcom/android/server/desktopmode/CoverStateManager;
    .locals 7

    .line 185
    new-instance v6, Lcom/android/server/desktopmode/CoverStateManager;

    const-class v0, Landroid/content/Context;

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-class v0, Landroid/os/PowerManager;

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/PowerManager;

    const-class v0, Lcom/android/server/input/InputManagerService;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/input/InputManagerService;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/CoverStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/os/PowerManager;Lcom/android/server/input/InputManagerService;)V

    return-object v6
.end method

.method public final getDesktopModeService()Lcom/android/server/desktopmode/DesktopModeService;
    .locals 7

    .line 194
    new-instance v6, Lcom/android/server/desktopmode/DesktopModeService;

    const-class v0, Landroid/content/Context;

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/desktopmode/IStateManager;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Lcom/android/server/desktopmode/Injector;Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v6
.end method

.method public final getDexManager()Lcom/samsung/android/knox/dex/DexManager;
    .locals 0

    .line 449
    invoke-static {}, Lcom/samsung/android/knox/dex/DexManager;->getInstance()Lcom/samsung/android/knox/dex/DexManager;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 1

    .line 372
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public final getDisplayPortStateManager()Lcom/android/server/desktopmode/DisplayPortStateManager;
    .locals 4

    .line 203
    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager;

    const-class v1, Landroid/content/Context;

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V

    return-object v0
.end method

.method public final getDockManager()Lcom/android/server/desktopmode/DockManager;
    .locals 4

    .line 208
    new-instance v0, Lcom/android/server/desktopmode/DockManager;

    const-class v1, Landroid/content/Context;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/DockManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v0
.end method

.method public final getDualModeChanger()Lcom/android/server/desktopmode/DualModeChanger;
    .locals 24

    move-object/from16 v0, p0

    .line 215
    new-instance v22, Lcom/android/server/desktopmode/DualModeChanger;

    move-object/from16 v1, v22

    const-class v2, Landroid/content/Context;

    .line 216
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 217
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    const-class v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 218
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v5, Lcom/android/server/ServiceThread;

    .line 219
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceThread;

    const-class v6, Lcom/android/internal/statusbar/IStatusBarService;

    .line 220
    invoke-virtual {v0, v6}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/statusbar/IStatusBarService;

    const-class v7, Lcom/android/server/desktopmode/UiManager;

    .line 221
    invoke-virtual {v0, v7}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/desktopmode/UiManager;

    const-class v8, Lcom/android/server/desktopmode/SettingsHelper;

    .line 222
    invoke-virtual {v0, v8}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v9, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 223
    invoke-virtual {v0, v9}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/desktopmode/MultiResolutionManager;

    const-class v10, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 224
    invoke-virtual {v0, v10}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerService;

    const-class v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 225
    invoke-virtual {v0, v11}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v12, Landroid/app/ActivityManagerInternal;

    .line 226
    invoke-virtual {v0, v12}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManagerInternal;

    const-class v13, Lcom/android/server/wm/WindowManagerInternal;

    .line 227
    invoke-virtual {v0, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowManagerInternal;

    const-class v14, Landroid/app/StatusBarManager;

    .line 228
    invoke-virtual {v0, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/StatusBarManager;

    const-class v15, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 229
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-object/from16 v23, v1

    const-class v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    .line 231
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/server/desktopmode/CoverStateManager;

    const-class v1, Landroid/app/KeyguardManager;

    .line 232
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/app/KeyguardManager;

    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    .line 233
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/server/desktopmode/TouchpadManager;

    const-class v1, Landroid/os/PowerManager;

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/os/PowerManager;

    const-class v1, Landroid/os/PowerManagerInternal;

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/PowerManagerInternal;

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lcom/android/server/desktopmode/DualModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/CoverStateManager;Landroid/app/KeyguardManager;Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/PowerManager;Landroid/os/PowerManagerInternal;)V

    return-object v22
.end method

.method public final getEmergencyModeBlocker()Lcom/android/server/desktopmode/EmergencyModeBlocker;
    .locals 4

    .line 239
    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const-class v1, Landroid/content/Context;

    .line 240
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 242
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/Injector;)V

    return-object v0
.end method

.method public final getHardwareManager()Lcom/android/server/desktopmode/HardwareManager;
    .locals 10

    .line 247
    new-instance v9, Lcom/android/server/desktopmode/HardwareManager;

    const-class v0, Landroid/content/Context;

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Landroid/hardware/input/InputManager;

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/input/InputManager;

    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/display/DisplayManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/PowerManagerInternal;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/wm/WindowManagerService;

    const-class v0, Landroid/hardware/display/IDisplayManager;

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Landroid/hardware/display/IDisplayManager;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/desktopmode/HardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Landroid/hardware/input/InputManager;Landroid/hardware/display/DisplayManager;Landroid/os/PowerManagerInternal;Lcom/android/server/wm/WindowManagerService;Landroid/hardware/display/IDisplayManager;)V

    return-object v9
.end method

.method public final getIDisplayManager()Landroid/hardware/display/IDisplayManager;
    .locals 0

    const-string p0, "display"

    .line 445
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p0

    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 384
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getIStateManager()Lcom/android/server/desktopmode/StateManager;
    .locals 2

    .line 259
    new-instance v0, Lcom/android/server/desktopmode/StateManager;

    const-class v1, Lcom/android/server/ServiceThread;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ServiceThread;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/StateManager;-><init>(Lcom/android/server/ServiceThread;)V

    return-object v0
.end method

.method public final getIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    const-string/jumbo p0, "statusbar"

    .line 389
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 388
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public final getIUiModeManager()Landroid/app/IUiModeManager;
    .locals 0

    const-string/jumbo p0, "uimode"

    .line 376
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object p0

    return-object p0
.end method

.method public final getInputManager()Landroid/hardware/input/InputManager;
    .locals 1

    .line 380
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method public final getInputManagerService()Lcom/android/server/input/InputManagerService;
    .locals 0

    const-string p0, "input"

    .line 416
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public final getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .line 441
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public final getMcfManager()Lcom/android/server/desktopmode/McfManager;
    .locals 7

    .line 341
    new-instance v6, Lcom/android/server/desktopmode/McfManager;

    const-class v0, Landroid/content/Context;

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/McfManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    return-object v6
.end method

.method public final getMultiResolutionManager()Lcom/android/server/desktopmode/MultiResolutionManager;
    .locals 8

    .line 263
    new-instance v7, Lcom/android/server/desktopmode/MultiResolutionManager;

    const-class v0, Landroid/content/Context;

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/wm/WindowManagerService;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/desktopmode/MultiResolutionManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;)V

    return-object v7
.end method

.method public final getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 0

    .line 393
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageStateManager()Lcom/android/server/desktopmode/PackageStateManager;
    .locals 5

    .line 273
    new-instance v0, Lcom/android/server/desktopmode/PackageStateManager;

    const-class v1, Landroid/content/Context;

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/desktopmode/IStateManager;

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v3, Lcom/android/server/ServiceThread;

    .line 276
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ServiceThread;

    const-class v4, Landroid/content/pm/IPackageManager;

    .line 277
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/IPackageManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/desktopmode/PackageStateManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Landroid/content/pm/IPackageManager;)V

    return-object v0
.end method

.method public final getPowerManager()Landroid/os/PowerManager;
    .locals 1

    .line 397
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public final getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 0

    .line 401
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public final getSemDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 1

    .line 405
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object p0
.end method

.method public final getSemDesktopModeStateNotifier()Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
    .locals 2

    .line 281
    new-instance v0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/Injector;)V

    return-object v0
.end method

.method public final getSemDvfsManager()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    .line 409
    const-class v0, Landroid/content/Context;

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 411
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceThread()Lcom/android/server/ServiceThread;
    .locals 3

    .line 156
    new-instance p0, Lcom/android/server/ServiceThread;

    const/4 v0, -0x4

    const/4 v1, 0x0

    const-string v2, "desktopmode"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 157
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-object p0
.end method

.method public final getSettingsHelper()Lcom/android/server/desktopmode/SettingsHelper;
    .locals 4

    .line 285
    new-instance v0, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v1, Landroid/content/Context;

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 288
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/desktopmode/SettingsHelper;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/Injector;)V

    return-object v0
.end method

.method public final getStandaloneModeChanger()Lcom/android/server/desktopmode/StandaloneModeChanger;
    .locals 23

    move-object/from16 v0, p0

    .line 293
    new-instance v21, Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-object/from16 v1, v21

    const-class v2, Landroid/content/Context;

    .line 294
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    .line 295
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/IStateManager;

    const-class v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 296
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const-class v5, Lcom/android/server/ServiceThread;

    .line 297
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceThread;

    const-class v6, Lcom/android/server/desktopmode/UiManager;

    .line 298
    invoke-virtual {v0, v6}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/desktopmode/UiManager;

    const-class v7, Lcom/android/server/desktopmode/SettingsHelper;

    .line 299
    invoke-virtual {v0, v7}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v8, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 300
    invoke-virtual {v0, v8}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/desktopmode/MultiResolutionManager;

    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 301
    invoke-virtual {v0, v9}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityTaskManagerService;

    const-class v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 302
    invoke-virtual {v0, v10}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v11, Landroid/app/ActivityManagerInternal;

    .line 303
    invoke-virtual {v0, v11}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManagerInternal;

    const-class v12, Lcom/android/server/wm/WindowManagerInternal;

    .line 304
    invoke-virtual {v0, v12}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowManagerInternal;

    const-class v13, Landroid/app/StatusBarManager;

    .line 305
    invoke-virtual {v0, v13}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/StatusBarManager;

    const-class v14, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 306
    invoke-virtual {v0, v14}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-class v15, Lcom/samsung/android/os/SemDvfsManager;

    .line 307
    invoke-virtual {v0, v15}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v22, v1

    const-class v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-class v1, Landroid/telecom/TelecomManager;

    .line 309
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/telecom/TelecomManager;

    const-class v1, Landroid/app/IUiModeManager;

    .line 310
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/app/IUiModeManager;

    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    .line 311
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/server/desktopmode/HardwareManager;

    const-class v1, Lcom/android/server/UiModeManagerInternal;

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/UiModeManagerInternal;

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lcom/android/server/desktopmode/StandaloneModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/app/StatusBarManager;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/telecom/TelecomManager;Landroid/app/IUiModeManager;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/UiModeManagerInternal;)V

    return-object v21
.end method

.method public final getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 1

    .line 420
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    return-object p0
.end method

.method public final getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 146
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 424
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public final getTouchpadManager()Lcom/android/server/desktopmode/TouchpadManager;
    .locals 7

    .line 316
    new-instance v6, Lcom/android/server/desktopmode/TouchpadManager;

    const-class v0, Landroid/content/Context;

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/desktopmode/SettingsHelper;

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/desktopmode/SettingsHelper;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/TouchpadManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/WindowManagerService;)V

    return-object v6
.end method

.method public final getUiManager()Lcom/android/server/desktopmode/UiManager;
    .locals 4

    .line 325
    new-instance v0, Lcom/android/server/desktopmode/UiManager;

    const-class v1, Landroid/content/Context;

    .line 326
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/android/server/ServiceThread;

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ServiceThread;

    const-class v3, Lcom/android/server/desktopmode/IStateManager;

    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V

    return-object v0
.end method

.method public final getUiModeManagerInternal()Lcom/android/server/UiModeManagerInternal;
    .locals 0

    .line 428
    const-class p0, Lcom/android/server/UiModeManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/UiModeManagerInternal;

    return-object p0
.end method

.method public final getWindowManagerInternal()Lcom/android/server/wm/WindowManagerInternal;
    .locals 0

    .line 432
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public final getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .locals 0

    const-string/jumbo p0, "window"

    .line 437
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public final getWirelessDexManager()Lcom/android/server/desktopmode/WirelessDexManager;
    .locals 9

    .line 330
    new-instance v8, Lcom/android/server/desktopmode/WirelessDexManager;

    const-class v0, Landroid/content/Context;

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/android/server/desktopmode/IStateManager;

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/desktopmode/IStateManager;

    const-class v0, Lcom/android/server/desktopmode/UiManager;

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/desktopmode/UiManager;

    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const-class v0, Landroid/hardware/input/InputManager;

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/input/InputManager;

    const-class v0, Lcom/android/server/ServiceThread;

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/ServiceThread;

    const-class v0, Lcom/android/server/wm/WindowManagerService;

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/desktopmode/WirelessDexManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/UiManager;Landroid/hardware/display/DisplayManager;Landroid/hardware/input/InputManager;Lcom/android/server/ServiceThread;Lcom/android/server/wm/WindowManagerService;)V

    return-object v8
.end method
