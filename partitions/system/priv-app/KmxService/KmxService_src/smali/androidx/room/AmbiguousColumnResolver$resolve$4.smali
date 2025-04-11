.class final Landroidx/room/AmbiguousColumnResolver$resolve$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# instance fields
.field final synthetic $bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/room/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/room/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/AmbiguousColumnResolver$resolve$4;->$bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/room/AmbiguousColumnResolver$resolve$4;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/room/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/room/b;->c:I

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/a;

    .line 3
    iget-object v5, v3, Landroidx/room/a;->a:Lxb/f;

    .line 4
    iget v6, v5, Lxb/d;->b:I

    .line 5
    iget v5, v5, Lxb/d;->a:I

    sub-int/2addr v6, v5

    add-int/2addr v6, v4

    .line 6
    iget-object v3, v3, Landroidx/room/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v6, v3

    add-int/2addr v2, v6

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/a;

    .line 7
    iget-object v3, v3, Landroidx/room/a;->a:Lxb/f;

    .line 8
    iget v3, v3, Lxb/d;->a:I

    .line 9
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/a;

    .line 10
    iget-object v5, v5, Landroidx/room/a;->a:Lxb/f;

    .line 11
    iget v5, v5, Lxb/d;->a:I

    if-le v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/a;

    .line 13
    iget-object v5, v5, Landroidx/room/a;->a:Lxb/f;

    .line 14
    iget v5, v5, Lxb/d;->b:I

    .line 15
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/room/a;

    .line 16
    iget-object v6, v6, Landroidx/room/a;->a:Lxb/f;

    .line 17
    iget v6, v6, Lxb/d;->b:I

    if-ge v5, v6, :cond_3

    move v5, v6

    goto :goto_2

    .line 18
    :cond_4
    new-instance v0, Lxb/f;

    invoke-direct {v0, v3, v5}, Lxb/f;-><init>(II)V

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {v0}, Lxb/d;->b()Lxb/e;

    move-result-object v0

    move v3, v1

    .line 20
    :cond_6
    :goto_3
    iget-boolean v5, v0, Lxb/e;->c:Z

    if-eqz v5, :cond_b

    .line 21
    invoke-virtual {v0}, Lkotlin/collections/w;->a()I

    move-result v5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/room/a;

    .line 22
    iget-object v8, v8, Landroidx/room/a;->a:Lxb/f;

    .line 23
    invoke-virtual {v8, v5}, Lxb/f;->c(I)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    if-le v7, v4, :cond_7

    move v5, v4

    goto :goto_4

    :cond_9
    move v5, v1

    :goto_4
    if-eqz v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_a

    goto :goto_3

    .line 24
    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Count overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    move v1, v3

    .line 25
    :goto_5
    new-instance v0, Landroidx/room/b;

    invoke-direct {v0, v2, v1, p1}, Landroidx/room/b;-><init>(IILjava/util/List;)V

    .line 26
    iget-object p1, p0, Landroidx/room/AmbiguousColumnResolver$resolve$4;->$bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/room/b;

    const-string v1, "other"

    .line 27
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Landroidx/room/b;->b:I

    iget v2, p1, Landroidx/room/b;->b:I

    invoke-static {v1, v2}, Li4/f;->o(II)I

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    iget v1, v0, Landroidx/room/b;->a:I

    iget p1, p1, Landroidx/room/b;->a:I

    invoke-static {v1, p1}, Li4/f;->o(II)I

    move-result v1

    :goto_6
    if-gez v1, :cond_d

    .line 28
    iget-object p0, p0, Landroidx/room/AmbiguousColumnResolver$resolve$4;->$bestSolution:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_d
    return-void

    .line 29
    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
