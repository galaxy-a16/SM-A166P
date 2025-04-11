.class public final Lcom/google/protobuf/w8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/x8;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/w8;->a:I

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/w8;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/protobuf/w8;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/protobuf/c8;

    iput-object p1, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 4
    iput p2, p0, Lcom/google/protobuf/w8;->a:I

    iput-object p1, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 0

    iget p0, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->EXTENSION_SET:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object p0

    :goto_0
    sget-object p0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->EXTENSION_SET:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/j5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/google/protobuf/j5;->v(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j5;->i(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/ca;->o(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->a(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/n3;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/w8;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/w8;->h(Lcom/google/protobuf/n3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/w8;->g(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/r8;

    invoke-interface {v0}, Lcom/google/protobuf/r8;->toBuilder()Lcom/google/protobuf/q8;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-interface {v0}, Lcom/google/protobuf/q8;->buildPartial()Lcom/google/protobuf/r8;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/w8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    return-void

    :cond_0
    throw v1

    :cond_1
    throw v1

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/w8;->h(Lcom/google/protobuf/n3;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/i;

    invoke-virtual {v0, p3}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/q8;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/protobuf/q8;

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/google/protobuf/r8;

    invoke-interface {v0}, Lcom/google/protobuf/r8;->toBuilder()Lcom/google/protobuf/q8;

    move-result-object v0

    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/i;

    invoke-virtual {p0, p3, v0}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    return-void

    :cond_3
    throw v1

    :cond_4
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/google/protobuf/n3;)Lcom/google/protobuf/WireFormat$Utf8Validation;
    .locals 0

    iget p0, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    :goto_0
    return-object p0

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->s()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/n3;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/w8;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/w8;->h(Lcom/google/protobuf/n3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/w8;->g(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/r8;

    invoke-interface {v0}, Lcom/google/protobuf/r8;->toBuilder()Lcom/google/protobuf/q8;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v1

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/protobuf/i0;->t(ILcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-interface {v0}, Lcom/google/protobuf/q8;->buildPartial()Lcom/google/protobuf/r8;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/w8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    return-void

    :cond_0
    throw v1

    :cond_1
    throw v1

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/w8;->h(Lcom/google/protobuf/n3;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/i;

    invoke-virtual {v0, p3}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/q8;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/protobuf/q8;

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/google/protobuf/r8;

    invoke-interface {v0}, Lcom/google/protobuf/r8;->toBuilder()Lcom/google/protobuf/q8;

    move-result-object v0

    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/i;

    invoke-virtual {p0, p3, v0}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p3}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    invoke-virtual {p1, p0, v0, p2}, Lcom/google/protobuf/i0;->t(ILcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    return-void

    :cond_3
    throw v1

    :cond_4
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lcom/google/protobuf/q4;Lcom/google/protobuf/h3;I)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/q4;->b(Lcom/google/protobuf/h3;I)V

    return-void

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/q4;->b(Lcom/google/protobuf/h3;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/google/protobuf/ByteString;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/google/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/RopeByteString;->minLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    new-instance v4, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/w9;)V

    move-object v1, v4

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/w9;)V

    :goto_1
    iget-object p1, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString;->size()I

    move-result p1

    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/protobuf/RopeByteString;->minLength(I)I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_4

    iget-object p1, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    new-instance v1, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/w9;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/google/protobuf/RopeByteString;

    invoke-static {p1}, Lcom/google/protobuf/RopeByteString;->access$400(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/w8;->f(Lcom/google/protobuf/ByteString;)V

    invoke-static {p1}, Lcom/google/protobuf/RopeByteString;->access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w8;->f(Lcom/google/protobuf/ByteString;)V

    :goto_3
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->i(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroidx/lifecycle/i;->n(Lcom/google/protobuf/i5;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/google/protobuf/n3;)Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->o(Lcom/google/protobuf/i5;)Z

    move-result p0

    return p0

    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->i(Lcom/google/protobuf/i5;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/j5;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/j5;->u(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
