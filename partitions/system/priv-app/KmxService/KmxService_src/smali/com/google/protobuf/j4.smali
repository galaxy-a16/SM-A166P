.class public final Lcom/google/protobuf/j4;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/List;

.field public d:Lcom/google/protobuf/v9;

.field public e:Ljava/util/List;

.field public f:Lcom/google/protobuf/v9;

.field public g:Lcom/google/protobuf/SourceContext;

.field public h:Lcom/google/protobuf/ba;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/j4;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/j4;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/j4;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/j4;->i:I

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
    invoke-virtual {p0}, Lcom/google/protobuf/j4;->c()Lcom/google/protobuf/Enum;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/j4;->c()Lcom/google/protobuf/Enum;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/j4;->c()Lcom/google/protobuf/Enum;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j4;->c()Lcom/google/protobuf/Enum;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/Enum;
    .locals 3

    new-instance v0, Lcom/google/protobuf/Enum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Enum;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/i4;)V

    iget-object v1, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/j4;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/Enum;->access$302(Lcom/google/protobuf/Enum;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/j4;->a:I

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/protobuf/Enum;->access$402(Lcom/google/protobuf/Enum;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    if-eqz v1, :cond_7

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/j4;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/Enum;->access$502(Lcom/google/protobuf/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/j4;->h:Lcom/google/protobuf/ba;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/j4;->g:Lcom/google/protobuf/SourceContext;

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/SourceContext;

    :goto_2
    invoke-static {v0, v2}, Lcom/google/protobuf/Enum;->access$602(Lcom/google/protobuf/Enum;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;

    :cond_6
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/protobuf/j4;->i:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Enum;->access$702(Lcom/google/protobuf/Enum;I)I

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/j4;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/j4;->h:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j4;->g:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lcom/google/protobuf/j4;->h:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/j4;->g:Lcom/google/protobuf/SourceContext;

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/j4;->h:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/Enum;)V
    .locals 8

    invoke-static {}, Lcom/google/protobuf/Enum;->getDefaultInstance()Lcom/google/protobuf/Enum;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$500(Lcom/google/protobuf/Enum;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j4;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/j4;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$300(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$300(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/j4;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/j4;->a:I

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$300(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$300(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    iput-object v3, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v3, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$300(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    iget v4, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/google/protobuf/j4;->a:I

    sget-boolean v5, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    if-nez v5, :cond_6

    new-instance v5, Lcom/google/protobuf/v9;

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v7

    invoke-direct {v5, v0, v4, v6, v7}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v5, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    iput-object v3, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_7
    move-object v0, v3

    :goto_2
    iput-object v0, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$300(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/j4;->a:I

    goto :goto_4

    :cond_a
    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/j4;->a:I

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_6

    :cond_c
    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    iput-object v3, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v3, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    iget v4, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lcom/google/protobuf/j4;->a:I

    sget-boolean v5, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    if-nez v5, :cond_e

    new-instance v5, Lcom/google/protobuf/v9;

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v5, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    iput-object v3, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    :cond_e
    iget-object v3, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    :cond_f
    iput-object v3, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_11
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/Enum;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/j4;->h:Lcom/google/protobuf/ba;

    if-nez v1, :cond_13

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/protobuf/j4;->g:Lcom/google/protobuf/SourceContext;

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v2

    if-eq v1, v2, :cond_12

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/j4;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/j4;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ja;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/ja;->d(Lcom/google/protobuf/SourceContext;)V

    goto :goto_7

    :cond_12
    iput-object v0, p0, Lcom/google/protobuf/j4;->g:Lcom/google/protobuf/SourceContext;

    goto :goto_7

    :cond_13
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_7
    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/j4;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_14
    invoke-static {p1}, Lcom/google/protobuf/Enum;->access$700(Lcom/google/protobuf/Enum;)I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/protobuf/Enum;->getSyntaxValue()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/j4;->i:I

    iget v0, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/j4;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/Enum;->getUnknownFields()Lcom/google/protobuf/ob;

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
    if-nez v0, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    const/16 v3, 0xa

    if-eq v1, v3, :cond_8

    const/16 v3, 0x12

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x22

    if-eq v1, v3, :cond_2

    const/16 v3, 0x28

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->p()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/j4;->i:I

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/j4;->a:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/j4;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/j4;->a:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    iget-object v2, p0, Lcom/google/protobuf/j4;->f:Lcom/google/protobuf/v9;

    if-nez v2, :cond_7

    iget v2, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protobuf/j4;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/j4;->e:Ljava/util/List;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/protobuf/EnumValue;->parser()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/EnumValue;

    iget-object v2, p0, Lcom/google/protobuf/j4;->d:Lcom/google/protobuf/v9;

    if-nez v2, :cond_7

    iget v2, p0, Lcom/google/protobuf/j4;->a:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/j4;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protobuf/j4;->a:I

    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/j4;->c:Ljava/util/List;

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j4;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/j4;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/j4;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
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

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/Enum;->getDefaultInstance()Lcom/google/protobuf/Enum;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Enum;->getDefaultInstance()Lcom/google/protobuf/Enum;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/db;->e:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/db;->f:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/Enum;

    const-class v1, Lcom/google/protobuf/j4;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j4;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/Enum;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Enum;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j4;->e(Lcom/google/protobuf/Enum;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j4;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/Enum;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Enum;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j4;->e(Lcom/google/protobuf/Enum;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j4;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
