.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Landroidx/work/f;

.field public final c:Ljava/util/HashSet;

.field public final d:Lva/f;

.field public final e:I

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lr1/a;

.field public final h:Landroidx/work/c0;

.field public final i:Landroidx/work/x;

.field public final j:Landroidx/work/h;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/f;Ljava/util/List;Lva/f;ILjava/util/concurrent/ExecutorService;Lr1/a;Landroidx/work/b0;Lq1/s;Lq1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/f;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/HashSet;

    iput-object p4, p0, Landroidx/work/WorkerParameters;->d:Lva/f;

    iput p5, p0, Landroidx/work/WorkerParameters;->e:I

    iput-object p6, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Landroidx/work/WorkerParameters;->g:Lr1/a;

    iput-object p8, p0, Landroidx/work/WorkerParameters;->h:Landroidx/work/c0;

    iput-object p9, p0, Landroidx/work/WorkerParameters;->i:Landroidx/work/x;

    iput-object p10, p0, Landroidx/work/WorkerParameters;->j:Landroidx/work/h;

    return-void
.end method
