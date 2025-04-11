.class public final Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;
.super Ljava/lang/Object;
.source "EndpointMonitorImpl.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_INIT_DELAY_MS:J = 0x64L

.field public static final DEFAULT_PERIOD_MS:J = 0xaL

.field public static final DomainAccessMonitorThreadName:Ljava/lang/String; = "DomainMonitor"

.field public static final FileAccessMonitorThreadName:Ljava/lang/String; = "FileMonitor"

.field public static final MAX_SESSION_CNT:I = 0x2

.field public static final SockStateChangeMonitorThreadName:Ljava/lang/String; = "SocketMonitor"

.field public static final SystemCallMonitorThreadName:Ljava/lang/String; = "SystemCallMonitor"

.field public static final TAG:Ljava/lang/String; = "EndpointMonitorImpl"

.field public static final TlsPacketMonitorThreadName:Ljava/lang/String; = "TlsPacketMonitor"


# instance fields
.field public final mBootTimeNanos:J

.field public mInitialized:Z

.field public mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

.field public mSessions:Ljava/util/Map;

.field public final mSessionsLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$4KV5bQKiapXjwa-u5PfvYSQNu2w(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$startMonitoringFiles$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZd1PUTP69xwevTzVgoanT50mQ8(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$createMonitorRunnable$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GkYmRmUPtpGnb3FxDbL_aUmr2hk(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$createMonitorFactory$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HWcqNWdbKsRdUV5TNj6DVSE6f2U(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$startTracing$6(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$P9WJkaQNqDwoK9gal_AFhDuPKP0(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$createMonitorRunnable$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PQX189EGajVl-2EyprYryjTcWM4(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$createMonitorFactory$5(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z6Bd9eSW9_laOoSHWreMy001nA0(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$createMonitorRunnable$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pQLE4tx7DqJE7ks0gC7k84DIb1o(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->lambda$createMonitorRunnable$3(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBootTimeNanos(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateMonitorFactory(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitorFactory(I)Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateMonitorRunnable(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;II)Ljava/lang/Runnable;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitorRunnable(II)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->isDebuggableBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    return-void
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    return-object p0

    .line 720
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getProcessName(I)Ljava/lang/String;
    .locals 0

    .line 716
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmServerUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDebuggableBinary()Z
    .locals 2

    .line 725
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    .line 726
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$createMonitorFactory$4(Ljava/lang/Runnable;)V
    .locals 1

    .line 117
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 118
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$createMonitorFactory$5(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 114
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitor created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p0, 0x1

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private synthetic lambda$createMonitorRunnable$0(I)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->readFsData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->onFileAccessDetected(ILjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$createMonitorRunnable$1(I)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->readSkData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->onSocketStateChanged(ILjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$createMonitorRunnable$2(I)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->readScData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->onSystemCallDetected(ILjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$createMonitorRunnable$3(I)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->readPktData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->onTlsPacketDetected(ILjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$startMonitoringFiles$7(I)V
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->readFsData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->onFileAccessDetected(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$startTracing$6(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    .line 279
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateEventTime(J)J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    add-long/2addr v0, p1

    const-wide/32 p0, 0xf4240

    .line 84
    div-long/2addr v0, p0

    return-wide v0
.end method

.method public final closeSessionLocked(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;)V
    .locals 3

    .line 512
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSession() - reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->requestorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 515
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->requestorUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createMonitorFactory(I)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, "FileMonitor"

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    if-ne p1, p0, :cond_1

    const-string p0, "DomainMonitor"

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-string p0, "SocketMonitor"

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    const-string p0, "SystemCallMonitor"

    goto :goto_0

    :cond_3
    const/4 p0, 0x5

    if-ne p1, p0, :cond_4

    const-string p0, "TlsPacketMonitor"

    goto :goto_0

    :cond_4
    const-string p0, "Nop"

    .line 113
    :goto_0
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final createMonitorRunnable(II)Ljava/lang/Runnable;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 89
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V

    return-object p1

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 95
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V

    return-object p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 98
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 101
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final createMonitorSession(II[ILjava/util/Map;Landroid/os/IZtdListener;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;III)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 13

    .line 358
    new-instance v12, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;II[ILjava/util/Map;Landroid/os/IZtdListener;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;III)V

    return-object v12
.end method

.method public final createMonitorSessionForEpm(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 12

    const/4 v0, 0x0

    new-array v4, v0, [I

    .line 351
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitorSession(II[ILjava/util/Map;Landroid/os/IZtdListener;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;III)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object v0

    return-object v0
.end method

.method public final createMonitorSessionForUad(II[ILjava/util/Map;Landroid/os/IZtdListener;)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 345
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitorSession(II[ILjava/util/Map;Landroid/os/IZtdListener;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;III)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object v0

    return-object v0
.end method

.method public final createTargetFiles(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 229
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 236
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 237
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-object p0

    .line 230
    :cond_2
    :goto_1
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string p2, "Failed to create target files due to invalid args"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final declared-synchronized ensureInitialized()V
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInitialized:Z

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInitialized:Z

    .line 68
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Lazily initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDomainMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 1

    .line 144
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    if-eqz p0, :cond_0

    .line 145
    iget p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getFileMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    if-eqz p0, :cond_0

    .line 140
    iget p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMonitorSessionLocked(II)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getDomainMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    return-object p0

    .line 133
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getTlsPacketMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    return-object p0

    .line 131
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getSocketMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    return-object p0

    .line 129
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFileMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    return-object p0

    .line 132
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getSystemCallMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    return-object p0
.end method

.method public final getSocketMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    if-eqz p0, :cond_0

    .line 150
    iget p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSystemCallMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    if-eqz p0, :cond_0

    .line 155
    iget p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTlsPacketMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    if-eqz p0, :cond_0

    .line 160
    iget p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public native nativeReadFsData()Ljava/util/ArrayList;
.end method

.method public native nativeReadPktData()Ljava/util/ArrayList;
.end method

.method public native nativeReadScData()Ljava/util/ArrayList;
.end method

.method public native nativeReadSkData()Ljava/util/ArrayList;
.end method

.method public native nativeSetBpfHelper(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;)I
.end method

.method public native nativeSetTargetFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
.end method

.method public native nativeSetTracer(I)I
.end method

.method public native nativeStartDpTracing()I
.end method

.method public native nativeStartTracing(I)I
.end method

.method public native nativeStopTracing(I)I
.end method

.method public final onFailed(IILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 519
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailed() - reqId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", type : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 522
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final onFileAccessDetected(ILjava/util/ArrayList;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    if-eqz p2, :cond_5

    .line 475
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 481
    :cond_0
    iget-object v3, v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 482
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFileMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object v4

    .line 483
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 485
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFileAccessDetected("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") :: Lost session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 488
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/FsData;

    .line 489
    iget-object v5, v4, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->targets:Ljava/util/Map;

    iget-wide v6, v0, Lcom/android/server/knox/zt/devicetrust/data/FsData;->ino:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 490
    iget-wide v5, v0, Lcom/android/server/knox/zt/devicetrust/data/FsData;->uidGid:J

    long-to-int v13, v5

    .line 491
    iget-object v5, v4, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->allowedUids:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 492
    sget-boolean v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 493
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFileAccessDetected("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") :: Do not handle allowed app("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_3
    iget-wide v5, v0, Lcom/android/server/knox/zt/devicetrust/data/FsData;->pidTgid:J

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v14, v5

    .line 498
    iget-object v5, v4, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->targets:Ljava/util/Map;

    iget-wide v6, v0, Lcom/android/server/knox/zt/devicetrust/data/FsData;->ino:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    .line 499
    invoke-static {v14}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getProcessName(I)Ljava/lang/String;

    move-result-object v15

    .line 501
    :try_start_1
    iget-object v7, v4, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->uadListener:Landroid/os/IZtdListener;

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getEvent()I

    move-result v10

    .line 502
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->calculateEventTime(J)J

    move-result-wide v11

    .line 501
    invoke-interface/range {v7 .. v16}, Landroid/os/IZtdListener;->onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 504
    iget v5, v4, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->type:I

    const-string v6, "Binder died"

    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->onFailed(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 505
    invoke-virtual {v1, v4}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->closeSessionLocked(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;)V

    goto/16 :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 483
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 476
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 477
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFileAccessDetected("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") :: Nothing detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public final onSocketStateChanged(ILjava/util/ArrayList;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 625
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getSocketMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    .line 633
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 635
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSocketStateChanged("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") :: Lost session"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 639
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/knox/zt/devicetrust/data/SkData;

    .line 640
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onSocketStateChanged() - Failed in binder transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 633
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 626
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 627
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSocketStateChanged("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") :: Nothing detected"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final onSystemCallDetected(ILjava/util/ArrayList;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 658
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getSystemCallMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    .line 666
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 668
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSystemCallDetected("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") :: Lost session"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 672
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/knox/zt/devicetrust/data/ScData;

    .line 673
    invoke-virtual {p2}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getEvent()I

    move-result v0

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->flags:I

    invoke-static {v0, v1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->matchScEventToScFlags(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onSystemCallDetected() - Failed in binder transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 666
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 659
    :cond_4
    :goto_1
    sget-boolean p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 660
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSystemCallDetected("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") :: Nothing detected"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final onTlsPacketDetected(ILjava/util/ArrayList;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 693
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getTlsPacketMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p0

    .line 701
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 703
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTlsPacketDetected("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") :: Lost session"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 707
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/knox/zt/devicetrust/data/PktData;

    .line 708
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 711
    :catch_0
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onTlsPacketDetected() - Failed in binder transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 701
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 694
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 695
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTlsPacketDetected("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") :: Nothing detected"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final prepare(II)I
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-gtz v0, :cond_2

    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p1, 0x40

    if-lez p2, :cond_1

    .line 311
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->attachProbes(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 308
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->setTracer(I)I

    move-result p0

    return p0
.end method

.method public final readFsData()Ljava/util/ArrayList;
    .locals 0

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeReadFsData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 551
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final readPktData()Ljava/util/ArrayList;
    .locals 0

    .line 685
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeReadPktData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 687
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final readScData()Ljava/util/ArrayList;
    .locals 0

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeReadScData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 652
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final readSkData()Ljava/util/ArrayList;
    .locals 0

    .line 617
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeReadSkData()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 619
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final reset(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_0

    .line 318
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->detachProbes(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setBpfHelper(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;)I
    .locals 0

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeSetBpfHelper(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final setTargetFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 0

    .line 529
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeSetTargetFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 531
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final setTracer(I)I
    .locals 0

    .line 336
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeSetTracer(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 338
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final startDpTracing()I
    .locals 0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeStartDpTracing()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 595
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final startFsTracing()I
    .locals 1

    const/4 v0, 0x1

    .line 539
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeStartTracing(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 541
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public startMonitoringDomains(I[ILjava/util/List;Landroid/os/IZtdListener;)V
    .locals 2

    .line 559
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureInitialized()V

    .line 560
    sget-object p2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitoringDomains() - reqId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    const-string p0, "Failed :: Invalid argument"

    .line 562
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_0
    iget-object p4, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter p4

    .line 566
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getDomainMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p0, "Failed :: Session is already opened"

    .line 567
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    monitor-exit p4

    return-void

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const-string p0, "Failed :: Session pool is full"

    .line 571
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    monitor-exit p4

    return-void

    .line 575
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 576
    sget-object p3, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitoringDomains() - domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startDpTracing()I

    move-result p0

    if-eqz p0, :cond_4

    .line 581
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "startMonitoringDomains() - startDpTracing("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    monitor-exit p4

    return-void

    .line 587
    :cond_4
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startMonitoringFiles(I[ILjava/util/List;Ljava/util/List;Landroid/os/IZtdListener;)V
    .locals 9

    .line 408
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureInitialized()V

    .line 409
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMonitoringFiles() - reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_8

    .line 410
    instance-of v1, p3, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    instance-of v1, p4, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFileMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string p0, "Failed :: Session is already opened"

    .line 417
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    monitor-exit v1

    return-void

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const-string p0, "Failed :: Session pool is full"

    .line 421
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    monitor-exit v1

    return-void

    .line 425
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    sget-object v3, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMonitoringFiles() - file  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 429
    sget-object v3, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMonitoringFiles() - inode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 432
    :cond_4
    invoke-virtual {p0, p3, p4}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createTargetFiles(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_5

    .line 434
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string p1, "Failed :: Invalid targets"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    monitor-exit v1

    return-void

    .line 439
    :cond_5
    check-cast p3, Ljava/util/ArrayList;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->setTargetFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p3

    if-eqz p3, :cond_6

    .line 441
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed :: setTargetFiles("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v1

    return-void

    .line 445
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startFsTracing()I

    move-result p3

    if-eqz p3, :cond_7

    .line 447
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startMonitoringFiles() - startFsTracing("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    monitor-exit v1

    return-void

    :cond_7
    const/4 v3, 0x2

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v7, p5

    .line 451
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitorSessionForUad(II[ILjava/util/Map;Landroid/os/IZtdListener;)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p2

    .line 453
    iget-object p3, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v2, p2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;I)V

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 458
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_2
    const-string p0, "Failed :: Invalid argument"

    .line 412
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startTracing(I)I
    .locals 0

    .line 326
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeStartTracing(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 13

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object/from16 v1, p3

    .line 250
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureInitialized()V

    .line 251
    sget-object v4, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startTracing() - type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", reqId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x2

    if-eqz v1, :cond_c

    if-eqz p4, :cond_c

    .line 252
    invoke-static {p1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateTraceType(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v2, v8, :cond_1

    const-string v10, "flags"

    .line 258
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_0

    :cond_1
    if-ne v2, v7, :cond_2

    const/16 v10, 0x20

    goto :goto_0

    :cond_2
    if-ne v2, v6, :cond_3

    move v10, v8

    goto :goto_0

    :cond_3
    const/4 v10, 0x5

    if-ne v2, v10, :cond_4

    const/16 v10, 0x40

    goto :goto_0

    :cond_4
    move v10, v9

    :goto_0
    if-gtz v10, :cond_5

    return v5

    :cond_5
    const-string v11, "extras"

    .line 270
    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v12, "mode"

    .line 272
    invoke-virtual {v1, v12, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-lt v12, v8, :cond_c

    if-le v12, v7, :cond_6

    goto/16 :goto_2

    :cond_6
    const-string v5, "app_only"

    .line 278
    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 279
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    move-object v8, v1

    .line 282
    iget-object v9, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 283
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getMonitorSessionLocked(II)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v0, "Failed :: Session is already opened"

    .line 284
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v9

    const/4 v0, -0x4

    return v0

    .line 287
    :cond_8
    iget-object v1, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v1, v6, :cond_9

    const-string v0, "Failed :: Session pool is full"

    .line 288
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v9

    const/4 v0, -0x3

    return v0

    .line 291
    :cond_9
    invoke-virtual {p0, v10, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->prepare(II)I

    move-result v1

    const/4 v5, -0x5

    if-eqz v1, :cond_a

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    monitor-exit v9

    return v5

    .line 296
    :cond_a
    invoke-virtual {p0, v10}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startTracing(I)I

    move-result v1

    if-eqz v1, :cond_b

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTracing("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v9

    return v5

    :cond_b
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v10

    move v5, v11

    move v6, v12

    move-object/from16 v7, p4

    .line 301
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitorSessionForEpm(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->startLocked()I

    move-result v0

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    .line 302
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_c
    :goto_2
    return v5
.end method

.method public stopMonitoringDomains(I)V
    .locals 3

    .line 601
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureInitialized()V

    .line 602
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMonitoringDomains() - reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getDomainMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "Session not found"

    .line 606
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    monitor-exit v1

    return-void

    .line 609
    :cond_0
    iget-object v0, v2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 610
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopMonitoringFiles(I)V
    .locals 3

    .line 462
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureInitialized()V

    .line 463
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMonitoringFiles() - reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFileMonitorSessionLocked(I)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Session not found"

    .line 467
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit v1

    return-void

    .line 470
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->closeSessionLocked(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;)V

    .line 471
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopTracing(I)I
    .locals 0

    .line 398
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->nativeStopTracing(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public stopTracing(II)I
    .locals 4

    .line 362
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->ensureInitialized()V

    .line 363
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTracing() - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {p1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateTraceType(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x2

    return p0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getMonitorSessionLocked(II)Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "Session not found"

    .line 370
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v1

    const/4 p0, -0x4

    return p0

    .line 373
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->closeSessionLocked(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;)V

    .line 374
    iget p2, p2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->flags:I

    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->reset(I)I

    move-result p2

    if-eqz p2, :cond_2

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    const/16 p1, 0x1e

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    const/16 p1, 0x20

    goto :goto_0

    :cond_4
    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    const/16 p1, 0x40

    goto :goto_0

    :cond_5
    move p1, v2

    .line 389
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopTracing(I)I

    move-result p0

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "stopTracing() - rc : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
