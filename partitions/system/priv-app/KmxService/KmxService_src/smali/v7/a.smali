.class public final Lv7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:I

.field public final synthetic d:Lv7/b;


# direct methods
.method public constructor <init>(Lv7/b;)V
    .locals 0

    iput-object p1, p0, Lv7/a;->d:Lv7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lv7/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lv7/a;->d:Lv7/b;

    iget-object v1, v0, Lv7/b;->c:[Ljava/lang/Object;

    iput-object v1, p0, Lv7/a;->a:[Ljava/lang/Object;

    iget v0, v0, Lv7/b;->e:I

    iput v0, p0, Lv7/a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lv7/a;->c:I

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lv7/a;->c:I

    iget-object p0, p0, Lv7/a;->d:Lv7/b;

    iget p0, p0, Lv7/b;->f:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lv7/a;->d:Lv7/b;

    iget-object v0, v0, Lv7/b;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lv7/a;->c:I

    if-gtz v2, :cond_0

    iput v1, p0, Lv7/a;->c:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lv7/a;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget v2, p0, Lv7/a;->b:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lv7/a;->a:[Ljava/lang/Object;

    iput v1, p0, Lv7/a;->b:I

    aget-object v0, v0, v4

    goto :goto_0

    :cond_2
    iget v2, p0, Lv7/a;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Lv7/a;->b:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    iput v4, p0, Lv7/a;->b:I

    :cond_3
    :goto_0
    iget v2, p0, Lv7/a;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Lv7/a;->c:I

    return-object v0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lv7/a;->c:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lv7/a;->d:Lv7/b;

    iget-object v3, v2, Lv7/b;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput v0, v2, Lv7/b;->f:I

    iput-object v4, v2, Lv7/b;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    iget-object v3, v2, Lv7/b;->c:[Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget v5, v2, Lv7/b;->e:I

    aget-object v6, v3, v5

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    aput-object v4, v3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v7, [Ljava/lang/Object;

    const/4 v8, 0x1

    if-ne v3, v7, :cond_3

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, v2, Lv7/b;->c:[Ljava/lang/Object;

    aget-object v3, v6, v0

    aput-object v4, v6, v0

    move v5, v8

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x20

    if-ne v5, v3, :cond_4

    move v5, v0

    :cond_4
    :goto_1
    iget v3, v2, Lv7/b;->f:I

    sub-int/2addr v3, v8

    iput v3, v2, Lv7/b;->f:I

    iput v5, v2, Lv7/b;->e:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iput v0, p0, Lv7/a;->c:I

    return-void
.end method
