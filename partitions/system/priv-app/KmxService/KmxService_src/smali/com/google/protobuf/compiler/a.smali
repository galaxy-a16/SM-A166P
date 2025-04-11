.class public final Lcom/google/protobuf/compiler/a;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:J

.field public d:Ljava/util/List;

.field public e:Lcom/google/protobuf/v9;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/compiler/a;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/compiler/a;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
    .locals 5

    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;-><init>(Lcom/google/protobuf/d6;Lu5/a;)V

    iget-object v1, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/compiler/a;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/compiler/a;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/compiler/a;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3802(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/compiler/a;->a:I

    if-eqz v1, :cond_4

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/compiler/a;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3902(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/google/protobuf/compiler/a;->c:J

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$4002(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;J)J

    or-int/lit8 v2, v2, 0x2

    :cond_3
    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$4176(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;I)I

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/a;

    return-object p0
.end method

.method public final d(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)V
    .locals 6

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->hasError()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3900(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/a;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->hasSupportedFeatures()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->getSupportedFeatures()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protobuf/compiler/a;->c:J

    iget v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v2, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/a;->a:I

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$4200()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v3, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    iget v4, p0, Lcom/google/protobuf/compiler/a;->a:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v5

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    iput-object v2, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    :cond_8
    iput-object v2, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$3800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_7

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    iget-object v2, p0, Lcom/google/protobuf/compiler/a;->e:Lcom/google/protobuf/v9;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/protobuf/compiler/a;->a:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/compiler/a;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protobuf/compiler/a;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/compiler/a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->I()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protobuf/compiler/a;->c:J

    iget v1, p0, Lcom/google/protobuf/compiler/a;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/compiler/a;->a:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/a;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/compiler/a;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/compiler/a;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
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

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lu5/f;->e:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lu5/f;->f:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    const-class v1, Lcom/google/protobuf/compiler/a;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/a;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/a;->d(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/a;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/a;->d(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/a;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
