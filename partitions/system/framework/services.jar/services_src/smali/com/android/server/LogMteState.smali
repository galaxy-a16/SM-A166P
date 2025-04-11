.class public abstract Lcom/android/server/LogMteState;
.super Ljava/lang/Object;
.source "LogMteState.java"


# direct methods
.method public static register(Landroid/content/Context;)V
    .locals 4

    .line 31
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatsManager;

    .line 35
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/LogMteState$1;

    invoke-direct {v1}, Lcom/android/server/LogMteState$1;-><init>()V

    const/16 v2, 0x27c5

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method
