.class public Lcom/android/server/sepunion/PaymentSafetyService;
.super Lcom/samsung/android/sepunion/IPaymentSafetyService$Stub;
.source "PaymentSafetyService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final ARGS:[Ljava/lang/String;

.field public static final IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

.field public static final PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

.field public static final PAYMENT_APP_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mContext:Landroid/content/Context;

.field public mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mHandler:Landroid/os/Handler;

.field public mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mImportantAppSet:Ljava/util/HashSet;

.field public mImportantComponentList:Ljava/util/ArrayList;

.field public mPkgChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mProtectedAppLoaded:Z

.field public mProtectedAppSet:Ljava/util/HashSet;

.field public mUsageStatusWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field public mUserActionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$ftdSd_b2ozYzmp6HgKuESx8WDys(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pdBr4AxLT7zo0ixeUmzSHJWI7wg(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckedAppMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundActivitiesPidMap(Lcom/android/server/sepunion/PaymentSafetyService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/PaymentSafetyService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckImportantApp(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->checkImportantApp(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckImportantApp(Lcom/android/server/sepunion/PaymentSafetyService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/PaymentSafetyService;->checkImportantApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPaymentApp(Lcom/android/server/sepunion/PaymentSafetyService;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/PaymentSafetyService;->checkPaymentApp(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPaymentApp(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->checkPaymentApp(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadImportantAppComponentList(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->loadImportantAppComponentList()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadProctedAppSet(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->loadProctedAppSet()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPkgChanged(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->onPkgChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserAction(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService;->onUserAction(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->onUserUnlocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterWatcherForImportantComponentList(Lcom/android/server/sepunion/PaymentSafetyService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->registerWatcherForImportantComponentList()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/sepunion/PaymentSafetyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm/ProtectedApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.payment"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.payment/importantComponentList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->PROJECTION:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IPaymentSafetyService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppLoaded:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantAppSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantComponentList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/sepunion/PaymentSafetyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/PaymentSafetyService$1;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/sepunion/PaymentSafetyService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/PaymentSafetyService$2;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mPkgChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/sepunion/PaymentSafetyService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/PaymentSafetyService$3;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mUsageStatusWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    iput-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "PaymentSafetyPolicy"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/PaymentSafetyService$BgWorkerHandler;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->registerReceiver()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->registerRunningProcessObserver()V

    return-void
.end method


# virtual methods
.method public final checkImportantApp(Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    const-string/jumbo v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0xbb8

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    sget-object p0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string p1, "avoid repeat check in 3 seconds"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/PaymentSafetyService;->isProtectedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v1, "startCheck"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v0, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkImportantApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "class_name"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final checkPaymentApp(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "uid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final checkPaymentApp(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "pid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/PaymentSafetyService;->isProtectedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v1, "pkg_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v1, "startCheck"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v0, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "##### PaymentSafetyService  #####"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " Current Payment App:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    new-instance p3, Lcom/android/server/sepunion/PaymentSafetyService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/android/server/sepunion/PaymentSafetyService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isProtectedApp(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->loadProctedAppSet()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not target"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadImportantAppComponentList()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/sepunion/PaymentSafetyService;->IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantComponentList:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v1, "getImportantComponentList"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final loadProctedAppSet()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/sepunion/PaymentSafetyService;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "mode=?"

    sget-object v6, Lcom/android/server/sepunion/PaymentSafetyService;->ARGS:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppLoaded:Z

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mProtectedAppSet:Ljava/util/HashSet;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v2, "Protected App is empty"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception p0

    :try_start_6
    sget-object v1, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v2, "SmartManager app doesn\'t support payment app list, please check"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBootPhase"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sepunion/PaymentSafetyService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/PaymentSafetyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onPkgChanged(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v1, "onPkgChanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v0, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onUserAction(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v1, "onUserAction"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v0, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->registerPretectedAppDBObserver()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->loadProctedAppSet()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->loadImportantAppComponentList()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/PaymentSafetyService;->registerWatcherForImportantComponentList()V

    return-void
.end method

.method public final registerPretectedAppDBObserver()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/server/sepunion/PaymentSafetyService$ProtectedAppDBObserver;

    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/PaymentSafetyService$ProtectedAppDBObserver;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/server/sepunion/PaymentSafetyService;->PAYMENT_APP_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerObserver cause exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final registerReceiver()V
    .locals 6

    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mPkgChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerReceiver cause exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final registerRunningProcessObserver()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver;-><init>(Lcom/android/server/sepunion/PaymentSafetyService;Lcom/android/server/sepunion/PaymentSafetyService$RunningProcessObserver-IA;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerRunningProcessObserver cause exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final registerWatcherForImportantComponentList()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mUsageStatusWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string v0, "IMPORTANT_COMPONENT_LIST is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mUsageStatusWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    iget-object p0, p0, Lcom/android/server/sepunion/PaymentSafetyService;->mImportantComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/sepunion/PaymentSafetyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerWatcherForImportantComponents cause exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
