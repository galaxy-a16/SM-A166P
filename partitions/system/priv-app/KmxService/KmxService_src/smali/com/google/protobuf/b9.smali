.class public final Lcom/google/protobuf/b9;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/c9;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:Ljava/util/List;

.field public h:Lcom/google/protobuf/v9;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/b9;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/b9;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/b9;->e:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/b9;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/b9;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/b9;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/b9;->e:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/b9;->i:I

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
    invoke-virtual {p0}, Lcom/google/protobuf/b9;->c()Lcom/google/protobuf/Method;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/b9;->c()Lcom/google/protobuf/Method;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/b9;->c()Lcom/google/protobuf/Method;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/b9;->c()Lcom/google/protobuf/Method;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/Method;
    .locals 3

    new-instance v0, Lcom/google/protobuf/Method;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Method;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/a9;)V

    iget-object v1, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/protobuf/b9;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/Method;->access$302(Lcom/google/protobuf/Method;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    if-eqz v1, :cond_7

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/b9;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/Method;->access$402(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/b9;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/Method;->access$502(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/protobuf/b9;->d:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/Method;->access$602(Lcom/google/protobuf/Method;Z)Z

    :cond_4
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/b9;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/Method;->access$702(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/google/protobuf/b9;->f:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/Method;->access$802(Lcom/google/protobuf/Method;Z)Z

    :cond_6
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/protobuf/b9;->i:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Method;->access$902(Lcom/google/protobuf/Method;I)I

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/b9;

    return-object p0
.end method

.method public final d(Lcom/google/protobuf/Method;)V
    .locals 6

    invoke-static {}, Lcom/google/protobuf/Method;->getDefaultInstance()Lcom/google/protobuf/Method;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$400(Lcom/google/protobuf/Method;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b9;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$500(Lcom/google/protobuf/Method;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b9;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/b9;->d:Z

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$700(Lcom/google/protobuf/Method;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b9;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/b9;->f:Z

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$300(Lcom/google/protobuf/Method;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$300(Lcom/google/protobuf/Method;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$300(Lcom/google/protobuf/Method;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lcom/google/protobuf/Method;->access$300(Lcom/google/protobuf/Method;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v2, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$300(Lcom/google/protobuf/Method;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    iget v3, p0, Lcom/google/protobuf/b9;->a:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/protobuf/b9;->a:I

    sget-boolean v4, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    if-nez v4, :cond_a

    new-instance v4, Lcom/google/protobuf/v9;

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v5

    invoke-direct {v4, v0, v1, v3, v5}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v4, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    iput-object v2, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    :cond_b
    iput-object v2, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/Method;->access$300(Lcom/google/protobuf/Method;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_d
    :goto_2
    invoke-static {p1}, Lcom/google/protobuf/Method;->access$900(Lcom/google/protobuf/Method;)I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getSyntaxValue()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/b9;->i:I

    iget v0, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/b9;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getUnknownFields()Lcom/google/protobuf/ob;

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
    if-nez v0, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/16 v3, 0xa

    if-eq v1, v3, :cond_9

    const/16 v3, 0x12

    if-eq v1, v3, :cond_8

    const/16 v3, 0x18

    if-eq v1, v3, :cond_7

    const/16 v3, 0x22

    if-eq v1, v3, :cond_6

    const/16 v3, 0x28

    if-eq v1, v3, :cond_5

    const/16 v3, 0x32

    if-eq v1, v3, :cond_2

    const/16 v3, 0x38

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->p()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/b9;->i:I

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/b9;->a:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    iget-object v2, p0, Lcom/google/protobuf/b9;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/protobuf/b9;->a:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protobuf/b9;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/b9;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/b9;->f:Z

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/b9;->a:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/b9;->e:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/b9;->a:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/b9;->d:Z

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/b9;->a:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/b9;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/b9;->a:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/b9;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/b9;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/b9;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
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

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/Method;->getDefaultInstance()Lcom/google/protobuf/Method;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Method;->getDefaultInstance()Lcom/google/protobuf/Method;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/q;->c:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/q;->d:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/Method;

    const-class v1, Lcom/google/protobuf/b9;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b9;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/Method;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Method;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b9;->d(Lcom/google/protobuf/Method;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b9;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/Method;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Method;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b9;->d(Lcom/google/protobuf/Method;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b9;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
