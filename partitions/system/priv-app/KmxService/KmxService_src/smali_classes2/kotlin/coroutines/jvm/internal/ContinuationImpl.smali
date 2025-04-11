.class public abstract Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.super Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
.source "SourceFile"


# instance fields
.field private final _context:Lkotlin/coroutines/i;

.field private transient intercepted:Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/d;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d;",
            "Lkotlin/coroutines/i;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;-><init>(Lkotlin/coroutines/d;)V

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/i;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/i;

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lkotlin/coroutines/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/d;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    sget v1, Lkotlin/coroutines/e;->f0:I

    sget-object v1, Le9/a;->c:Le9/a;

    invoke-interface {v0, v1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/e;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/t;

    new-instance v1, Lkotlinx/coroutines/internal/e;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/internal/e;-><init>(Lkotlinx/coroutines/t;Lkotlin/coroutines/d;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/d;

    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    sget v2, Lkotlin/coroutines/e;->f0:I

    sget-object v2, Le9/a;->c:Le9/a;

    invoke-interface {v1, v2}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    invoke-static {v1}, Li4/f;->g(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/coroutines/e;

    check-cast v0, Lkotlinx/coroutines/internal/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/e;->j()V

    :cond_0
    sget-object v0, Lrb/a;->a:Lrb/a;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/d;

    return-void
.end method
