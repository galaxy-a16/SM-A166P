.class public final Lkotlin/text/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lxb/f;

.field public e:I

.field public final synthetic f:Lkotlin/text/e;


# direct methods
.method public constructor <init>(Lkotlin/text/e;)V
    .locals 2

    iput-object p1, p0, Lkotlin/text/d;->f:Lkotlin/text/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lkotlin/text/d;->a:I

    iget v0, p1, Lkotlin/text/e;->b:I

    iget-object p1, p1, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    iput v0, p0, Lkotlin/text/d;->b:I

    iput v0, p0, Lkotlin/text/d;->c:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot coerce value to an empty range: maximum "

    const-string v1, " is less than minimum 0."

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Lkotlin/text/d;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lkotlin/text/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/text/d;->d:Lxb/f;

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lkotlin/text/d;->f:Lkotlin/text/e;

    iget v3, v2, Lkotlin/text/e;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget v6, p0, Lkotlin/text/d;->e:I

    add-int/2addr v6, v5

    iput v6, p0, Lkotlin/text/d;->e:I

    if-ge v6, v3, :cond_2

    :cond_1
    iget-object v3, v2, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    :cond_2
    new-instance v0, Lxb/f;

    iget v1, p0, Lkotlin/text/d;->b:I

    iget-object v2, v2, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/s;->Q(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lxb/f;-><init>(II)V

    :goto_0
    iput-object v0, p0, Lkotlin/text/d;->d:Lxb/f;

    iput v4, p0, Lkotlin/text/d;->c:I

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lkotlin/text/e;->d:Lvb/c;

    iget-object v3, v2, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    iget v6, p0, Lkotlin/text/d;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_4

    new-instance v0, Lxb/f;

    iget v1, p0, Lkotlin/text/d;->b:I

    iget-object v2, v2, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/s;->Q(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lxb/f;-><init>(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, p0, Lkotlin/text/d;->b:I

    invoke-static {v3, v2}, Lp9/d;->v0(II)Lxb/f;

    move-result-object v3

    iput-object v3, p0, Lkotlin/text/d;->d:Lxb/f;

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/text/d;->b:I

    if-nez v0, :cond_5

    move v1, v5

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/text/d;->c:I

    :goto_1
    iput v5, p0, Lkotlin/text/d;->a:I

    :goto_2
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/text/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/d;->a()V

    :cond_0
    iget p0, p0, Lkotlin/text/d;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/text/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/d;->a()V

    :cond_0
    iget v0, p0, Lkotlin/text/d;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/text/d;->d:Lxb/f;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/text/d;->d:Lxb/f;

    iput v1, p0, Lkotlin/text/d;->a:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
