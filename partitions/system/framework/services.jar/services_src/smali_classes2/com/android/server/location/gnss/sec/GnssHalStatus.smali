.class public Lcom/android/server/location/gnss/sec/GnssHalStatus;
.super Ljava/lang/Object;
.source "GnssHalStatus.java"


# instance fields
.field public excutorService:Ljava/util/concurrent/ExecutorService;

.field public isHalStatusChecked:Z


# direct methods
.method public static synthetic $r8$lambda$CCznBEFAWYFe4NWL3CJWIhA0qCM(Lcom/android/server/location/gnss/sec/GnssHalStatus;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->lambda$triggerCheckingHalStatus$0(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private synthetic lambda$triggerCheckingHalStatus$0(J)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->checkHalStatusAndReset()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "GnssHalStatus"

    const-string p1, "checkHalStatusAndReset() failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final checkHalStatusAndReset()V
    .locals 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    if-nez p0, :cond_0

    const-string p0, "GnssHalStatus"

    const-string v0, "Calling GnssNative was failed. It will be recovered."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "dev.gnss.initializehal"

    const-string v0, "ON"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public triggerCheckingHalStatus()V
    .locals 2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    return-void
.end method

.method public triggerCheckingHalStatus(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    new-instance v0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/GnssHalStatus;J)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public updateHalStatusChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    iget-object p1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method
