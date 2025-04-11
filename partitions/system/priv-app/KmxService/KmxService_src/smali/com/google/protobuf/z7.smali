.class public final Lcom/google/protobuf/z7;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/google/protobuf/y7;

.field public volatile d:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/Value;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/z7;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    new-instance p4, Lcom/google/protobuf/y7;

    invoke-direct {p4, p1, p0, p2, p3}, Lcom/google/protobuf/y7;-><init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/z7;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$FieldType;)V

    iput-object p4, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/y7;Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/z7;->d:I

    :try_start_0
    iput-object p1, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    invoke-static {p2, p1, p3}, Lcom/google/protobuf/c8;->X(Lcom/google/protobuf/i0;Lcom/google/protobuf/b8;Lcom/google/protobuf/t4;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public constructor <init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/z7;->d:I

    iput-object p2, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/protobuf/n3;)V
    .locals 3

    iget-object v0, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object p0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v1, p0, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong FieldDescriptor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/protobuf/n3;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    iget-object p0, p0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lcom/google/protobuf/x7;
    .locals 7

    new-instance v6, Lcom/google/protobuf/x7;

    iget-object v1, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v2, v1, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/x7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v1, v1, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/n3;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/z7;->d(Lcom/google/protobuf/n3;)V

    invoke-virtual {p0, v2}, Lcom/google/protobuf/z7;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/z7;

    iget-object p0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v1, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/protobuf/z7;

    iget-object p0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v1, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object p0, p0, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/z7;->d(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    :goto_0
    iget-object v0, p1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object p1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getParserForType()Lcom/google/protobuf/o9;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object p0, p0, Lcom/google/protobuf/y7;->f:Lcom/google/protobuf/b4;

    return-object p0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/z7;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/google/protobuf/z7;->d:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v1, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/c8;->O(Lcom/google/protobuf/b8;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/z7;->d:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    sget-object p0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public final hasField(Lcom/google/protobuf/n3;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/z7;->d(Lcom/google/protobuf/n3;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v0, v0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/r8;

    invoke-interface {p0}, Lcom/google/protobuf/s8;->isInitialized()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/z7;->e()Lcom/google/protobuf/x7;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/q8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/z7;->e()Lcom/google/protobuf/x7;

    move-result-object p0

    return-object p0
.end method

.method public final toBuilder()Lcom/google/protobuf/m8;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/protobuf/x7;

    iget-object v1, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v2, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/x7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public final toBuilder()Lcom/google/protobuf/q8;
    .locals 7

    .line 3
    new-instance v6, Lcom/google/protobuf/x7;

    iget-object v1, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v2, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/x7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public final writeTo(Lcom/google/protobuf/n0;)V
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v1, v0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/j5;->w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Lcom/google/protobuf/j5;->w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method
