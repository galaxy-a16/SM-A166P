.class public final Lcom/android/server/RealTimeTokenService;
.super Lcom/android/server/IRealTimeTokenService$Stub;
.source "RealTimeTokenService.java"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public bootingTime:J

.field public currentTime:J

.field public elapsedTime:J

.field public final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field public final mNetWorkReceiver:Landroid/content/BroadcastReceiver;

.field public final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mTimerObserve:Ljava/util/Timer;

.field public mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbootingTime(Lcom/android/server/RealTimeTokenService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetcurrentTime(Lcom/android/server/RealTimeTokenService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/RealTimeTokenService;->currentTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetelapsedTime(Lcom/android/server/RealTimeTokenService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerTask(Lcom/android/server/RealTimeTokenService;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbootingTime(Lcom/android/server/RealTimeTokenService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/RealTimeTokenService;->bootingTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimerObserve(Lcom/android/server/RealTimeTokenService;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RealTimeTokenService;->mTimerObserve:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSystemTime(Lcom/android/server/RealTimeTokenService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->getSystemTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/RealTimeTokenService;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "rtts_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/IRealTimeTokenService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/RealTimeTokenService$2;

    invoke-direct {v0, p0}, Lcom/android/server/RealTimeTokenService$2;-><init>(Lcom/android/server/RealTimeTokenService;)V

    iput-object v0, p0, Lcom/android/server/RealTimeTokenService;->mNetWorkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/RealTimeTokenService$3;

    invoke-direct {v0, p0}, Lcom/android/server/RealTimeTokenService$3;-><init>(Lcom/android/server/RealTimeTokenService;)V

    iput-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/RealTimeTokenService$4;

    invoke-direct {v0, p0}, Lcom/android/server/RealTimeTokenService$4;-><init>(Lcom/android/server/RealTimeTokenService;)V

    iput-object v0, p0, Lcom/android/server/RealTimeTokenService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->setContext(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->registerForNetWorkBroadcasts()V

    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->registerForBootCompleteds()V

    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->registerForTimeChangeBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public native checkAllTokenExpiry()I
.end method

.method public native checkTokenExpiry(J)I
.end method

.method public checkTokenInfoExpiry(J)I
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - checkTokenExpiry"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/RealTimeTokenService;->checkTokenExpiry(J)I

    move-result p0

    return p0
.end method

.method public native getActiveTokenNumber()I
.end method

.method public final getSystemTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/RealTimeTokenService;->currentTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/RealTimeTokenService;->elapsedTime:J

    return-void
.end method

.method public native initTokenStorage()I
.end method

.method public final isNetworkAvailable(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public makeTimerTask()V
    .locals 1

    new-instance v0, Lcom/android/server/RealTimeTokenService$1;

    invoke-direct {v0, p0}, Lcom/android/server/RealTimeTokenService$1;-><init>(Lcom/android/server/RealTimeTokenService;)V

    iput-object v0, p0, Lcom/android/server/RealTimeTokenService;->mTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public final registerForBootCompleteds()V
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string/jumbo v1, "register for Boot Completed Broadcasts"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "noConnectivity"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForNetWorkBroadcasts()V
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string/jumbo v1, "register for NetWork Broadcasts"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService;->mNetWorkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForTimeChangeBroadcasts()V
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string/jumbo v1, "register for TimeChange Broadcasts"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/RealTimeTokenService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public native registerToken(JJ)I
.end method

.method public registerTokenInfo(JJ)I
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - registerToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/RealTimeTokenService;->registerToken(JJ)I

    move-result p0

    return p0
.end method

.method public native setUserTime(J)I
.end method

.method public native unregisterAllToken()I
.end method

.method public unregisterAllTokenInfo()I
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - unregisterAllToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->unregisterAllToken()I

    move-result p0

    return p0
.end method

.method public native unregisterToken(J)I
.end method

.method public unregisterTokenInfo(J)I
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string v1, "IRealTimeTokenService - unregisterToken"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/RealTimeTokenService;->unregisterToken(J)I

    move-result p0

    return p0
.end method
