.class public Lcom/google/protobuf/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h6;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 1

    iput p5, p0, Lcom/google/protobuf/k6;->a:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/protobuf/j6;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/protobuf/j6;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p2, p1, Lcom/google/protobuf/j6;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Class;

    const-string p4, "getDefaultInstance"

    invoke-static {p3, p4, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 p3, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->r(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/h8;

    move-result-object p1

    iget-object p1, p1, Lcom/google/protobuf/h8;->e:Lcom/google/protobuf/w8;

    iget-object p1, p1, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/z7;

    iput-object p1, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/j6;->g:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->r(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/h8;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/h8;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/j6;->a:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->a(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/k6;->n(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object p0, p0, Lcom/google/protobuf/j6;->f:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/n3;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/d6;->internalGetMutableMapField(I)Lcom/google/protobuf/h8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->f()Ljava/util/List;

    move-result-object p1

    check-cast p2, Lcom/google/protobuf/n8;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/k6;->q(Lcom/google/protobuf/n8;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    iget p0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() called on a repeated field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() is not supported for repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Lcom/google/protobuf/m8;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "newBuilderForField() called on a non-Message type."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/n8;

    invoke-interface {p0}, Lcom/google/protobuf/n8;->newBuilderForType()Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/google/protobuf/d6;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->o(Lcom/google/protobuf/d6;)V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k6;->c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->o(Lcom/google/protobuf/d6;)V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k6;->c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lcom/google/protobuf/d6;I)Lcom/google/protobuf/m8;
    .locals 0

    iget p0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Map fields cannot be repeated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lcom/google/protobuf/d6;ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    iget-object p0, p0, Lcom/google/protobuf/j6;->e:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/n3;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/d6;->internalGetMutableMapField(I)Lcom/google/protobuf/h8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->f()Ljava/util/List;

    move-result-object p1

    check-cast p3, Lcom/google/protobuf/n8;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/k6;->q(Lcom/google/protobuf/n8;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lcom/google/protobuf/d6;I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p0, p0, Lcom/google/protobuf/j6;->d:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/d6;->internalGetMapField(I)Lcom/google/protobuf/h8;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/h8;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lcom/google/protobuf/d6;)Lcom/google/protobuf/m8;
    .locals 0

    iget p0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Nested builder not supported for map fields."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Lcom/google/protobuf/d6;)I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/j6;->h:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/d6;->internalGetMapField(I)Lcom/google/protobuf/h8;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/h8;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m(Lcom/google/protobuf/d6;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/j6;->b:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->l(Lcom/google/protobuf/d6;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/k6;->i(Lcom/google/protobuf/d6;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public n(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p0, p0, Lcom/google/protobuf/j6;->c:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->r(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/h8;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/h8;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Lcom/google/protobuf/d6;)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j6;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/j6;->i:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/d6;->internalGetMutableMapField(I)Lcom/google/protobuf/h8;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/h8;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Lcom/google/protobuf/d6;)Z
    .locals 0

    iget p0, p0, Lcom/google/protobuf/k6;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() called on a repeated field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() is not supported for repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Lcom/google/protobuf/n8;)Lcom/google/protobuf/n8;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/k6;->c:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/n8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    check-cast p0, Lcom/google/protobuf/n8;

    invoke-interface {p0}, Lcom/google/protobuf/n8;->toBuilder()Lcom/google/protobuf/m8;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/m8;->build()Lcom/google/protobuf/n8;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/h8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetMapField(I)Lcom/google/protobuf/h8;

    move-result-object p0

    return-object p0
.end method
