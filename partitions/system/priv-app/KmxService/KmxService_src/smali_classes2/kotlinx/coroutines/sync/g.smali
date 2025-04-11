.class public final Lkotlinx/coroutines/sync/g;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# instance fields
.field public final b:Lkotlinx/coroutines/sync/f;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/f;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/sync/f;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lkotlinx/coroutines/sync/h;

    if-nez p2, :cond_0

    sget-object p2, Lp9/d;->m:Lkotlinx/coroutines/sync/a;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/sync/f;

    :goto_0
    sget-object v0, Lkotlinx/coroutines/sync/h;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/sync/h;

    iget-object p0, p0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/sync/f;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget-object p0, Lp9/d;->i:Lkotlinx/coroutines/internal/z;

    :goto_1
    return-object p0
.end method
