.class public final Lkotlinx/coroutines/c1;
.super Lkotlinx/coroutines/b1;
.source "SourceFile"


# instance fields
.field public final e:Lkotlinx/coroutines/f1;

.field public final f:Lkotlinx/coroutines/d1;

.field public final g:Lkotlinx/coroutines/l;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/f1;Lkotlinx/coroutines/d1;Lkotlinx/coroutines/l;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/b1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/c1;->e:Lkotlinx/coroutines/f1;

    iput-object p2, p0, Lkotlinx/coroutines/c1;->f:Lkotlinx/coroutines/d1;

    iput-object p3, p0, Lkotlinx/coroutines/c1;->g:Lkotlinx/coroutines/l;

    iput-object p4, p0, Lkotlinx/coroutines/c1;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c1;->s(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lkotlinx/coroutines/c1;->e:Lkotlinx/coroutines/f1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkotlinx/coroutines/c1;->g:Lkotlinx/coroutines/l;

    invoke-static {v0}, Lkotlinx/coroutines/f1;->I(Lkotlinx/coroutines/internal/n;)Lkotlinx/coroutines/l;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/c1;->f:Lkotlinx/coroutines/d1;

    iget-object p0, p0, Lkotlinx/coroutines/c1;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0, p0}, Lkotlinx/coroutines/f1;->Q(Lkotlinx/coroutines/d1;Lkotlinx/coroutines/l;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/f1;->t(Lkotlinx/coroutines/d1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/f1;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
