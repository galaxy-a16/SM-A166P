.class public final Lkotlinx/coroutines/channels/f0;
.super Lkotlinx/coroutines/channels/e0;
.source "SourceFile"


# instance fields
.field public final f:Lvb/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lvb/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/e0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;)V

    iput-object p3, p0, Lkotlinx/coroutines/channels/f0;->f:Lvb/b;

    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 1

    invoke-super {p0}, Lkotlinx/coroutines/internal/n;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/f0;->v()V

    const/4 p0, 0x1

    return p0
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/e0;->e:Lkotlinx/coroutines/g;

    check-cast v0, Lkotlinx/coroutines/h;

    iget-object v0, v0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    const/4 v1, 0x0

    iget-object v2, p0, Lkotlinx/coroutines/channels/f0;->f:Lvb/b;

    iget-object p0, p0, Lkotlinx/coroutines/channels/e0;->d:Ljava/lang/Object;

    invoke-static {v2, p0, v1}, Lkotlinx/coroutines/internal/t;->b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
