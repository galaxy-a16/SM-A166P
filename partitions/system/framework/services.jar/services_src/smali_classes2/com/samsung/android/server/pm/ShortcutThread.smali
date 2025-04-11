.class public final Lcom/samsung/android/server/pm/ShortcutThread;
.super Lcom/android/server/ServiceThread;
.source "ShortcutThread.java"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "ShortcutService"

    .line 28
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static ensureThreadLocked()V
    .locals 5

    .line 33
    sget-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/samsung/android/server/pm/ShortcutThread;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/ShortcutThread;-><init>()V

    sput-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    sget-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    .line 41
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/samsung/android/server/pm/ShortcutThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    return-void
.end method

.method public static get()Lcom/samsung/android/server/pm/ShortcutThread;
    .locals 2

    .line 51
    sget-object v0, Lcom/samsung/android/server/pm/ShortcutThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/pm/ShortcutThread;->ensureThreadLocked()V

    .line 53
    sget-object v1, Lcom/samsung/android/server/pm/ShortcutThread;->sInstance:Lcom/samsung/android/server/pm/ShortcutThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
