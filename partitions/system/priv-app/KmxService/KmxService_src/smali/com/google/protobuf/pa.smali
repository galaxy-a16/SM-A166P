.class public final Lcom/google/protobuf/pa;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ra;


# instance fields
.field public a:I

.field public b:Lcom/google/protobuf/h8;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

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
    invoke-virtual {p0}, Lcom/google/protobuf/pa;->c()Lcom/google/protobuf/Struct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Struct;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/pa;->c()Lcom/google/protobuf/Struct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Struct;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/pa;->c()Lcom/google/protobuf/Struct;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/pa;->c()Lcom/google/protobuf/Struct;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/Struct;
    .locals 5

    new-instance v0, Lcom/google/protobuf/Struct;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Struct;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/oa;)V

    iget v1, p0, Lcom/google/protobuf/pa;->a:I

    if-eqz v1, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/protobuf/qa;->a:Lcom/google/protobuf/z7;

    new-instance v2, Lcom/google/protobuf/h8;

    sget-object v3, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/google/protobuf/h8;-><init>(Lcom/google/protobuf/z7;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    move-object v1, v2

    :cond_0
    invoke-static {v0, v1}, Lcom/google/protobuf/Struct;->access$302(Lcom/google/protobuf/Struct;Lcom/google/protobuf/h8;)Lcom/google/protobuf/h8;

    invoke-static {v0}, Lcom/google/protobuf/Struct;->access$300(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/h8;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/protobuf/h8;->a:Z

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/pa;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/h8;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/qa;->a:Lcom/google/protobuf/z7;

    new-instance v1, Lcom/google/protobuf/h8;

    sget-object v2, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/h8;-><init>(Lcom/google/protobuf/z7;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    iget-boolean v0, v0, Lcom/google/protobuf/h8;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/protobuf/h8;

    sget-object v2, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, v0, Lcom/google/protobuf/h8;->e:Lcom/google/protobuf/w8;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/h8;-><init>(Lcom/google/protobuf/w8;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    :cond_1
    iget v0, p0, Lcom/google/protobuf/pa;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/pa;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    iget-object p0, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/Struct;)V
    .locals 2

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/pa;->d()Lcom/google/protobuf/h8;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/Struct;->access$400(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/h8;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->g()Lcom/google/protobuf/g8;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/g8;->putAll(Ljava/util/Map;)V

    iget v0, p0, Lcom/google/protobuf/pa;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/pa;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/Struct;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/protobuf/qa;->a:Lcom/google/protobuf/z7;

    iget-object v1, v1, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    iget-object v1, v1, Lcom/google/protobuf/y7;->f:Lcom/google/protobuf/b4;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z7;

    invoke-virtual {p0}, Lcom/google/protobuf/pa;->d()Lcom/google/protobuf/h8;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/h8;->g()Lcom/google/protobuf/g8;

    move-result-object v3

    iget-object v4, v1, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/google/protobuf/g8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/pa;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/pa;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/sa;->a:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/sa;->b:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/Struct;

    const-class v1, Lcom/google/protobuf/pa;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final internalGetMapField(I)Lcom/google/protobuf/h8;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/protobuf/pa;->b:Lcom/google/protobuf/h8;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/protobuf/qa;->a:Lcom/google/protobuf/z7;

    new-instance p1, Lcom/google/protobuf/h8;

    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/google/protobuf/h8;-><init>(Lcom/google/protobuf/z7;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    move-object p0, p1

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid map field number: "

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final internalGetMutableMapField(I)Lcom/google/protobuf/h8;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/pa;->d()Lcom/google/protobuf/h8;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid map field number: "

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/pa;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Struct;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/pa;->e(Lcom/google/protobuf/Struct;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/pa;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Struct;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/pa;->e(Lcom/google/protobuf/Struct;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/pa;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
