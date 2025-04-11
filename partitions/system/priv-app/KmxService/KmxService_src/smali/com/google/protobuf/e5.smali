.class public final Lcom/google/protobuf/e5;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# instance fields
.field public a:I

.field public b:Lcom/google/protobuf/m7;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    .line 2
    sget-object v0, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object v0, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    sget-object p1, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object p1, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final build()Lcom/google/protobuf/n8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/e5;->c()Lcom/google/protobuf/FieldMask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public final build()Lcom/google/protobuf/r8;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/e5;->c()Lcom/google/protobuf/FieldMask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/e5;->c()Lcom/google/protobuf/FieldMask;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/e5;->c()Lcom/google/protobuf/FieldMask;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/FieldMask;
    .locals 2

    new-instance v0, Lcom/google/protobuf/FieldMask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/FieldMask;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/d5;)V

    iget v1, p0, Lcom/google/protobuf/e5;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    invoke-interface {v1}, Lcom/google/protobuf/m7;->O()Lcom/google/protobuf/m7;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    iget v1, p0, Lcom/google/protobuf/e5;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/e5;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    invoke-static {v0, v1}, Lcom/google/protobuf/FieldMask;->access$302(Lcom/google/protobuf/FieldMask;Lcom/google/protobuf/m7;)Lcom/google/protobuf/m7;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/e5;

    return-object p0
.end method

.method public final d(Lcom/google/protobuf/FieldMask;)V
    .locals 2

    invoke-static {}, Lcom/google/protobuf/FieldMask;->getDefaultInstance()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/FieldMask;->access$300(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/m7;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/FieldMask;->access$300(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/m7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/e5;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/e5;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/e5;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/protobuf/l7;

    iget-object v1, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    invoke-direct {v0, v1}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v0, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/e5;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/e5;->a:I

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    invoke-static {p1}, Lcom/google/protobuf/FieldMask;->access$300(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/m7;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/FieldMask;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/google/protobuf/e5;->a:I

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/protobuf/l7;

    iget-object v4, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    invoke-direct {v3, v4}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v3, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    iget v3, p0, Lcom/google/protobuf/e5;->a:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/e5;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/e5;->b:Lcom/google/protobuf/m7;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_2
    move v0, v2

    goto :goto_0

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/FieldMask;->getDefaultInstance()Lcom/google/protobuf/FieldMask;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/FieldMask;->getDefaultInstance()Lcom/google/protobuf/FieldMask;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f5;->a:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f5;->b:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/FieldMask;

    const-class v1, Lcom/google/protobuf/e5;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e5;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/FieldMask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/FieldMask;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/e5;->d(Lcom/google/protobuf/FieldMask;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e5;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/FieldMask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/FieldMask;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/e5;->d(Lcom/google/protobuf/FieldMask;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e5;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method
