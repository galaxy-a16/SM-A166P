.class public final Lcom/google/protobuf/r1;
.super Lcom/google/protobuf/f6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u1;


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/util/List;

.field public k:Lcom/google/protobuf/v9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/f6;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/r1;->c:I

    iput v0, p0, Lcom/google/protobuf/r1;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;-><init>(Lcom/google/protobuf/e6;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/r1;->c:I

    iput p1, p0, Lcom/google/protobuf/r1;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/r1;

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f3;->E:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 4

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/google/protobuf/f6;Lcom/google/protobuf/q0;)V

    iget-object v1, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/protobuf/r1;->b:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18002(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    if-eqz v1, :cond_9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/r1;->c:I

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18102(Lcom/google/protobuf/DescriptorProtos$FieldOptions;I)I

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/protobuf/r1;->d:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18202(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/protobuf/r1;->e:I

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18302(Lcom/google/protobuf/DescriptorProtos$FieldOptions;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_4
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/google/protobuf/r1;->f:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18402(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x8

    :cond_5
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/protobuf/r1;->g:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18502(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_6
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/google/protobuf/r1;->h:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18602(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x20

    :cond_7
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/protobuf/r1;->i:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18702(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    or-int/lit8 v2, v2, 0x40

    :cond_8
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18876(Lcom/google/protobuf/DescriptorProtos$FieldOptions;I)I

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f3;->F:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const-class v1, Lcom/google/protobuf/r1;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

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

.method public final j(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)V
    .locals 6

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/google/protobuf/r1;->b:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/r1;->b:I

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/r1;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/r1;->d:Z

    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/r1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getJstype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protobuf/r1;->b:I

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$JSType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/r1;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getLazy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/r1;->f:Z

    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/r1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasUnverifiedLazy()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getUnverifiedLazy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/r1;->g:Z

    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/r1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/r1;->h:Z

    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/r1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getWeak()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/r1;->i:Z

    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/r1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18000(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18000(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/r1;->b:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/r1;->b:I

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18000(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_a
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18000(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v2, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18000(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    iget v3, p0, Lcom/google/protobuf/r1;->b:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/protobuf/r1;->b:I

    sget-boolean v4, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    if-nez v4, :cond_c

    new-instance v4, Lcom/google/protobuf/v9;

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v5

    invoke-direct {v4, v0, v1, v3, v5}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v4, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    iput-object v2, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    :cond_d
    iput-object v2, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$18000(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_f
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f6;->f(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/google/protobuf/ob;

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
    if-nez v0, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    const/16 v3, 0x8

    if-eq v1, v3, :cond_b

    const/16 v4, 0x10

    if-eq v1, v4, :cond_a

    const/16 v5, 0x18

    if-eq v1, v5, :cond_9

    const/16 v5, 0x28

    if-eq v1, v5, :cond_8

    const/16 v3, 0x30

    if-eq v1, v3, :cond_6

    const/16 v3, 0x50

    if-eq v1, v3, :cond_5

    const/16 v3, 0x78

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1f3a

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protobuf/f6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    iget-object v2, p0, Lcom/google/protobuf/r1;->k:Lcom/google/protobuf/v9;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/protobuf/r1;->b:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protobuf/r1;->b:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/r1;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/r1;->g:Z

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/google/protobuf/r1;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/r1;->i:Z

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/r1;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->p()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$JSType;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/d6;->mergeUnknownVarintField(II)V

    goto/16 :goto_0

    :cond_7
    iput v1, p0, Lcom/google/protobuf/r1;->e:I

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/r1;->b:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/r1;->f:Z

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/r1;->b:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/r1;->h:Z

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/r1;->b:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/r1;->d:Z

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/r1;->b:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->p()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/d6;->mergeUnknownVarintField(II)V

    goto/16 :goto_0

    :cond_c
    iput v1, p0, Lcom/google/protobuf/r1;->c:I

    iget v1, p0, Lcom/google/protobuf/r1;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/r1;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
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

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r1;->j(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r1;->j(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
