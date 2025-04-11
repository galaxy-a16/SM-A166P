.class public Lcom/android/server/power/ShutdownThread$getDelayDumpstate;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# static fields
.field public static delayDumpRaunnable:Ljava/lang/Runnable;

.field public static delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1392
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static startState()V
    .locals 4

    .line 1396
    sget-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    if-nez v0, :cond_0

    const-string v0, "ShutdownDelay"

    const-string v1, "Start handler"

    .line 1397
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    .line 1400
    :cond_0
    new-instance v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "recovery"

    .line 1415
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "recovery-update"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1418
    :cond_1
    sget-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    sget-object v1, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1416
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayhandler:Lcom/android/server/power/ShutdownThread$getDelayDumpstate;

    sget-object v1, Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
