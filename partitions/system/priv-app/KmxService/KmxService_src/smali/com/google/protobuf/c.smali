.class public abstract Lcom/google/protobuf/c;
.super Lcom/google/protobuf/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n8;


# instance fields
.field protected memoizedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    check-cast p0, [B

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/google/protobuf/ByteString;

    :goto_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    check-cast p1, [B

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n8;

    invoke-interface {v1}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lcom/google/protobuf/h3;->f(Ljava/lang/String;)Lcom/google/protobuf/n3;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lcom/google/protobuf/h3;->f(Ljava/lang/String;)Lcom/google/protobuf/n3;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/protobuf/m3;

    if-eqz v5, :cond_1

    :goto_0
    check-cast v4, Lcom/google/protobuf/m3;

    invoke-virtual {v4}, Lcom/google/protobuf/m3;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    invoke-interface {v1, v3}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n8;

    invoke-interface {v1, v2}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/protobuf/m3;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static compareFields(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n3;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v3, Ljava/util/List;

    check-cast v4, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v3, v4}, Lcom/google/protobuf/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/c;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/protobuf/c;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public static hashBoolean(Z)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    return p0
.end method

.method public static hashEnum(Lcom/google/protobuf/z6;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    return p0
.end method

.method public static hashEnumList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/z6;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z6;

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lcom/google/protobuf/c;->hashEnum(Lcom/google/protobuf/z6;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static hashFields(ILjava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n3;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p0, p0, 0x25

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    mul-int/lit8 v2, v2, 0x35

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/c;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result p0

    :goto_1
    add-int/2addr p0, v2

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq p0, v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->q()Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast v0, Ljava/util/List;

    mul-int/lit8 v2, v2, 0x35

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z6;

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, Lcom/google/protobuf/z6;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    move p0, v2

    goto :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x35

    check-cast v0, Lcom/google/protobuf/z6;

    invoke-interface {v0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    goto :goto_1

    :cond_4
    return p0
.end method

.method public static hashLong(J)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/n8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/protobuf/n8;

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-interface {p0}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/c;->compareFields(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/c8;->T(Lcom/google/protobuf/t8;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/c;->findInitializationErrors()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/c8;->Q(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMemoizedSerializedSize()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/c;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ob;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    :cond_0
    return v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/b;)Lcom/google/protobuf/m8;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Nested builder is not supported for this type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    return-object p0
.end method

.method public setMemoizedSerializedSize(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    sget-object v0, Lcom/google/protobuf/wa;->b:Lcom/google/protobuf/wa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Landroidx/appcompat/widget/i4;

    invoke-direct {v2, v1}, Landroidx/appcompat/widget/i4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p0, v2}, Lcom/google/protobuf/wa;->a(Lcom/google/protobuf/t8;Landroidx/appcompat/widget/i4;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
