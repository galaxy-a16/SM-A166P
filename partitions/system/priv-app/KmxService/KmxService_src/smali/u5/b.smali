.class public final Lu5/b;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# instance fields
.field public a:I

.field public b:Lcom/google/protobuf/m7;

.field public c:Ljava/lang/Object;

.field public d:Ljava/util/List;

.field public e:Lcom/google/protobuf/v9;

.field public f:Lcom/google/protobuf/compiler/PluginProtos$Version;

.field public g:Lcom/google/protobuf/ba;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    .line 2
    sget-object v0, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object v0, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    const-string v0, ""

    iput-object v0, p0, Lu5/b;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu5/b;->d:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu5/b;->e()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lu5/b;->d()Lcom/google/protobuf/ba;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    sget-object p1, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object p1, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    const-string p1, ""

    iput-object p1, p0, Lu5/b;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lu5/b;->d:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1400()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lu5/b;->e()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lu5/b;->d()Lcom/google/protobuf/ba;

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
    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->isInitialized()Z

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
    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->isInitialized()Z

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
    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 4

    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/google/protobuf/d6;Lu5/a;)V

    iget v1, p0, Lu5/b;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    invoke-interface {v1}, Lcom/google/protobuf/m7;->O()Lcom/google/protobuf/m7;

    move-result-object v1

    iput-object v1, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    iget v1, p0, Lu5/b;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lu5/b;->a:I

    :cond_0
    iget-object v1, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1602(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/google/protobuf/m7;)Lcom/google/protobuf/m7;

    iget-object v1, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    if-nez v1, :cond_2

    iget v1, p0, Lu5/b;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lu5/b;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lu5/b;->d:Ljava/util/List;

    iget v1, p0, Lu5/b;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lu5/b;->a:I

    :cond_1
    iget-object v1, p0, Lu5/b;->d:Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1702(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lu5/b;->a:I

    if-eqz v1, :cond_6

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lu5/b;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1802(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lu5/b;->g:Lcom/google/protobuf/ba;

    if-nez v1, :cond_4

    iget-object v1, p0, Lu5/b;->f:Lcom/google/protobuf/compiler/PluginProtos$Version;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/compiler/PluginProtos$Version;

    :goto_2
    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1902(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/google/protobuf/compiler/PluginProtos$Version;)Lcom/google/protobuf/compiler/PluginProtos$Version;

    or-int/lit8 v2, v2, 0x2

    :cond_5
    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2076(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;I)I

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lu5/b;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lu5/b;->g:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lu5/b;->f:Lcom/google/protobuf/compiler/PluginProtos$Version;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$Version;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lu5/b;->g:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lu5/b;->f:Lcom/google/protobuf/compiler/PluginProtos$Version;

    :cond_2
    iget-object p0, p0, Lu5/b;->g:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final e()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lu5/b;->d:Ljava/util/List;

    iget v2, p0, Lu5/b;->a:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lu5/b;->d:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final f(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)V
    .locals 3

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/m7;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/m7;

    move-result-object v0

    iput-object v0, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    iget v0, p0, Lu5/b;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lu5/b;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lu5/b;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/protobuf/l7;

    iget-object v1, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    invoke-direct {v0, v1}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v0, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    iget v0, p0, Lu5/b;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu5/b;->a:I

    :cond_2
    iget-object v0, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/m7;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu5/b;->c:Ljava/lang/Object;

    iget v0, p0, Lu5/b;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lu5/b;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_4
    iget-object v0, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lu5/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu5/b;->d:Ljava/util/List;

    iget v0, p0, Lu5/b;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lu5/b;->a:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lu5/b;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lu5/b;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lu5/b;->d:Ljava/util/List;

    iget v0, p0, Lu5/b;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lu5/b;->a:I

    :cond_6
    iget-object v0, p0, Lu5/b;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu5/b;->d:Ljava/util/List;

    iget v0, p0, Lu5/b;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lu5/b;->a:I

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lu5/b;->e()Lcom/google/protobuf/v9;

    move-result-object v1

    :cond_8
    iput-object v1, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasCompilerVersion()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object v0

    iget-object v1, p0, Lu5/b;->g:Lcom/google/protobuf/ba;

    if-nez v1, :cond_c

    iget v1, p0, Lu5/b;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    iget-object v1, p0, Lu5/b;->f:Lcom/google/protobuf/compiler/PluginProtos$Version;

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$Version;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object v2

    if-eq v1, v2, :cond_b

    iget v1, p0, Lu5/b;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lu5/b;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lu5/b;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lu5/d;

    invoke-virtual {v1, v0}, Lu5/d;->d(Lcom/google/protobuf/compiler/PluginProtos$Version;)V

    goto :goto_3

    :cond_b
    iput-object v0, p0, Lu5/b;->f:Lcom/google/protobuf/compiler/PluginProtos$Version;

    goto :goto_3

    :cond_c
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_3
    iget v0, p0, Lu5/b;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lu5/b;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 5

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

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6

    const/16 v3, 0x12

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    if-nez v2, :cond_3

    iget v2, p0, Lu5/b;->a:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lu5/b;->d:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lu5/b;->d:Ljava/util/List;

    iget v2, p0, Lu5/b;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lu5/b;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lu5/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lu5/b;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lu5/b;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lu5/b;->a:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lu5/b;->c:Ljava/lang/Object;

    iget v1, p0, Lu5/b;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lu5/b;->a:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v3, p0, Lu5/b;->a:I

    and-int/2addr v3, v2

    if-nez v3, :cond_7

    new-instance v3, Lcom/google/protobuf/l7;

    iget-object v4, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    invoke-direct {v3, v4}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v3, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    iget v3, p0, Lu5/b;->a:I

    or-int/2addr v2, v3

    iput v2, p0, Lu5/b;->a:I

    :cond_7
    iget-object v2, p0, Lu5/b;->b:Lcom/google/protobuf/m7;

    invoke-interface {v2, v1}, Lcom/google/protobuf/m7;->y(Lcom/google/protobuf/ByteString;)V
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

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lu5/f;->c:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lu5/f;->d:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const-class v1, Lu5/b;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    if-nez v2, :cond_0

    iget-object v2, p0, Lu5/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lu5/b;->e:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    iget-object v2, p0, Lu5/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu5/b;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {p0, p1}, Lu5/b;->f(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)V

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
    invoke-virtual {p0, p1, p2}, Lu5/b;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {p0, p1}, Lu5/b;->f(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)V

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
    invoke-virtual {p0, p1, p2}, Lu5/b;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
