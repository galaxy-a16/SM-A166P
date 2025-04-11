.class public Lcom/android/server/location/gnss/NtpNetworkTimeHelper;
.super Lcom/android/server/location/gnss/NetworkTimeHelper;
.source "NtpNetworkTimeHelper.java"


# static fields
.field public static final DEBUG:Z

.field static final NTP_INTERVAL:J = 0x5265c00L

.field static final RETRY_INTERVAL:J = 0x493e0L


# instance fields
.field public final mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

.field public final mConnMgr:Landroid/net/ConnectivityManager;

.field public final mDumpLog:Landroid/util/LocalLog;

.field public final mHandler:Landroid/os/Handler;

.field public mInjectNtpTimeState:I

.field public final mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field public final mNtpTime:Landroid/util/NtpTrustedTime;

.field public mPeriodicTimeInjection:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$56i5ntXr3lj1SHqfxX_ju6wPLNw(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->lambda$blockingGetNtpTimeAndInject$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DiHOEEEK9p5S_FZuNaLJNkMwj2Y(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;JJI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->lambda$maybeInjectCachedNtpTime$1(JJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Prd1O8ovcWG64n9K2U2sS7gDDm0(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->blockingGetNtpTimeAndInject()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "NtpNetworkTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;)V
    .locals 1

    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;Landroid/util/NtpTrustedTime;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;Landroid/util/NtpTrustedTime;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/location/gnss/NetworkTimeHelper;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v3, 0x493e0

    const-wide/32 v5, 0xdbba00

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    iput v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    iput-object p4, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "NtpTimeHelper"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private synthetic lambda$blockingGetNtpTimeAndInject$0(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->retrieveAndInjectNtpTime(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$maybeInjectCachedNtpTime$1(JJI)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;->injectTime(JJI)V

    return-void
.end method


# virtual methods
.method public final blockingGetNtpTimeAndInject()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v2

    const-wide/32 v3, 0x5265c00

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v2

    :goto_1
    monitor-enter p0

    const/4 v5, 0x2

    :try_start_0
    iput v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockingGetNtpTimeAndInject:, debugId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", refreshSuccess="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->maybeInjectCachedNtpTime(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v5}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    goto :goto_2

    :cond_2
    const-string/jumbo v3, "maybeInjectCachedNtpTime() returned false"

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logWarn(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v3

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    if-nez v5, :cond_3

    if-nez v2, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockingGetNtpTimeAndInject: Scheduling later NTP retrieval, debugId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mPeriodicTimeInjection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", refreshSuccess="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", delayMillis="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduled: debugId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public demandUtcTimeInjection()V
    .locals 1

    const-string v0, "demandUtcTimeInjection"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->retrieveAndInjectNtpTime(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "NtpNetworkTimeHelper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInjectNtpTimeState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPeriodicTimeInjection="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNtpBackOff="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "Debug log:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p1, "NtpTrustedTime:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isNetworkConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final logDebug(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "NtpNetworkTimeHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logWarn(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string p0, "NtpNetworkTimeHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized maybeInjectCachedNtpTime(Ljava/lang/String;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maybeInjectCachedNtpTime: Injecting latest NTP time, reason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ntpResult="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", System time offset millis="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logDebug(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getUncertaintyMillis()I

    move-result v8

    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;JJI)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maybeInjectCachedNtpTime: Not injecting latest NTP time, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ntpResult="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onNetworkAvailable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "onNetworkAvailable"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->retrieveAndInjectNtpTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized retrieveAndInjectNtpTime(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[Network not connected]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->maybeInjectCachedNtpTime(Ljava/lang/String;)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPeriodicTimeInjectionMode(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
