.class public final Lkotlinx/coroutines/flow/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j0;


# instance fields
.field public final a:Lkotlinx/coroutines/flow/c2;

.field public final b:J

.field public final c:Ljava/lang/Object;

.field public final d:Lkotlin/coroutines/d;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c2;JLjava/lang/Object;Lkotlinx/coroutines/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/a2;->a:Lkotlinx/coroutines/flow/c2;

    iput-wide p2, p0, Lkotlinx/coroutines/flow/a2;->b:J

    iput-object p4, p0, Lkotlinx/coroutines/flow/a2;->c:Ljava/lang/Object;

    iput-object p5, p0, Lkotlinx/coroutines/flow/a2;->d:Lkotlin/coroutines/d;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/flow/a2;->a:Lkotlinx/coroutines/flow/c2;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lkotlinx/coroutines/flow/a2;->b:J

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    invoke-static {v1}, Li4/f;->g(Ljava/lang/Object;)V

    iget-wide v2, p0, Lkotlinx/coroutines/flow/a2;->b:J

    long-to-int v2, v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    aget-object v3, v1, v3

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlinx/coroutines/flow/s;->a:Lkotlinx/coroutines/internal/z;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput-object p0, v1, v2

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/c2;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
