.class public final Landroidx/lifecycle/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroidx/lifecycle/i;->a:Z

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/google/protobuf/ca;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/protobuf/ca;-><init>(I)V

    .line 3
    invoke-direct {p0, p1}, Landroidx/lifecycle/i;-><init>(Lcom/google/protobuf/ca;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/ca;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/i;->b:Z

    return-void
.end method

.method public static m(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/google/protobuf/q8;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/protobuf/q8;

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/google/protobuf/q8;->buildPartial()Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/q8;->build()Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/google/protobuf/i5;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->i()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->q()Z

    move-result p0

    if-eqz p0, :cond_5

    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/lifecycle/i;->m(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2

    if-ne p0, p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    :cond_1
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Repeated field should contains a List but actually contains type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1, p2}, Landroidx/lifecycle/i;->m(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p1
.end method

.method public static o(Lcom/google/protobuf/ca;Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ca;->j()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/i5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroidx/lifecycle/i;->n(Lcom/google/protobuf/i5;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/i5;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroidx/lifecycle/i;->n(Lcom/google/protobuf/i5;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static q(Lcom/google/protobuf/i5;Ljava/lang/Object;)V
    .locals 4

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/j5;->r(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/q8;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/i5;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/i;->e()V

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/lifecycle/i;->c:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/protobuf/q8;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/i;->c:Z

    invoke-static {p1, p2}, Landroidx/lifecycle/i;->q(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/ca;->o(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    check-cast v0, Ljava/util/List;

    :goto_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Z)Lcom/google/protobuf/j5;
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ca;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/protobuf/j5;->d:Lcom/google/protobuf/j5;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/i;->b:Z

    iget-object v1, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/ca;

    iget-boolean v3, p0, Landroidx/lifecycle/i;->c:Z

    if-eqz v3, :cond_1

    check-cast v1, Lcom/google/protobuf/ca;

    invoke-static {v1, v0}, Lcom/google/protobuf/j5;->b(Lcom/google/protobuf/ca;Z)Lcom/google/protobuf/ca;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/lifecycle/i;->o(Lcom/google/protobuf/ca;Z)V

    :cond_1
    new-instance p1, Lcom/google/protobuf/j5;

    invoke-direct {p1, v2}, Lcom/google/protobuf/j5;-><init>(Lcom/google/protobuf/ca;)V

    iget-boolean p0, p0, Landroidx/lifecycle/i;->a:Z

    iput-boolean p0, p1, Lcom/google/protobuf/j5;->c:Z

    return-object p1
.end method

.method public final c(Lcom/google/protobuf/i5;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/i;->e()V

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ca;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ca;->p(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ca;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/i;->a:Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Landroidx/lifecycle/i;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/lifecycle/i;->c:Z

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroidx/lifecycle/i;->b:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/lifecycle/i;->a:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v0

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_3
    iput-boolean v1, p0, Landroidx/lifecycle/i;->c:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroidx/lifecycle/i;->c:Z

    throw v0
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/i;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ca;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/j5;->b(Lcom/google/protobuf/ca;Z)Lcom/google/protobuf/ca;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    iput-boolean v1, p0, Landroidx/lifecycle/i;->b:Z

    :cond_0
    return-void
.end method

.method public final f()Ljava/util/Map;
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/i;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ca;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/j5;->b(Lcom/google/protobuf/ca;Z)Lcom/google/protobuf/ca;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    iget-boolean p0, p0, Lcom/google/protobuf/ca;->d:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/ca;->n()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-static {v0, p0}, Landroidx/lifecycle/i;->o(Lcom/google/protobuf/ca;Z)V

    :goto_0
    return-object v0

    :cond_1
    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/ca;

    iget-boolean v0, v0, Lcom/google/protobuf/ca;->d:Z

    check-cast p0, Lcom/google/protobuf/ca;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final g(Lcom/google/protobuf/i5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ca;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/protobuf/k7;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/protobuf/k7;

    invoke-virtual {p0}, Lcom/google/protobuf/k7;->a()Lcom/google/protobuf/r8;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final h(Lcom/google/protobuf/i5;I)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lcom/google/protobuf/i5;)Z
    .locals 1

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ca;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ca;

    invoke-virtual {v2}, Lcom/google/protobuf/ca;->j()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ca;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/j5;->q(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    invoke-virtual {p0}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/protobuf/j5;->q(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lcom/google/protobuf/j5;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/lifecycle/i;->e()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v1}, Lcom/google/protobuf/ca;->j()I

    move-result v1

    iget-object v2, p1, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/lifecycle/i;->l(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->l(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final l(Ljava/util/Map$Entry;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/i5;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast v0, Lcom/google/protobuf/n3;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/ca;->o(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/j5;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/n3;->i()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lcom/google/protobuf/q8;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/google/protobuf/q8;

    check-cast p1, Lcom/google/protobuf/r8;

    check-cast v1, Lcom/google/protobuf/m8;

    check-cast p1, Lcom/google/protobuf/n8;

    invoke-interface {v1, p1}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    goto :goto_3

    :cond_3
    check-cast v1, Lcom/google/protobuf/r8;

    invoke-interface {v1}, Lcom/google/protobuf/r8;->toBuilder()Lcom/google/protobuf/q8;

    move-result-object v1

    check-cast p1, Lcom/google/protobuf/r8;

    check-cast v1, Lcom/google/protobuf/m8;

    check-cast p1, Lcom/google/protobuf/n8;

    invoke-interface {v1, p1}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/q8;->build()Lcom/google/protobuf/r8;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    invoke-static {p1}, Lcom/google/protobuf/j5;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/ca;->o(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method

.method public final p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/lifecycle/i;->e()V

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/lifecycle/i;->q(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    iget-boolean v4, p0, Landroidx/lifecycle/i;->c:Z

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/google/protobuf/q8;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Landroidx/lifecycle/i;->c:Z

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1, p2}, Landroidx/lifecycle/i;->q(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    :goto_3
    iget-boolean v0, p0, Landroidx/lifecycle/i;->c:Z

    if-nez v0, :cond_5

    instance-of v0, p2, Lcom/google/protobuf/q8;

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    iput-boolean v1, p0, Landroidx/lifecycle/i;->c:Z

    iget-object p0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ca;->o(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
