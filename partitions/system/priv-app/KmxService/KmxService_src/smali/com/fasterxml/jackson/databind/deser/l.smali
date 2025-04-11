.class public final Lcom/fasterxml/jackson/databind/deser/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/fasterxml/jackson/databind/ObjectReader;

.field public final b:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field public final c:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field public final d:I


# direct methods
.method public constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/l;->a:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/l;->b:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/l;->c:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/l;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/deser/j;)Lcom/fasterxml/jackson/databind/deser/k;
    .locals 11

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/l;->a:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v5, v0, v4

    iget v6, p1, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    iput v6, p1, Lcom/fasterxml/jackson/databind/deser/j;->d:I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->hasFormat(Lz1/a;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/l;->c:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/l;->b:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object v10, v5

    goto :goto_2

    :cond_2
    move-object v2, v5

    move-object v3, v6

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v10, v2

    :goto_2
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/k;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/io/InputStream;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    move-object v7, v0

    check-cast v7, [B

    iget v8, p1, Lcom/fasterxml/jackson/databind/deser/j;->b:I

    iget p1, p1, Lcom/fasterxml/jackson/databind/deser/j;->c:I

    sub-int v9, p1, v8

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/fasterxml/jackson/databind/deser/k;-><init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;)V

    return-object p0
.end method

.method public final b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/k;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/j;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/l;->d:I

    new-array v1, v1, [B

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Ljava/io/InputStream;[B)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/l;->a(Lcom/fasterxml/jackson/databind/deser/j;)Lcom/fasterxml/jackson/databind/deser/k;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/l;->a:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
