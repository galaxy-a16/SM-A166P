.class public final Lcom/google/protobuf/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r8;


# static fields
.field public static final b:Lcom/google/protobuf/ob;

.field public static final c:Lcom/google/protobuf/r0;


# instance fields
.field public final a:Ljava/util/TreeMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/ob;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/protobuf/ob;-><init>(Ljava/util/TreeMap;)V

    sput-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v0, Lcom/google/protobuf/r0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/google/protobuf/r0;-><init>(I)V

    sput-object v0, Lcom/google/protobuf/ob;->c:Lcom/google/protobuf/r0;

    return-void
.end method

.method public constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    iget-object p0, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/nb;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v3, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/ByteString;

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/google/protobuf/n0;->r(I)I

    move-result v6

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v2}, Lcom/google/protobuf/n0;->s(II)I

    move-result v7

    add-int/2addr v7, v6

    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/google/protobuf/n0;->d(ILcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    goto :goto_1

    :cond_0
    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final b(Lcom/google/protobuf/n0;)V
    .locals 3

    iget-object p0, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n0;->L(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/ob;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/protobuf/ob;

    iget-object p1, p1, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    iget-object p0, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    sget-object p0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public final getParserForType()Lcom/google/protobuf/o9;
    .locals 0

    sget-object p0, Lcom/google/protobuf/ob;->c:Lcom/google/protobuf/r0;

    return-object p0
.end method

.method public final getSerializedSize()I
    .locals 8

    iget-object p0, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/nb;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v3, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/google/protobuf/n0;->u(IJ)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    invoke-static {v2}, Lcom/google/protobuf/n0;->h(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    invoke-static {v2}, Lcom/google/protobuf/n0;->i(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_3

    :cond_2
    iget-object v4, v3, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v2, v6}, Lcom/google/protobuf/n0;->d(ILcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_4

    :cond_3
    iget-object v3, v3, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ob;

    invoke-static {v2}, Lcom/google/protobuf/n0;->r(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v4}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result v4

    add-int/2addr v4, v6

    add-int/2addr v5, v4

    goto :goto_5

    :cond_4
    add-int/2addr v0, v5

    goto/16 :goto_0

    :cond_5
    move v1, v0

    :cond_6
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final newBuilderForType()Lcom/google/protobuf/q8;
    .locals 0

    new-instance p0, Lcom/google/protobuf/lb;

    invoke-direct {p0}, Lcom/google/protobuf/lb;-><init>()V

    return-object p0
.end method

.method public final toBuilder()Lcom/google/protobuf/q8;
    .locals 1

    new-instance v0, Lcom/google/protobuf/lb;

    invoke-direct {v0}, Lcom/google/protobuf/lb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    return-object v0
.end method

.method public final toByteArray()[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    sget-object v2, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    new-instance v2, Lcom/google/protobuf/l0;

    invoke-direct {v2, v1, v0}, Lcom/google/protobuf/l0;-><init>([BI)V

    invoke-virtual {p0, v2}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    invoke-virtual {v2}, Lcom/google/protobuf/l0;->T()I

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toByteString()Lcom/google/protobuf/ByteString;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/a0;

    move-result-object v0

    iget-object v1, v0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/l0;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    iget-object p0, v0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/l0;

    invoke-virtual {p0}, Lcom/google/protobuf/l0;->T()I

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/ByteString$LiteralByteString;

    iget-object v0, v0, Lcom/google/protobuf/a0;->b:[B

    invoke-direct {p0, v0}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    sget-object v0, Lcom/google/protobuf/wa;->b:Lcom/google/protobuf/wa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroidx/appcompat/widget/i4;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/i4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {p0, v1}, Lcom/google/protobuf/wa;->d(Lcom/google/protobuf/ob;Landroidx/appcompat/widget/i4;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final writeTo(Lcom/google/protobuf/n0;)V
    .locals 5

    iget-object p0, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/n0;->R(IJ)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n0;->C(II)V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/n0;->E(IJ)V

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n0;->A(ILcom/google/protobuf/ByteString;)V

    goto :goto_3

    :cond_4
    iget-object v1, v1, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ob;

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n0;->O(II)V

    invoke-virtual {v2, p1}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n0;->O(II)V

    goto :goto_4

    :cond_5
    return-void
.end method
