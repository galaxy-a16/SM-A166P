.class public final Lcom/google/protobuf/i2;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/j2;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

.field public f:Lcom/google/protobuf/ba;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/i2;->d:Ljava/lang/Object;

    .line 3
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->d()Lcom/google/protobuf/ba;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/i2;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/i2;->d:Ljava/lang/Object;

    .line 5
    sget-boolean p1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->d()Lcom/google/protobuf/ba;

    :cond_0
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
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 4

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/q0;)V

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    if-eqz v1, :cond_7

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13002(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/i2;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13102(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/i2;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13202(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/ba;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/i2;->e:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    :goto_1
    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13302(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/google/protobuf/i2;->g:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13402(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_5
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/protobuf/i2;->h:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13502(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    or-int/lit8 v2, v2, 0x20

    :cond_6
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13676(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;I)I

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i2;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/i2;->e:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/i2;->e:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 3

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13000(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/i2;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13100(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/i2;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13200(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i2;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/i2;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/ba;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/i2;->e:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/i2;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/k2;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/k2;->j(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)V

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/google/protobuf/i2;->e:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_0
    iget v0, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/i2;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/i2;->g:Z

    iget v0, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/i2;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/i2;->h:Z

    iget v0, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/i2;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6

    const/16 v3, 0x12

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x22

    if-eq v1, v3, :cond_3

    const/16 v3, 0x28

    if-eq v1, v3, :cond_2

    const/16 v3, 0x30

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/i2;->h:Z

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/i2;->a:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/i2;->g:Z

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/i2;->a:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/i2;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/i2;->a:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i2;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/i2;->a:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i2;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/i2;->a:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i2;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/i2;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/i2;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
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

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f3;->y:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f3;->z:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v1, Lcom/google/protobuf/i2;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    iget v0, p0, Lcom/google/protobuf/i2;->a:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/i2;->f:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/protobuf/i2;->e:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-nez p0, :cond_2

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i2;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i2;->e(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i2;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i2;->e(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i2;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
