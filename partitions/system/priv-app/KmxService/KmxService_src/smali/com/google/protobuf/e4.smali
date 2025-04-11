.class public final Lcom/google/protobuf/e4;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/h3;

.field public final b:Lcom/google/protobuf/j5;

.field public final c:[Lcom/google/protobuf/n3;

.field public final d:Lcom/google/protobuf/ob;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/j5;[Lcom/google/protobuf/n3;Lcom/google/protobuf/ob;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/e4;->e:I

    iput-object p1, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    iput-object p2, p0, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    iput-object p3, p0, Lcom/google/protobuf/e4;->c:[Lcom/google/protobuf/n3;

    iput-object p4, p0, Lcom/google/protobuf/e4;->d:Lcom/google/protobuf/ob;

    return-void
.end method

.method public static d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/n3;

    new-instance v1, Lcom/google/protobuf/e4;

    sget-object v2, Lcom/google/protobuf/j5;->d:Lcom/google/protobuf/j5;

    sget-object v3, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/e4;-><init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/j5;[Lcom/google/protobuf/n3;Lcom/google/protobuf/ob;)V

    return-object v1
.end method


# virtual methods
.method public final getAllFields()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->h()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-static {p0}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-static {p0}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object v1, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->i(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getParserForType()Lcom/google/protobuf/o9;
    .locals 2

    new-instance v0, Lcom/google/protobuf/b4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/b4;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/e4;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/e4;->d:Lcom/google/protobuf/ob;

    iget-object v2, p0, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/j5;->j()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/protobuf/ob;->a()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/j5;->n()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result v1

    :goto_0
    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/e4;->e:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/e4;->d:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public final hasField(Lcom/google/protobuf/n3;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object v1, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->o(Lcom/google/protobuf/i5;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n3;

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->r()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/j5;->o(Lcom/google/protobuf/i5;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/j5;->p()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final newBuilderForType()Lcom/google/protobuf/m8;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/d4;

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    return-object v0
.end method

.method public final newBuilderForType()Lcom/google/protobuf/q8;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/protobuf/d4;

    .line 4
    iget-object p0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    return-object v0
.end method

.method public final toBuilder()Lcom/google/protobuf/m8;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/d4;

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-direct {v0, v1}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/protobuf/d4;->d(Lcom/google/protobuf/n8;)Lcom/google/protobuf/d4;

    move-result-object p0

    return-object p0
.end method

.method public final toBuilder()Lcom/google/protobuf/q8;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/protobuf/d4;

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-direct {v0, v1}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/protobuf/d4;->d(Lcom/google/protobuf/n8;)Lcom/google/protobuf/d4;

    move-result-object p0

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/n0;)V
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/e4;->d:Lcom/google/protobuf/ob;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v0}, Lcom/google/protobuf/ca;->j()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/j5;->z(Ljava/util/Map$Entry;Lcom/google/protobuf/n0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

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

    invoke-static {v0, p1}, Lcom/google/protobuf/j5;->z(Ljava/util/Map$Entry;Lcom/google/protobuf/n0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/protobuf/ob;->b(Lcom/google/protobuf/n0;)V

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v0}, Lcom/google/protobuf/ca;->j()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/i5;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/google/protobuf/j5;->y(Lcom/google/protobuf/i5;Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/i5;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/google/protobuf/j5;->y(Lcom/google/protobuf/i5;Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    :goto_4
    return-void
.end method
