.class public final Lkotlin/collections/c;
.super Landroidx/core/view/c1;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic d:Lkotlin/collections/e;


# direct methods
.method public constructor <init>(Lkotlin/collections/e;I)V
    .locals 1

    iput-object p1, p0, Lkotlin/collections/c;->d:Lkotlin/collections/e;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroidx/core/view/c1;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lkotlin/collections/e;->Companion:Lkotlin/collections/b;

    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lkotlin/collections/b;->b(II)V

    iput p2, p0, Landroidx/core/view/c1;->b:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Landroidx/core/view/c1;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Landroidx/core/view/c1;->b:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/c;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/core/view/c1;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/core/view/c1;->b:I

    iget-object p0, p0, Lkotlin/collections/c;->d:Lkotlin/collections/e;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Landroidx/core/view/c1;->b:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
