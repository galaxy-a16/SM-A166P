.class public final Landroidx/work/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Landroidx/work/b0;

.field public final d:Lh5/d;

.field public final e:Lf9/b;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Ll4/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/work/b;->a(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/b;->a:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/work/b;->a(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/b;->b:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Landroidx/work/c0;->a:Ljava/lang/String;

    new-instance p1, Landroidx/work/b0;

    invoke-direct {p1}, Landroidx/work/b0;-><init>()V

    iput-object p1, p0, Landroidx/work/b;->c:Landroidx/work/b0;

    new-instance p1, Lh5/d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lh5/d;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/work/b;->d:Lh5/d;

    new-instance p1, Lf9/b;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lf9/b;-><init>(I)V

    iput-object p1, p0, Landroidx/work/b;->e:Lf9/b;

    const/4 p1, 0x4

    iput p1, p0, Landroidx/work/b;->f:I

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/work/b;->g:I

    const/16 p1, 0x14

    iput p1, p0, Landroidx/work/b;->h:I

    return-void
.end method

.method public static a(Z)Ljava/util/concurrent/ExecutorService;
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroidx/work/a;

    invoke-direct {v1, p0}, Landroidx/work/a;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
