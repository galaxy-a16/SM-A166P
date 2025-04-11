.class public abstract Lcom/google/protobuf/a;
.super Lcom/google/protobuf/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/m8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/e;-><init>()V

    return-void
.end method

.method public static newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 3

    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-static {p0, v2, v1}, Lcom/google/protobuf/c8;->T(Lcom/google/protobuf/t8;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method dispose()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should be overridden by subclasses."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

.method public getFieldBuilder(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getFieldBuilder() called on an unsupported message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/a;->findInitializationErrors()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/c8;->Q(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;
    .locals 1

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v0, Lcom/google/protobuf/lb;

    invoke-direct {v0}, Lcom/google/protobuf/lb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    return-object v0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/f;)Lcom/google/protobuf/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/f;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/n8;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic internalMergeFrom(Lcom/google/protobuf/f;)Lcom/google/protobuf/e;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->internalMergeFrom(Lcom/google/protobuf/f;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public markClean()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should be overridden by subclasses."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/i0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/i0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ByteString"

    invoke-virtual {p0, v1}, Lcom/google/protobuf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/i0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/i0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "ByteString"

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    throw p0
.end method

.method public mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i0;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/q4;->e:Lcom/google/protobuf/q4;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/a;->getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;

    move-result-object v6

    .line 5
    new-instance v7, Lcom/google/protobuf/v8;

    invoke-direct {v7, p0}, Lcom/google/protobuf/v8;-><init>(Lcom/google/protobuf/m8;)V

    invoke-interface {p0}, Lcom/google/protobuf/m8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v8

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    move-object v1, v6

    move-object v2, p2

    move-object v3, v8

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c8;->W(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;Lcom/google/protobuf/h3;Lcom/google/protobuf/x8;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {p0, v6}, Lcom/google/protobuf/a;->setUnknownFieldSetBuilder(Lcom/google/protobuf/lb;)V

    :cond_2
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 7
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/n8;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/m8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n3;

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/google/protobuf/m8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_2

    invoke-interface {p0, v1}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/n8;

    invoke-interface {v2}, Lcom/google/protobuf/t8;->getDefaultInstanceForType()Lcom/google/protobuf/n8;

    move-result-object v3

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lcom/google/protobuf/n8;->newBuilderForType()Lcom/google/protobuf/m8;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/n8;

    invoke-interface {v2, v0}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/m8;->build()Lcom/google/protobuf/n8;

    move-result-object v0

    :goto_2
    invoke-interface {p0, v1, v0}, Lcom/google/protobuf/m8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/protobuf/i0;->i(Ljava/io/InputStream;)Lcom/google/protobuf/i0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/i0;->a(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/google/protobuf/i0;->i(Ljava/io/InputStream;)Lcom/google/protobuf/i0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/i0;->a(I)V

    return-object p0
.end method

.method public mergeFrom([B)Lcom/google/protobuf/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/a;->mergeFrom([BII)Lcom/google/protobuf/e;

    move-result-object p0

    .line 12
    check-cast p0, Lcom/google/protobuf/a;

    return-object p0
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/i0;->h([BIIZ)Lcom/google/protobuf/e0;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/e0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-virtual {p0, p3}, Lcom/google/protobuf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    throw p0
.end method

.method public mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/i0;->h([BIIZ)Lcom/google/protobuf/e0;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p4}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/e0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-virtual {p0, p3}, Lcom/google/protobuf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    throw p0
.end method

.method public mergeFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/a;"
        }
    .end annotation

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/protobuf/a;->mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/e;

    move-result-object p0

    .line 18
    check-cast p0, Lcom/google/protobuf/a;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/e;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/e;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/e;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/e;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom([B)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/e;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/a;->mergeFrom([BII)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/a;->mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/m8;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/m8;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/m8;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/m8;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom([B)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/m8;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/a;->mergeFrom([BII)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/a;->mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/q8;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/q8;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/q8;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/q8;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a;->mergeFrom([B)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/q8;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/a;->mergeFrom([BII)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/a;->mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 2

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v1, Lcom/google/protobuf/lb;

    invoke-direct {v1}, Lcom/google/protobuf/lb;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    invoke-virtual {v1, p1}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    invoke-virtual {v1}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/m8;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;

    return-object p0
.end method

.method public setUnknownFieldSetBuilder(Lcom/google/protobuf/lb;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/m8;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;

    return-void
.end method

.method public toString()Ljava/lang/String;
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
