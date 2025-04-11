.class public abstract Lkotlinx/coroutines/internal/k;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# instance fields
.field public final b:Lkotlinx/coroutines/internal/n;

.field public c:Lkotlinx/coroutines/internal/n;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/n;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/n;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lkotlinx/coroutines/internal/n;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/n;

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/k;->c:Lkotlinx/coroutines/internal/n;

    :goto_1
    if-eqz v1, :cond_2

    sget-object v2, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lkotlinx/coroutines/internal/k;->c:Lkotlinx/coroutines/internal/n;

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/n;->h(Lkotlinx/coroutines/internal/n;)V

    :cond_2
    return-void
.end method
