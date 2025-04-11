.class public Lv7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/t;


# instance fields
.field public final a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/g;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lv7/g;->a:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public final e(II)Lv7/t;
    .locals 5

    invoke-virtual {p0}, Lv7/g;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lp9/d;->P(III)V

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v1

    sub-int v2, p2, p1

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iget-object v4, p0, Lv7/g;->a:[Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lv7/f;

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, v1, v4}, Lv7/f;-><init>(II[Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lv7/i;

    add-int/2addr v1, p1

    aget-object p1, v4, v1

    invoke-direct {p0, p1}, Lv7/i;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    sget-object p0, Lv7/m;->a:Lv7/m;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v1

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v3

    sub-int v4, v3, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v2

    :cond_2
    instance-of v4, p1, Ljava/util/RandomAccess;

    iget-object p0, p0, Lv7/g;->a:[Ljava/lang/Object;

    if-eqz v4, :cond_4

    :goto_0
    if-ge v1, v3, :cond_6

    aget-object v4, p0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 3

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v0

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lv7/g;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v0

    invoke-virtual {p0}, Lv7/g;->size()I

    move-result v1

    invoke-static {p1, v1}, Lp9/d;->O(II)V

    add-int/2addr v0, p1

    iget-object p0, p0, Lv7/g;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v0

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lv7/g;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v1

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lv7/g;->a:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sub-int/2addr v3, v1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v1

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v3, p0, Lv7/g;->a:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sub-int/2addr v2, v1

    return v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv7/g;->listIterator(I)Lv7/s;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Lv7/s;
    .locals 3

    .line 2
    new-instance v0, Lv7/e;

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v1

    invoke-virtual {p0}, Lv7/g;->size()I

    move-result v2

    invoke-static {p1, v2}, Lp9/d;->v(II)V

    add-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lv7/e;-><init>(Lv7/t;II)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v0

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 3

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v0

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v1

    const/16 v2, 0x510

    iget-object p0, p0, Lv7/g;->a:[Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv7/g;->e(II)Lv7/t;

    move-result-object p0

    return-object p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v0

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v1

    iget-object p0, p0, Lv7/g;->a:[Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 2
    const-string v0, "Array"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv7/g;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v1

    const/4 v2, 0x0

    iget-object p0, p0, Lv7/g;->a:[Ljava/lang/Object;

    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result v0

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lv7/g;->a:[Ljava/lang/Object;

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-ne v3, v1, :cond_0

    const/16 p0, 0x5d

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_0
.end method
