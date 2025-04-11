.class public Lcom/android/server/tare/InternalResourceService;
.super Lcom/android/server/SystemService;
.source "InternalResourceService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAgent:Lcom/android/server/tare/Agent;

.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mApbListener:Lcom/android/internal/app/IAppOpsCallback;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public volatile mBootPhase:I

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

.field public final mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

.field public mCurrentBatteryLevel:I

.field public final mDefaultTargetBackgroundBatteryLifeHours:I

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public final mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

.field public volatile mEnabledMode:I

.field public volatile mExemptListLoaded:Z

.field public mExemptedApps:Landroid/util/ArraySet;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mHasBattery:Z

.field public final mInstallers:Landroid/util/SparseArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageToUidCache:Landroid/util/SparseArrayMap;

.field public final mPkgCache:Landroid/util/SparseArrayMap;

.field public final mRestrictedApps:Landroid/util/SparseSetArray;

.field public final mScribe:Lcom/android/server/tare/Scribe;

.field public final mStateChangeListeners:Landroid/util/SparseSetArray;

.field public final mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

.field public mTargetBackgroundBatteryLifeHours:I

.field public final mTemporaryVips:Landroid/util/SparseArrayMap;

.field public final mUidToPackageCache:Landroid/util/SparseSetArray;

.field public final mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mVipOverrides:Landroid/util/SparseArrayMap;

.field public mWellbeingPackage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$DSWUkwIPKapeoREZ5VluuE-iP3o(Lcom/android/server/tare/InternalResourceService;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tare/InternalResourceService;->lambda$scheduleUnusedWealthReclamationLocked$0(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qqav1bDoLBrZuEgde7U2opVT4iU(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->setupHeavyWork()V

    return-void
.end method

.method public static synthetic $r8$lambda$vHiv_oRox2ZPZQGNLyJ4n41YKKs(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->lambda$tearDownEverything$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsService(Lcom/android/server/tare/InternalResourceService;)Lcom/android/internal/app/IAppOpsService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootPhase(Lcom/android/server/tare/InternalResourceService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigObserver(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/InternalResourceService$ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultTargetBackgroundBatteryLifeHours(Lcom/android/server/tare/InternalResourceService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tare/InternalResourceService;->mDefaultTargetBackgroundBatteryLifeHours:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasBattery(Lcom/android/server/tare/InternalResourceService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/tare/InternalResourceService;->mHasBattery:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestrictedApps(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mRestrictedApps:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mStateChangeListeners:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemporaryVips(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnabledMode(Lcom/android/server/tare/InternalResourceService;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasBattery(Lcom/android/server/tare/InternalResourceService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/tare/InternalResourceService;->mHasBattery:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTargetBackgroundBatteryLifeHours(Lcom/android/server/tare/InternalResourceService;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tare/InternalResourceService;->mTargetBackgroundBatteryLifeHours:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/tare/InternalResourceService;Landroid/util/IndentingPrintWriter;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->dumpInternal(Landroid/util/IndentingPrintWriter;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misTareSupported(Lcom/android/server/tare/InternalResourceService;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->isTareSupported()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mprocessUsageEventLocked(Lcom/android/server/tare/InternalResourceService;ILandroid/app/usage/UsageEvents$Event;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->processUsageEventLocked(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUnusedWealthReclamationLocked(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->scheduleUnusedWealthReclamationLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetupEverything(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->setupEverything()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtearDownEverything(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->tearDownEverything()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "TARE"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mStateChangeListeners:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mRestrictedApps:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mHasBattery:Z

    new-instance v0, Lcom/android/server/tare/InternalResourceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$1;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mApbListener:Lcom/android/internal/app/IAppOpsCallback;

    new-instance v0, Lcom/android/server/tare/InternalResourceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$2;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/tare/InternalResourceService$3;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$3;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    new-instance v0, Lcom/android/server/tare/InternalResourceService$4;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$4;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/InternalResourceService$IrsHandler;-><init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    invoke-direct {v2, p0}, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    new-instance v2, Lcom/android/server/tare/Analyst;

    invoke-direct {v2}, Lcom/android/server/tare/Analyst;-><init>()V

    iput-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    new-instance v3, Lcom/android/server/tare/Scribe;

    invoke-direct {v3, p0, v2}, Lcom/android/server/tare/Scribe;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;)V

    iput-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    new-instance v4, Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-direct {v4, p0}, Lcom/android/server/tare/CompleteEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    new-instance v4, Lcom/android/server/tare/Agent;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/server/tare/Agent;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Scribe;Lcom/android/server/tare/Analyst;)V

    iput-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    new-instance v2, Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;-><init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    const-string p1, "android.hardware.type.watch"

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    :goto_0
    iput p1, p0, Lcom/android/server/tare/InternalResourceService;->mDefaultTargetBackgroundBatteryLifeHours:I

    iput p1, p0, Lcom/android/server/tare/InternalResourceService;->mTargetBackgroundBatteryLifeHours:I

    new-instance p1, Lcom/android/server/tare/InternalResourceService$LocalService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/tare/InternalResourceService$LocalService;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/InternalResourceService$LocalService-IA;)V

    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Resource Economy (economy) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-h|--help] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -h | --help: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$scheduleUnusedWealthReclamationLocked$0(JJ)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr p1, p3

    add-long/2addr v3, p1

    const-wide/32 v5, 0x1b7740

    const-string v7, "*tare.reclamation*"

    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$tearDownEverything$1()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final adjustCreditSupplyLocked(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-lez v4, :cond_1

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    long-to-double v0, v0

    mul-double/2addr v4, v0

    double-to-long v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onCreditSupplyChanged()V

    return-void
.end method

.method public final dumpInternal(Landroid/util/IndentingPrintWriter;Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->isTareSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Unsupported by device"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Enabled mode: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    invoke-static {v1}, Landroid/app/tare/EconomyManager;->enabledModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Current battery level: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v1

    const-string v3, "Consumption limit (current/initial-satiated/current-satiated): "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Target bg battery life (hours): "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/tare/InternalResourceService;->mTargetBackgroundBatteryLifeHours:I

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " ("

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/tare/InternalResourceService;->mTargetBackgroundBatteryLifeHours:I

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float v6, v7, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%/hr)"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v5

    const-string v3, "Goods remaining: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%.2f"

    new-array v9, v4, [Ljava/lang/Object;

    long-to-float v5, v5

    mul-float/2addr v5, v7

    long-to-float v1, v1

    div-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v8

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "% of current limit)"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Device wealth: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getCakesInCirculationForLoggingLocked()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Exempted apps"

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Wellbeing app="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mWellbeingPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "None"

    :cond_1
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "VIPs:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v8

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    move v5, v8

    :goto_1
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-static {v3, v2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_2

    :cond_4
    const-string v1, " None"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Temp VIPs:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v8

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    move v5, v8

    :goto_4
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-static {v3, v2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move v2, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_5

    :cond_7
    const-string v1, " None"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Installers:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v8

    :goto_6
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v8

    :goto_7
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, " apps"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/CompleteEconomicPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tare/Scribe;->dumpLocked(Landroid/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p2, p1}, Lcom/android/server/tare/Agent;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {p2, p1}, Lcom/android/server/tare/Analyst;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Interesting apps:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v8

    move v1, p2

    :goto_8
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge p2, v2, :cond_d

    move v2, v8

    :goto_9
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    if-ge v2, v3, :cond_c

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/InstalledPackageInfo;

    iget-boolean v5, v3, Lcom/android/server/tare/InstalledPackageInfo;->hasCode:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v3, Lcom/android/server/tare/InstalledPackageInfo;->isHeadlessSystemApp:Z

    if-eqz v5, :cond_a

    iget v5, v3, Lcom/android/server/tare/InstalledPackageInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v4

    goto :goto_a

    :cond_a
    move v5, v8

    :goto_a
    if-nez v5, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    move v1, v4

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_c

    :cond_e
    const-string p0, " None"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public executeClearVip(Ljava/io/PrintWriter;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->clear()V

    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0, v1}, Lcom/android/server/tare/Agent;->onVipStatusChangedLocked(Landroid/util/SparseSetArray;)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Cleared all VIP statuses"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public executeSetVip(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/Boolean;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v1

    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p3, p4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/tare/Agent;->onVipStatusChangedLocked(ILjava/lang/String;)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " VIP status set to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Final VIP state changed? "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAppUpdateResponsibilityCount(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/android/internal/util/jobs/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-object p0
.end method

.method public getConsumptionLimitLocked()J
    .locals 4

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCurrentBatteryLevel()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getEnabledMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    return p0
.end method

.method public getEnabledMode(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/CompleteEconomicPolicy;->isPolicyEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInitialSatiatedConsumptionLimitLocked()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstalledPackageInfo(ILjava/lang/String;)Lcom/android/server/tare/InstalledPackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/InstalledPackageInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInstalledPackages()Landroid/util/SparseArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/InstalledPackageInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMinBalanceLocked(ILjava/lang/String;)J
    .locals 2

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide p0

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x64

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public final getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .locals 5

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRealtimeSinceFirstSetupMs()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tare/Scribe;->getRealtimeSinceFirstSetupMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid(ILjava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p2, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final grantInstallersTemporaryVipStatusLocked(IJJ)V
    .locals 5

    add-long/2addr p2, p4

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/InstalledPackageInfo;

    iget-boolean v3, v2, Lcom/android/server/tare/InstalledPackageInfo;->isSystemInstaller:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    iget-object v4, v2, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-gez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    iget-object v2, v2, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public isHeadlessSystemApp(ILjava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    const-string p0, "TARE-IRS"

    const-string p1, "isHeadlessSystemApp called with null package"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackageInfo(ILjava/lang/String;)Lcom/android/server/tare/InstalledPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/android/server/tare/InstalledPackageInfo;->isHeadlessSystemApp:Z

    if-eqz p1, :cond_1

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mWellbeingPackage:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPackageExempted(ILjava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPackageRestricted(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mRestrictedApps:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSystem(ILjava/lang/String;)Z
    .locals 1

    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    return p0
.end method

.method public final isTareSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/tare/InternalResourceService;->mHasBattery:Z

    return p0
.end method

.method public isVip(ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public isVip(ILjava/lang/String;J)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mTemporaryVips:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, p3, v3

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    monitor-exit v2

    return v1

    :cond_3
    monitor-exit v2

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final loadInstalledPackageListLocked()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const v5, 0x400c1000

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_0

    new-instance v6, Lcom/android/server/tare/InstalledPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v6, v7, v3, v8}, Lcom/android/server/tare/InstalledPackageInfo;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageInfo;)V

    iget-object v7, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    iget-object v8, v6, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3, v8, v6}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/InstalledPackageInfo;

    invoke-virtual {p0, v7, v6}, Lcom/android/server/tare/InternalResourceService;->maybeUpdateInstallerStatusLocked(Lcom/android/server/tare/InstalledPackageInfo;Lcom/android/server/tare/InstalledPackageInfo;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public maybeAdjustDesiredStockLevelLocked()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    iget-boolean v1, v1, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->ENABLE_TIP3:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tare/InternalResourceService;->getRealtimeSinceFirstSetupMs()J

    move-result-wide v1

    const-wide/32 v3, 0x19bfcc00

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getLastStockRecalculationTimeLocked()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x36ee800

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    iget v3, v0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    const/16 v4, 0x50

    if-gt v3, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v3}, Lcom/android/server/tare/Analyst;->getBatteryScreenOffDurationMs()J

    move-result-wide v3

    const-wide/32 v5, 0x1b77400

    cmp-long v5, v3, v5

    if-gez v5, :cond_3

    return-void

    :cond_3
    iget-object v5, v0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v5}, Lcom/android/server/tare/Analyst;->getBatteryScreenOffDischargeMah()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-string v8, "TARE-IRS"

    if-nez v7, :cond_4

    const-string v0, "Total discharge was 0"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v7, v0, Lcom/android/server/tare/InternalResourceService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v7}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v9, v7

    mul-long v11, v9, v3

    div-long/2addr v11, v5

    const-wide/32 v13, 0x36ee80

    div-long/2addr v11, v13

    const-wide/16 v13, 0x64

    mul-long v15, v11, v13

    iget v7, v0, Lcom/android/server/tare/InternalResourceService;->mTargetBackgroundBatteryLifeHours:I

    int-to-long v13, v7

    div-long v13, v15, v13

    sget-boolean v7, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "maybeAdjustDesiredStockLevelLocked: screenOffMs="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " dischargeMah="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " capacityMah="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " estimatedLifeHours="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " %ofTarget="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v3

    const-wide/16 v5, 0x69

    cmp-long v5, v13, v5

    if-lez v5, :cond_6

    long-to-double v5, v3

    const-wide v9, 0x3ff028f5c28f5c29L    # 1.01

    mul-double/2addr v5, v9

    double-to-long v5, v5

    iget-object v7, v0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v7}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedConsumptionLimit()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_0

    :cond_6
    const-wide/16 v5, 0x64

    cmp-long v5, v13, v5

    if-gez v5, :cond_7

    long-to-double v5, v3

    const-wide v9, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v5, v9

    double-to-long v5, v5

    iget-object v7, v0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v7}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedConsumptionLimit()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :goto_0
    cmp-long v7, v5, v3

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adjusting consumption limit from "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because drain was "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "% of target"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    iget-object v0, v0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/tare/Scribe;->setLastStockRecalculationTimeLocked(J)V

    :cond_7
    :goto_1
    return-void
.end method

.method public maybePerformQuantitativeEasingLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    iget-boolean v0, v0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->ENABLE_TIP3:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->maybeAdjustDesiredStockLevelLocked()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getRealtimeSinceFirstSetupMs()J

    move-result-wide v0

    const-wide/32 v2, 0x19bfcc00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v4}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedConsumptionLimit()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Increasing consumption limit from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TARE-IRS"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final maybeUpdateInstallerStatusLocked(Lcom/android/server/tare/InstalledPackageInfo;Lcom/android/server/tare/InstalledPackageInfo;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p2, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v0, p2, Lcom/android/server/tare/InstalledPackageInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p2, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    iget-object p1, p1, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p2, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-nez p1, :cond_4

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    iget-object p2, p2, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public onBatteryLevelChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getCurrentBatteryLevel()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v2, v1}, Lcom/android/server/tare/Analyst;->noteBatteryLevelChange(I)V

    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    if-le v1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const/16 v2, 0x50

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->maybeAdjustDesiredStockLevelLocked()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v2, v1}, Lcom/android/server/tare/Agent;->distributeBasicIncomeLocked(I)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    invoke-virtual {p0, v3}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x258

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBootPhaseBootCompleted()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBootPhaseThirdPartyAppsCanStart()V

    goto :goto_0

    :cond_2
    const-string p1, "appops"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const-string p1, "deviceidle"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->start()V

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBootPhaseSystemServicesReady()V

    :goto_0
    return-void
.end method

.method public final onBootPhaseBootCompleted()V
    .locals 3

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBootPhaseSystemServicesReady()V
    .locals 4

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->registerListeners()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mWellbeingPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getCurrentBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "present"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/tare/InternalResourceService;->mHasBattery:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mHasBattery:Z

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->-$$Nest$mupdateEnabledStatus(Lcom/android/server/tare/InternalResourceService$ConfigObserver;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBootPhaseThirdPartyAppsCanStart()V
    .locals 2

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDeviceStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onDeviceStateChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onExemptionListChanged()V
    .locals 12

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :try_start_1
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v6}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    iput-boolean v4, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_0
    if-ltz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_1
    const/4 v6, 0x0

    if-ltz v5, :cond_5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    array-length v8, v0

    move v9, v6

    :goto_2
    if-ge v9, v8, :cond_4

    aget v10, v0, v9

    invoke-virtual {p0, v10, v7}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_2

    move v11, v4

    goto :goto_3

    :cond_2
    move v11, v6

    :goto_3
    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v11, v10, v7}, Lcom/android/server/tare/Agent;->onAppExemptedLocked(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_4
    if-ltz v3, :cond_9

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    array-length v7, v0

    move v8, v6

    :goto_5
    if-ge v8, v7, :cond_8

    aget v9, v0, v8

    invoke-virtual {p0, v9, v5}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_6

    move v10, v4

    goto :goto_6

    :cond_6
    move v10, v6

    :goto_6
    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v10, v9, v5}, Lcom/android/server/tare/Agent;->onAppUnexemptedLocked(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onPackageAdded(ILjava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x400c1000

    invoke-virtual {v1, p2, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, p2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    new-instance v2, Lcom/android/server/tare/InstalledPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0, v1}, Lcom/android/server/tare/InstalledPackageInfo;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageInfo;)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/InstalledPackageInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tare/InternalResourceService;->maybeUpdateInstallerStatusLocked(Lcom/android/server/tare/InstalledPackageInfo;Lcom/android/server/tare/InstalledPackageInfo;)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/tare/Agent;->grantBirthrightLocked(ILjava/lang/String;)V

    iget-object p1, v2, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const/high16 p2, -0x60000000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catch_0
    move-exception p0

    const-string p1, "TARE-IRS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PM couldn\'t find newly added package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onPackageForceStopped(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const/16 v1, 0x8

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tare/Agent;->reclaimAllAssetsLocked(ILjava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tare/InstalledPackageInfo;

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/tare/InstalledPackageInfo;->installerPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/tare/Agent;->onPackageRemovedLocked(ILjava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "tare"

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUidStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "TARE-IRS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t have packages for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tare/Agent;->onAppStatesChangedLocked(ILandroid/util/ArraySet;)V

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

.method public onUserAdded(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x400c1000

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    new-instance v3, Lcom/android/server/tare/InstalledPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tare/InstalledPackageInfo;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageInfo;)V

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    iget-object v5, v3, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/InstalledPackageInfo;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/tare/InternalResourceService;->maybeUpdateInstallerStatusLocked(Lcom/android/server/tare/InstalledPackageInfo;Lcom/android/server/tare/InstalledPackageInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, p1, v4, v5}, Lcom/android/server/tare/Scribe;->setUserAddedTimeLocked(IJ)V

    const-wide/32 v6, 0x240c8400

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tare/InternalResourceService;->grantInstallersTemporaryVipStatusLocked(IJJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserRemoved(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mVipOverrides:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/InstalledPackageInfo;

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    iget v3, v3, Lcom/android/server/tare/InstalledPackageInfo;->uid:I

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mInstallers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/Agent;->onUserRemovedLocked(I)V

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Scribe;->onUserRemovedLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " affordability changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TARE-IRS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final processUsageEventLocked(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 10

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TARE-IRS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const/high16 p2, -0x80000000

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const p2, -0x7ffffffc

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const v4, -0x7ffffffe

    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const v4, -0x7ffffffe

    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public final registerListeners()V
    .locals 12

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mApbListener:Lcom/android/internal/app/IAppOpsCallback;

    const/16 v1, 0x46

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final scheduleUnusedWealthReclamationLocked()V
    .locals 8

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/16 v0, 0x7530

    add-long/2addr v0, v4

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getLastReclamationTimeLocked()J

    move-result-wide v2

    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/tare/InternalResourceService;JJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setupEverything()V
    .locals 2

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBootPhaseSystemServicesReady()V

    :cond_1
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBootPhaseThirdPartyAppsCanStart()V

    :cond_2
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBootPhaseBootCompleted()V

    :cond_3
    return-void
.end method

.method public final setupHeavyWork()V
    .locals 13

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->loadInstalledPackageListLocked()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->recordExists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/tare/Scribe;->setLastReclamationTimeLocked(J)V

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->loadFromDiskLocked()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedConsumptionLimit()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedConsumptionLimit()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, v10, v11}, Lcom/android/server/tare/Scribe;->getRealtimeSinceUsersAddedLocked(J)Landroid/util/SparseLongArray;

    move-result-object v1

    :goto_3
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    array-length v12, v3

    :goto_4
    if-ge v2, v12, :cond_6

    aget v5, v3, v2

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    cmp-long v4, v6, v8

    if-gez v4, :cond_5

    sub-long/2addr v8, v6

    move-object v4, p0

    move-wide v6, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/tare/InternalResourceService;->grantInstallersTemporaryVipStatusLocked(IJJ)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->scheduleUnusedWealthReclamationLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_5
    return-void
.end method

.method public final tearDownEverything()V
    .locals 3

    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mEnabledMode:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent;->tearDownLocked()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1}, Lcom/android/server/tare/Analyst;->tearDown()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1}, Lcom/android/server/tare/EconomicPolicy;->tearDown()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->tearDownLocked()V

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->clear()V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mApbListener:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
