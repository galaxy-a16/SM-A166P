.class public final Lcom/google/protobuf/a1;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/e1;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/List;

.field public d:Lcom/google/protobuf/v9;

.field public e:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

.field public f:Lcom/google/protobuf/ba;

.field public g:Ljava/util/List;

.field public h:Lcom/google/protobuf/v9;

.field public i:Lcom/google/protobuf/m7;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/a1;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object v0, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    .line 3
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->f()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->d()Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->e()Lcom/google/protobuf/v9;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/a1;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    sget-object p1, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object p1, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    .line 5
    sget-boolean p1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->f()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->d()Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->e()Lcom/google/protobuf/v9;

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
    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 3

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/q0;)V

    iget-object v1, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/a1;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/protobuf/a1;->a:I

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10202(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    invoke-interface {v1}, Lcom/google/protobuf/m7;->O()Lcom/google/protobuf/m7;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/a1;->a:I

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10302(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/m7;)Lcom/google/protobuf/m7;

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    if-eqz v1, :cond_8

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/a1;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10402(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/protobuf/a1;->f:Lcom/google/protobuf/ba;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/protobuf/a1;->e:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    :goto_3
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10502(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    or-int/lit8 v2, v2, 0x2

    :cond_7
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10676(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;I)I

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/a1;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/a1;->f:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/a1;->e:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lcom/google/protobuf/a1;->f:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/a1;->e:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/a1;->f:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final e()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final f()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final g(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 4

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10400(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->f()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/google/protobuf/a1;->f:Lcom/google/protobuf/ba;

    if-nez v2, :cond_9

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/a1;->e:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protobuf/a1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->d()Lcom/google/protobuf/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/f1;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/f1;->j(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V

    goto :goto_3

    :cond_8
    iput-object v0, p0, Lcom/google/protobuf/a1;->e:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_3
    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_5

    :cond_d
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->e()Lcom/google/protobuf/v9;

    move-result-object v1

    :cond_e
    iput-object v1, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_10
    :goto_5
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10300(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10300(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    goto :goto_6

    :cond_11
    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/protobuf/l7;

    iget-object v1, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    invoke-direct {v0, v1}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v0, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/a1;->a:I

    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10300(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f3;->q:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final h(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/16 v3, 0xa

    if-eq v1, v3, :cond_9

    const/16 v3, 0x12

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x22

    if-eq v1, v3, :cond_3

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/protobuf/l7;

    iget-object v3, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    invoke-direct {v2, v3}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v2, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protobuf/a1;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/a1;->i:Lcom/google/protobuf/m7;

    invoke-interface {v2, v1}, Lcom/google/protobuf/m7;->y(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    iget-object v2, p0, Lcom/google/protobuf/a1;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protobuf/a1;->a:I

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/a1;->g:Ljava/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/a1;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/a1;->a:I

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/a1;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protobuf/a1;->a:I

    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/a1;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/a1;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_3
    move v0, v2

    goto/16 :goto_0

    :goto_4
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    throw p1

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f3;->r:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v1, Lcom/google/protobuf/a1;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/a1;->d:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/a1;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/protobuf/a1;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/protobuf/a1;->f:Lcom/google/protobuf/ba;

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/google/protobuf/a1;->e:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-nez p0, :cond_6

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p0

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a1;->h(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a1;->g(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a1;->h(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a1;->g(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a1;->h(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
