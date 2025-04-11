.class public final Lkotlin/collections/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lkotlin/collections/State;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public final synthetic e:Lkotlin/collections/b0;


# direct methods
.method public constructor <init>(Lkotlin/collections/b0;)V
    .locals 1

    iput-object p1, p0, Lkotlin/collections/a0;->e:Lkotlin/collections/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    iput-object v0, p0, Lkotlin/collections/a0;->a:Lkotlin/collections/State;

    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->size()I

    move-result v0

    iput v0, p0, Lkotlin/collections/a0;->c:I

    iget p1, p1, Lkotlin/collections/b0;->c:I

    iput p1, p0, Lkotlin/collections/a0;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget-object v0, p0, Lkotlin/collections/a0;->a:Lkotlin/collections/State;

    sget-object v1, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_4

    sget-object v4, Lkotlin/collections/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    iput-object v1, p0, Lkotlin/collections/a0;->a:Lkotlin/collections/State;

    iget v0, p0, Lkotlin/collections/a0;->c:I

    if-nez v0, :cond_1

    sget-object v0, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    iput-object v0, p0, Lkotlin/collections/a0;->a:Lkotlin/collections/State;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lkotlin/collections/a0;->e:Lkotlin/collections/b0;

    iget-object v4, v1, Lkotlin/collections/b0;->a:[Ljava/lang/Object;

    iget v5, p0, Lkotlin/collections/a0;->d:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lkotlin/collections/a0;->b:Ljava/lang/Object;

    sget-object v4, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    iput-object v4, p0, Lkotlin/collections/a0;->a:Lkotlin/collections/State;

    add-int/2addr v5, v3

    iget v1, v1, Lkotlin/collections/b0;->b:I

    rem-int/2addr v5, v1

    iput v5, p0, Lkotlin/collections/a0;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/a0;->c:I

    :goto_1
    iget-object p0, p0, Lkotlin/collections/a0;->a:Lkotlin/collections/State;

    sget-object v0, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    if-ne p0, v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/a0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    iput-object v0, p0, Lkotlin/collections/a0;->a:Lkotlin/collections/State;

    iget-object p0, p0, Lkotlin/collections/a0;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final d()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/a0;->a()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/a0;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/a0;->d()V

    const/4 p0, 0x0

    throw p0
.end method
