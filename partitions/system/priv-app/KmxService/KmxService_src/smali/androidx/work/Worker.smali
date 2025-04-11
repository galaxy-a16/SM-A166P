.class public abstract Landroidx/work/Worker;
.super Landroidx/work/n;
.source "SourceFile"


# instance fields
.field mFuture:Landroidx/work/impl/utils/futures/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/n;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public abstract doWork()Landroidx/work/m;
.end method

.method public getForegroundInfo()Landroidx/work/g;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getForegroundInfoAsync()Ls4/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls4/a;"
        }
    .end annotation

    new-instance v0, Landroidx/work/impl/utils/futures/i;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/i;-><init>()V

    invoke-virtual {p0}, Landroidx/work/n;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/widget/k;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, v0}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final startWork()Ls4/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls4/a;"
        }
    .end annotation

    new-instance v0, Landroidx/work/impl/utils/futures/i;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/i;-><init>()V

    iput-object v0, p0, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/i;

    invoke-virtual {p0}, Landroidx/work/n;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/a0;

    invoke-direct {v1, p0}, Landroidx/work/a0;-><init>(Landroidx/work/Worker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/i;

    return-object p0
.end method
