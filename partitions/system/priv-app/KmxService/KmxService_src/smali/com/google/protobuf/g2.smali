.class public final Lcom/google/protobuf/g2;
.super Lcom/google/protobuf/f6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# instance fields
.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/List;

.field public h:Lcom/google/protobuf/v9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/f6;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;-><init>(Lcom/google/protobuf/e6;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f6;->c(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/f6;

    return-object p0
.end method

.method public final build()Lcom/google/protobuf/n8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g2;

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f3;->C:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 4

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/google/protobuf/f6;Lcom/google/protobuf/q0;)V

    iget-object v1, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/g2;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/g2;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/g2;->b:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$16902(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/g2;->b:I

    if-eqz v1, :cond_6

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/protobuf/g2;->c:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$17002(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/protobuf/g2;->d:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$17102(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)Z

    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/protobuf/g2;->e:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$17202(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)Z

    or-int/lit8 v2, v2, 0x4

    :cond_4
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/protobuf/g2;->f:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$17302(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)Z

    or-int/lit8 v2, v2, 0x8

    :cond_5
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$17476(Lcom/google/protobuf/DescriptorProtos$MessageOptions;I)I

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f3;->D:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    const-class v1, Lcom/google/protobuf/g2;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/f6;->e()Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V
    .locals 6

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/g2;->c:Z

    iget v0, p0, Lcom/google/protobuf/g2;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/g2;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/g2;->d:Z

    iget v0, p0, Lcom/google/protobuf/g2;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/g2;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDeprecated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/g2;->e:Z

    iget v0, p0, Lcom/google/protobuf/g2;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/g2;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasMapEntry()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/g2;->f:Z

    iget v0, p0, Lcom/google/protobuf/g2;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/g2;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$16900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$16900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/g2;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/g2;->b:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/g2;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/g2;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/g2;->b:I

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$16900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$16900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v2, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$16900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    iget v3, p0, Lcom/google/protobuf/g2;->b:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protobuf/g2;->b:I

    sget-boolean v4, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    if-nez v4, :cond_9

    new-instance v4, Lcom/google/protobuf/v9;

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v5

    invoke-direct {v4, v0, v1, v3, v5}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v4, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    iput-object v2, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    :cond_a
    iput-object v2, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$16900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_c
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f6;->f(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_9

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    const/16 v3, 0x8

    if-eq v1, v3, :cond_7

    const/16 v4, 0x10

    if-eq v1, v4, :cond_6

    const/16 v5, 0x18

    if-eq v1, v5, :cond_5

    const/16 v5, 0x38

    if-eq v1, v5, :cond_4

    const/16 v3, 0x1f3a

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protobuf/f6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    iget-object v2, p0, Lcom/google/protobuf/g2;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/protobuf/g2;->b:I

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/g2;->b:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/protobuf/g2;->b:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/g2;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/g2;->f:Z

    iget v1, p0, Lcom/google/protobuf/g2;->b:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/g2;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/g2;->e:Z

    iget v1, p0, Lcom/google/protobuf/g2;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/g2;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/g2;->d:Z

    iget v1, p0, Lcom/google/protobuf/g2;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/g2;->b:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/g2;->c:Z

    iget v1, p0, Lcom/google/protobuf/g2;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/g2;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_2
    move v0, v2

    goto/16 :goto_0

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

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g2;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g2;->j(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g2;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g2;->j(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g2;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f6;->g(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/f6;

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method
