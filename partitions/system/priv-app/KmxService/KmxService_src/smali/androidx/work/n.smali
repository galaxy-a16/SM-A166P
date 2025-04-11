.class public abstract Landroidx/work/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private volatile mStopped:Z

.field private mUsed:Z

.field private mWorkerParams:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroidx/work/n;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WorkerParameters is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Application Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    return-object p0
.end method

.method public final getInputData()Landroidx/work/f;
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/f;

    return-object p0
.end method

.method public final getNetwork()Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->d:Lva/f;

    iget-object p0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast p0, Landroid/net/Network;

    return-object p0
.end method

.method public final getRunAttemptCount()I
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget p0, p0, Landroidx/work/WorkerParameters;->e:I

    return p0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/HashSet;

    return-object p0
.end method

.method public getTaskExecutor()Lr1/a;
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->g:Lr1/a;

    return-object p0
.end method

.method public final getTriggeredContentAuthorities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->d:Lva/f;

    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getTriggeredContentUris()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->d:Lva/f;

    iget-object p0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getWorkerFactory()Landroidx/work/c0;
    .locals 0

    iget-object p0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->h:Landroidx/work/c0;

    return-object p0
.end method

.method public final isStopped()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/n;->mStopped:Z

    return p0
.end method

.method public final isUsed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/n;->mUsed:Z

    return p0
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public final setForegroundAsync(Landroidx/work/g;)Ls4/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/g;",
            ")",
            "Ls4/a;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->j:Landroidx/work/h;

    invoke-virtual {p0}, Landroidx/work/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/work/n;->getId()Ljava/util/UUID;

    move-result-object v4

    check-cast v0, Lq1/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/work/impl/utils/futures/i;

    invoke-direct {p0}, Landroidx/work/impl/utils/futures/i;-><init>()V

    new-instance v8, Landroidx/core/view/l1;

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Landroidx/core/view/l1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v0, Lq1/r;->a:Lr1/a;

    invoke-interface {p1, v8}, Lr1/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public setProgressAsync(Landroidx/work/f;)Ls4/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/f;",
            ")",
            "Ls4/a;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/n;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->i:Landroidx/work/x;

    invoke-virtual {p0}, Landroidx/work/n;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/work/n;->getId()Ljava/util/UUID;

    move-result-object v3

    check-cast v0, Lq1/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/work/impl/utils/futures/i;

    invoke-direct {p0}, Landroidx/work/impl/utils/futures/i;-><init>()V

    new-instance v7, Lh/h;

    const/4 v6, 0x2

    move-object v1, v7

    move-object v2, v0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lh/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v0, Lq1/s;->b:Lr1/a;

    invoke-interface {p1, v7}, Lr1/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final setUsed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/n;->mUsed:Z

    return-void
.end method

.method public abstract startWork()Ls4/a;
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/n;->mStopped:Z

    invoke-virtual {p0}, Landroidx/work/n;->onStopped()V

    return-void
.end method
