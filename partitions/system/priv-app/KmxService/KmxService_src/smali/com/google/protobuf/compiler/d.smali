.class public final Lcom/google/protobuf/compiler/d;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lu5/c;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

.field public f:Lcom/google/protobuf/ba;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->d:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->d()Lcom/google/protobuf/ba;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/compiler/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/compiler/d;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/compiler/d;->d:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$2800()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->d()Lcom/google/protobuf/ba;

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 4

    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;-><init>(Lcom/google/protobuf/d6;Lu5/a;)V

    iget v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    if-eqz v1, :cond_5

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/compiler/d;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3002(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/compiler/d;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3102(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/compiler/d;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3202(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/compiler/d;->f:Lcom/google/protobuf/ba;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/compiler/d;->e:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    :goto_1
    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3302(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    or-int/lit8 v2, v2, 0x8

    :cond_4
    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3476(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;I)I

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/d;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/compiler/d;->f:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/compiler/d;->e:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lcom/google/protobuf/compiler/d;->f:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->e:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/compiler/d;->f:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)V
    .locals 3

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3000(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasInsertionPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3200(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasGeneratedCodeInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getGeneratedCodeInfo()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/compiler/d;->f:Lcom/google/protobuf/ba;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/compiler/d;->e:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/e2;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/e2;->d(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;)V

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/google/protobuf/compiler/d;->e:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_0
    iget v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/compiler/d;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getUnknownFields()Lcom/google/protobuf/ob;

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
    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x82

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/d;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/d;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/d;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/d;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/compiler/d;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/compiler/d;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
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

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lu5/f;->g:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lu5/f;->h:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    const-class v1, Lcom/google/protobuf/compiler/d;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/d;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/d;->e(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/d;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/d;->e(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/d;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
