.class public final Lcom/google/protobuf/v8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/x8;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/m8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/v8;->a:Z

    iput-object p1, p0, Lcom/google/protobuf/v8;->b:Ljava/lang/Cloneable;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 0

    sget-object p0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object p0
.end method

.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;
    .locals 1

    instance-of v0, p2, Lcom/google/protobuf/q8;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/protobuf/q8;

    invoke-interface {p2}, Lcom/google/protobuf/q8;->buildPartial()Lcom/google/protobuf/r8;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v8;->b:Ljava/lang/Cloneable;

    check-cast v0, Lcom/google/protobuf/m8;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/m8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;

    return-object p0
.end method

.method public final b(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/n3;)V
    .locals 2

    invoke-virtual {p3}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/v8;->b:Ljava/lang/Cloneable;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/m8;

    invoke-interface {v1, p3}, Lcom/google/protobuf/t8;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->f(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->g(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v1

    check-cast v0, Lcom/google/protobuf/m8;

    invoke-interface {v0, p3}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/n8;

    invoke-interface {v1, v0}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->g(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-interface {v1}, Lcom/google/protobuf/m8;->buildPartial()Lcom/google/protobuf/n8;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/v8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->g(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-interface {v0}, Lcom/google/protobuf/m8;->buildPartial()Lcom/google/protobuf/n8;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/v8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    :goto_1
    return-void
.end method

.method public final c(Lcom/google/protobuf/n3;)Lcom/google/protobuf/WireFormat$Utf8Validation;
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    sget-object p0, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    return-object p0
.end method

.method public final d(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/n3;)V
    .locals 2

    invoke-virtual {p3}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/v8;->b:Ljava/lang/Cloneable;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/m8;

    invoke-interface {v1, p3}, Lcom/google/protobuf/t8;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->f(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    invoke-virtual {p1, p0, v1, p2}, Lcom/google/protobuf/i0;->t(ILcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->g(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v1

    check-cast v0, Lcom/google/protobuf/m8;

    invoke-interface {v0, p3}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/n8;

    invoke-interface {v1, v0}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->g(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v1

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/protobuf/i0;->t(ILcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-interface {v1}, Lcom/google/protobuf/m8;->buildPartial()Lcom/google/protobuf/n8;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/v8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/protobuf/v8;->g(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v1

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/protobuf/i0;->t(ILcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-interface {v0}, Lcom/google/protobuf/m8;->buildPartial()Lcom/google/protobuf/n8;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/v8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    :goto_1
    return-void
.end method

.method public final e(Lcom/google/protobuf/q4;Lcom/google/protobuf/h3;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/q4;->b(Lcom/google/protobuf/h3;I)V

    return-void
.end method

.method public final f(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/v8;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/v8;->b:Ljava/lang/Cloneable;

    check-cast v0, Lcom/google/protobuf/m8;

    invoke-interface {v0, p1}, Lcom/google/protobuf/m8;->getFieldBuilder(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/v8;->a:Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/v8;->b:Ljava/lang/Cloneable;

    check-cast p0, Lcom/google/protobuf/m8;

    invoke-interface {p0, p1}, Lcom/google/protobuf/m8;->newBuilderForField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/v8;->b:Ljava/lang/Cloneable;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/protobuf/q8;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v8;->f(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;

    move-result-object v0

    if-eq p2, v0, :cond_0

    check-cast v1, Lcom/google/protobuf/m8;

    check-cast p2, Lcom/google/protobuf/q8;

    invoke-interface {p2}, Lcom/google/protobuf/q8;->buildPartial()Lcom/google/protobuf/r8;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/m8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;

    :cond_0
    return-object p0

    :cond_1
    check-cast v1, Lcom/google/protobuf/m8;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/m8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;

    return-object p0
.end method
