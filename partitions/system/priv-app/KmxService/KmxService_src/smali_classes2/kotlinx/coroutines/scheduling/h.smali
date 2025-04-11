.class public abstract Lkotlinx/coroutines/scheduling/h;
.super Lkotlinx/coroutines/s0;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/coroutines/scheduling/c;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 7

    const-string v5, "DefaultDispatcher"

    invoke-direct {p0}, Lkotlinx/coroutines/s0;-><init>()V

    new-instance v6, Lkotlinx/coroutines/scheduling/c;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/c;-><init>(IIJLjava/lang/String;)V

    iput-object v6, p0, Lkotlinx/coroutines/scheduling/h;->c:Lkotlinx/coroutines/scheduling/c;

    return-void
.end method


# virtual methods
.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p1, Lkotlinx/coroutines/scheduling/c;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object p1, Lkotlinx/coroutines/scheduling/k;->f:Lcom/google/gson/internal/c;

    const/4 v0, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/h;->c:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/c;->b(Ljava/lang/Runnable;Lcom/google/gson/internal/c;Z)V

    return-void
.end method

.method public final t(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p1, Lkotlinx/coroutines/scheduling/c;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object p1, Lkotlinx/coroutines/scheduling/k;->f:Lcom/google/gson/internal/c;

    const/4 v0, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/h;->c:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/c;->b(Ljava/lang/Runnable;Lcom/google/gson/internal/c;Z)V

    return-void
.end method
