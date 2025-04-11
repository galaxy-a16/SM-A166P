.class final Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $operation:Landroidx/work/impl/m;

.field final synthetic $this_enqueueUniquelyNamedPeriodic:Landroidx/work/impl/d0;

.field final synthetic $workRequest:Landroidx/work/z;


# direct methods
.method public constructor <init>(Landroidx/work/z;Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/impl/m;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$workRequest:Landroidx/work/z;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$this_enqueueUniquelyNamedPeriodic:Landroidx/work/impl/d0;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$name:Ljava/lang/String;

    iput-object p4, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$operation:Landroidx/work/impl/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->invoke()V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$workRequest:Landroidx/work/z;

    invoke-static {v0}, Ll9/b;->o0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/u;

    iget-object v2, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$this_enqueueUniquelyNamedPeriodic:Landroidx/work/impl/d0;

    iget-object v3, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$name:Ljava/lang/String;

    sget-object v4, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/work/impl/u;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    new-instance v0, Lq1/e;

    iget-object p0, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;->$operation:Landroidx/work/impl/m;

    invoke-direct {v0, v1, p0}, Lq1/e;-><init>(Landroidx/work/impl/u;Landroidx/work/impl/m;)V

    invoke-virtual {v0}, Lq1/e;->run()V

    return-void
.end method
