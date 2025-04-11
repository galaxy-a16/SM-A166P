.class public abstract Lcom/google/protobuf/f6;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# instance fields
.field public a:Landroidx/lifecycle/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/d6;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method private h(Lcom/google/protobuf/n3;)V
    .locals 0

    iget-object p1, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    invoke-interface {p0}, Lcom/google/protobuf/m8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/f6;
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    invoke-virtual {p0}, Lcom/google/protobuf/f6;->d()V

    iget-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->a(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/j5;->d:Lcom/google/protobuf/j5;

    new-instance v0, Landroidx/lifecycle/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/lifecycle/i;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/i;->j()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final f(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->access$600(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/google/protobuf/j5;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/f6;->d()V

    iget-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->access$600(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/google/protobuf/j5;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->k(Lcom/google/protobuf/j5;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/f6;
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    invoke-virtual {p0}, Lcom/google/protobuf/f6;->d()V

    iget-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/protobuf/d6;->access$900(Lcom/google/protobuf/d6;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/i;->f()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroidx/lifecycle/i;->n(Lcom/google/protobuf/i5;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getFieldBuilder(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/f6;->d()V

    iget-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object v0

    new-instance v1, Lcom/google/protobuf/d4;

    invoke-direct {v1, v0}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    iget-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object v1

    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/m8;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/protobuf/m8;

    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/google/protobuf/n8;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/protobuf/n8;

    invoke-interface {v0}, Lcom/google/protobuf/n8;->toBuilder()Lcom/google/protobuf/m8;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-virtual {v1, p1, v0}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->getFieldBuilder(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public final getRepeatedField(Lcom/google/protobuf/n3;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/i;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/i;->e()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i;->h(Lcom/google/protobuf/i5;I)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/lifecycle/i;->m(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->getRepeatedField(Lcom/google/protobuf/n3;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getRepeatedFieldBuilder(Lcom/google/protobuf/n3;I)Lcom/google/protobuf/m8;
    .locals 3

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    invoke-virtual {p0}, Lcom/google/protobuf/f6;->d()V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v2, "getRepeatedFieldBuilder() called on a non-Message type."

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->h(Lcom/google/protobuf/i5;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/m8;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/m8;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/n8;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/protobuf/n8;

    invoke-interface {v0}, Lcom/google/protobuf/n8;->toBuilder()Lcom/google/protobuf/m8;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    invoke-virtual {v1}, Landroidx/lifecycle/i;->e()V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v1, Landroidx/lifecycle/i;->c:Z

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/google/protobuf/q8;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroidx/lifecycle/i;->c:Z

    invoke-virtual {v1, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1, v0}, Landroidx/lifecycle/i;->q(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->getRepeatedFieldBuilder(Lcom/google/protobuf/n3;I)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public final getRepeatedFieldCount(Lcom/google/protobuf/n3;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getRepeatedFieldCount() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->getRepeatedFieldCount(Lcom/google/protobuf/n3;)I

    move-result p0

    return p0
.end method

.method public final hasField(Lcom/google/protobuf/n3;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;->h(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->i(Lcom/google/protobuf/i5;)Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->hasField(Lcom/google/protobuf/n3;)Z

    move-result p0

    return p0
.end method

.method public final newBuilderForField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object p0

    new-instance p1, Lcom/google/protobuf/d4;

    invoke-direct {p1, p0}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->newBuilderForField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public final parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/protobuf/f6;->d()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/protobuf/m8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/w8;

    iget-object p0, p0, Lcom/google/protobuf/f6;->a:Landroidx/lifecycle/i;

    const/4 v0, 0x1

    invoke-direct {v4, p0, v0}, Lcom/google/protobuf/w8;-><init>(Ljava/lang/Object;I)V

    move-object v0, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c8;->W(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;Lcom/google/protobuf/h3;Lcom/google/protobuf/x8;I)Z

    move-result p0

    return p0
.end method
