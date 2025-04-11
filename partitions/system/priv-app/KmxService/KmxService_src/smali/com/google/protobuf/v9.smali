.class public final Lcom/google/protobuf/v9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/b;


# instance fields
.field public a:Lcom/google/protobuf/b;

.field public b:Ljava/util/List;

.field public c:Z

.field public d:Ljava/util/ArrayList;

.field public e:Z

.field public f:Lcom/google/protobuf/u9;

.field public g:Lcom/google/protobuf/u9;

.field public h:Lcom/google/protobuf/u9;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/google/protobuf/v9;->c:Z

    iput-object p3, p0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-boolean p4, p0, Lcom/google/protobuf/v9;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    return-void
.end method

.method public final b(Ljava/lang/Iterable;)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/c;

    sget-object v2, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    return-void
.end method

.method public final c(ILcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->i()V

    new-instance v0, Lcom/google/protobuf/ba;

    iget-boolean v1, p0, Lcom/google/protobuf/v9;->e:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iget-object p2, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    invoke-virtual {v0}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->i()V

    new-instance v0, Lcom/google/protobuf/ba;

    iget-boolean v1, p0, Lcom/google/protobuf/v9;->e:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iget-object p1, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    invoke-virtual {v0}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public final e(ILcom/google/protobuf/c;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    iget-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    return-void
.end method

.method public final f(Lcom/google/protobuf/c;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    iget-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/v9;->e:Z

    iget-boolean v1, p0, Lcom/google/protobuf/v9;->c:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/n8;

    iget-object v4, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ba;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v4

    if-eq v4, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    iput-boolean v2, p0, Lcom/google/protobuf/v9;->c:Z

    return-object v0
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/v9;->c:Z

    iget-object v0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ba;

    if-eqz v1, :cond_0

    iput-object v2, v1, Lcom/google/protobuf/ba;->a:Lcom/google/protobuf/b;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/v9;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/v9;->c:Z

    :cond_0
    return-void
.end method

.method public final k(I)Lcom/google/protobuf/a;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->i()V

    iget-object v0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    new-instance v1, Lcom/google/protobuf/ba;

    iget-boolean v2, p0, Lcom/google/protobuf/v9;->e:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iget-object p0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lcom/google/protobuf/u9;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/v9;->g:Lcom/google/protobuf/u9;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/u9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/u9;-><init>(Lcom/google/protobuf/v9;I)V

    iput-object v0, p0, Lcom/google/protobuf/v9;->g:Lcom/google/protobuf/u9;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/v9;->g:Lcom/google/protobuf/u9;

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final n(IZ)Lcom/google/protobuf/c;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/c;

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final o()Lcom/google/protobuf/u9;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/v9;->f:Lcom/google/protobuf/u9;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/u9;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/u9;-><init>(Lcom/google/protobuf/v9;I)V

    iput-object v0, p0, Lcom/google/protobuf/v9;->f:Lcom/google/protobuf/u9;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/v9;->f:Lcom/google/protobuf/u9;

    return-object p0
.end method

.method public final p(I)Lcom/google/protobuf/t8;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/t8;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->e()Lcom/google/protobuf/t8;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lcom/google/protobuf/u9;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/v9;->h:Lcom/google/protobuf/u9;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/u9;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/u9;-><init>(Lcom/google/protobuf/v9;I)V

    iput-object v0, p0, Lcom/google/protobuf/v9;->h:Lcom/google/protobuf/u9;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/v9;->h:Lcom/google/protobuf/u9;

    return-object p0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v9;->f:Lcom/google/protobuf/u9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/u9;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v9;->g:Lcom/google/protobuf/u9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/u9;->b()V

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/v9;->h:Lcom/google/protobuf/u9;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/u9;->b()V

    :cond_2
    return-void
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final t()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/v9;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/b;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/v9;->e:Z

    :cond_0
    return-void
.end method

.method public final u(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    iget-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ba;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/protobuf/ba;->a:Lcom/google/protobuf/b;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    return-void
.end method

.method public final v(ILcom/google/protobuf/c;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->j()V

    iget-object v0, p0, Lcom/google/protobuf/v9;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/protobuf/v9;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ba;

    if-eqz p1, :cond_0

    iput-object v0, p1, Lcom/google/protobuf/ba;->a:Lcom/google/protobuf/b;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->t()V

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->r()V

    return-void
.end method
