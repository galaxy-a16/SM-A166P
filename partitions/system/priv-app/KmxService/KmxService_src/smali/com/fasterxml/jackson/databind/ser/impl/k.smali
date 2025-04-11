.class public final Lcom/fasterxml/jackson/databind/ser/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Landroidx/emoji2/text/t;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/LRUMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/LRUMap;->size()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    add-int/2addr v0, v0

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    :goto_0
    const/16 v1, 0x8

    :goto_1
    if-ge v1, v0, :cond_1

    add-int/2addr v1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/k;->b:I

    new-array v0, v1, [Landroidx/emoji2/text/t;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/j;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/j;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/k;[Landroidx/emoji2/text/t;)V

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;->contents(Ljava/util/function/BiConsumer;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/k;->a:[Landroidx/emoji2/text/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/k;->b:I

    and-int/2addr v0, v1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/k;->a:[Landroidx/emoji2/text/t;

    aget-object p0, p0, v0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Landroidx/emoji2/text/t;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/emoji2/text/t;->e:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/t;

    if-eqz p0, :cond_4

    iget-boolean v1, p0, Landroidx/emoji2/text/t;->a:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/emoji2/text/t;->e:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    :goto_2
    iget-object p0, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/o;

    return-object p0

    :cond_4
    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/k;->b:I

    and-int/2addr v0, v1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/k;->a:[Landroidx/emoji2/text/t;

    aget-object p0, p0, v0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_1

    iget-boolean v1, p0, Landroidx/emoji2/text/t;->a:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/t;

    if-eqz p0, :cond_4

    iget-object v1, p0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    if-ne v1, p1, :cond_3

    iget-boolean v1, p0, Landroidx/emoji2/text/t;->a:Z

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    :goto_2
    iget-object p0, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/o;

    return-object p0

    :cond_4
    return-object v0
.end method
