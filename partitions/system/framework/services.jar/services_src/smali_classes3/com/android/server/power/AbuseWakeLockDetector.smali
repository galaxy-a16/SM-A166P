.class public Lcom/android/server/power/AbuseWakeLockDetector;
.super Ljava/lang/Object;
.source "AbuseWakeLockDetector.java"


# static fields
.field public static final SEC_APP_PREFIX:[Ljava/lang/String;


# instance fields
.field public final mAm:Landroid/app/ActivityManager;

.field public final mCallback:Lcom/android/server/power/AbuseWakeLockDetector$Callback;

.field public final mContext:Landroid/content/Context;

.field public mIsAbuseWakeLockFound:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$EGlsb-nouOl2uaTLraGHUjstkdo(Lcom/android/server/power/PowerManagerService$WakeLock;)Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/AbuseWakeLockDetector;->lambda$handleAbuseWakelockWhenUserActivityChanged$0(Lcom/android/server/power/PowerManagerService$WakeLock;)Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PSuP3VyXXxKsgpaMm_BeZ8Hn8Ic(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/AbuseWakeLockDetector;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$o9q99KInUPKh41B8Q1OpHwkDHFk(Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/AbuseWakeLockDetector;->lambda$handleAbuseWakelockWhenUserActivityChanged$2(Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y-b_sVi6yHplWzzGExWmmiTUMRM(Lcom/android/server/power/AbuseWakeLockDetector;Ljava/util/ArrayList;Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/AbuseWakeLockDetector;->lambda$handleAbuseWakelockWhenUserActivityChanged$1(Ljava/util/ArrayList;Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sec."

    const-string v1, "com.samsung."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/AbuseWakeLockDetector;->SEC_APP_PREFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/AbuseWakeLockDetector$Callback;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    const-string p1, "activity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mAm:Landroid/app/ActivityManager;

    iput-object p4, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mWms:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/AbuseWakeLockDetector$Callback;

    return-void
.end method

.method public static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$handleAbuseWakelockWhenUserActivityChanged$0(Lcom/android/server/power/PowerManagerService$WakeLock;)Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;
    .locals 2

    new-instance v0, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$handleAbuseWakelockWhenUserActivityChanged$1(Ljava/util/ArrayList;Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;)Z
    .locals 1

    iget v0, p2, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->uid:I

    iget-object p2, p2, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/power/AbuseWakeLockDetector;->checkAppIsRunningBackground(ILjava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$handleAbuseWakelockWhenUserActivityChanged$2(Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->packageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final checkAppIsRunningBackground(ILjava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/power/AbuseWakeLockDetector;->isSecApp(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v5, 0x64

    if-le v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {p0, v5, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    :try_start_4
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_7

    :catch_0
    move p0, v0

    goto :goto_6

    :catch_1
    move p0, v0

    goto :goto_5

    :catch_2
    move p0, v0

    move v4, p0

    goto :goto_6

    :catch_3
    move p0, v0

    move v4, p0

    goto :goto_5

    :catch_4
    move p0, v0

    move v3, p0

    goto :goto_3

    :catch_5
    move p0, v0

    move v3, p0

    goto :goto_4

    :catch_6
    move p0, v0

    move v2, p0

    move v3, v2

    :goto_3
    move v4, v3

    goto :goto_6

    :catch_7
    move p0, v0

    move v2, p0

    move v3, v2

    :goto_4
    move v4, v3

    :catch_8
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process abuse wakelock; Failed to find "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AbuseWakeLockDetector"

    invoke-static {p3, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_9
    :goto_6
    move p2, v1

    :goto_7
    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez p2, :cond_3

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public final clearAbuseWakeLockLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/AbuseWakeLockDetector$Callback;

    invoke-interface {p0}, Lcom/android/server/power/AbuseWakeLockDetector$Callback;->onAbuseWakeLockRemoved()V

    return-void
.end method

.method public handleAbuseWakelockWhenUserActivityChanged(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/AbuseWakeLockDetector;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/AbuseWakeLockDetector$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/power/AbuseWakeLockDetector$Callback;->onAbuseWakeLockAdded(Ljava/util/List;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final isSecApp(Ljava/lang/String;)Z
    .locals 4

    sget-object p0, Lcom/android/server/power/AbuseWakeLockDetector;->SEC_APP_PREFIX:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onUserActivity()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/AbuseWakeLockDetector;->clearAbuseWakeLockLocked()V

    :cond_0
    return-void
.end method
