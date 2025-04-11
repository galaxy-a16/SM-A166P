.class public final Lcom/google/protobuf/p3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

.field public final b:[Lcom/google/protobuf/h3;

.field public final c:[Lcom/google/protobuf/l3;

.field public final d:[Lcom/google/protobuf/t3;

.field public final e:[Lcom/google/protobuf/n3;

.field public final f:[Lcom/google/protobuf/p3;

.field public final g:Lcom/google/protobuf/j3;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/p3;Lcom/google/protobuf/j3;)V
    .locals 9

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    iput-object p3, p0, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    iput-object p1, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/google/protobuf/p3;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependency(I)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/p3;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Invalid public dependency index."

    invoke-direct {p1, p0, p2, v4}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/p3;Ljava/lang/String;Lcom/google/protobuf/g3;)V

    throw p1

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/p3;

    iput-object v0, p0, Lcom/google/protobuf/p3;->f:[Lcom/google/protobuf/p3;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1
    iget-object p2, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p3, p0, p2}, Lcom/google/protobuf/j3;->a(Lcom/google/protobuf/p3;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/h3;

    goto :goto_3

    .line 3
    :cond_4
    sget-object p2, Lcom/google/protobuf/u3;->c:[Lcom/google/protobuf/h3;

    .line 4
    :goto_3
    iput-object p2, p0, Lcom/google/protobuf/p3;->b:[Lcom/google/protobuf/h3;

    move p2, v2

    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result p3

    if-ge p2, p3, :cond_5

    iget-object p3, p0, Lcom/google/protobuf/p3;->b:[Lcom/google/protobuf/h3;

    new-instance v0, Lcom/google/protobuf/h3;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1, p0, v4}, Lcom/google/protobuf/h3;-><init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;)V

    .line 6
    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/l3;

    goto :goto_5

    .line 7
    :cond_6
    sget-object p2, Lcom/google/protobuf/u3;->e:[Lcom/google/protobuf/l3;

    .line 8
    :goto_5
    iput-object p2, p0, Lcom/google/protobuf/p3;->c:[Lcom/google/protobuf/l3;

    move p2, v2

    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result p3

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lcom/google/protobuf/p3;->c:[Lcom/google/protobuf/l3;

    new-instance v0, Lcom/google/protobuf/l3;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lcom/google/protobuf/l3;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result p2

    if-lez p2, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/t3;

    goto :goto_7

    .line 9
    :cond_8
    sget-object p2, Lcom/google/protobuf/u3;->f:[Lcom/google/protobuf/t3;

    .line 10
    :goto_7
    iput-object p2, p0, Lcom/google/protobuf/p3;->d:[Lcom/google/protobuf/t3;

    move p2, v2

    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result p3

    if-ge p2, p3, :cond_9

    iget-object p3, p0, Lcom/google/protobuf/p3;->d:[Lcom/google/protobuf/t3;

    new-instance v0, Lcom/google/protobuf/t3;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/t3;-><init>(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/protobuf/p3;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result p2

    if-lez p2, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/n3;

    goto :goto_9

    .line 11
    :cond_a
    sget-object p2, Lcom/google/protobuf/u3;->d:[Lcom/google/protobuf/n3;

    .line 12
    :goto_9
    iput-object p2, p0, Lcom/google/protobuf/p3;->e:[Lcom/google/protobuf/n3;

    :goto_a
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result p2

    if-ge v2, p2, :cond_b

    iget-object p2, p0, Lcom/google/protobuf/p3;->e:[Lcom/google/protobuf/n3;

    new-instance p3, Lcom/google/protobuf/n3;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p3

    move-object v5, p0

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/protobuf/n3;-><init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;IZ)V

    aput-object p3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/protobuf/h3;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    new-instance v0, Lcom/google/protobuf/j3;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/p3;

    invoke-direct {v0, v2}, Lcom/google/protobuf/j3;-><init>([Lcom/google/protobuf/p3;)V

    iput-object v0, p0, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/google/protobuf/v1;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v4, p2, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".placeholder.proto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Lcom/google/protobuf/v1;->b:Ljava/lang/Object;

    iget v3, v2, Lcom/google/protobuf/v1;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {v2}, Lcom/google/protobuf/d6;->onChanged()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Lcom/google/protobuf/v1;->c:Ljava/lang/Object;

    iget v3, v2, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {v2}, Lcom/google/protobuf/d6;->onChanged()V

    .line 17
    iget-object v3, p2, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 18
    iget-object v5, v2, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/protobuf/v1;->d()V

    iget-object v5, v2, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v3}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    .line 19
    :goto_0
    invoke-virtual {v2}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    iput-object v2, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    new-array v2, v1, [Lcom/google/protobuf/p3;

    iput-object v2, p0, Lcom/google/protobuf/p3;->f:[Lcom/google/protobuf/p3;

    new-array v2, v4, [Lcom/google/protobuf/h3;

    aput-object p2, v2, v1

    iput-object v2, p0, Lcom/google/protobuf/p3;->b:[Lcom/google/protobuf/h3;

    .line 21
    sget-object v1, Lcom/google/protobuf/u3;->e:[Lcom/google/protobuf/l3;

    .line 22
    iput-object v1, p0, Lcom/google/protobuf/p3;->c:[Lcom/google/protobuf/l3;

    .line 23
    sget-object v1, Lcom/google/protobuf/u3;->f:[Lcom/google/protobuf/t3;

    .line 24
    iput-object v1, p0, Lcom/google/protobuf/p3;->d:[Lcom/google/protobuf/t3;

    .line 25
    sget-object v1, Lcom/google/protobuf/u3;->d:[Lcom/google/protobuf/n3;

    .line 26
    iput-object v1, p0, Lcom/google/protobuf/p3;->e:[Lcom/google/protobuf/n3;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j3;->a(Lcom/google/protobuf/p3;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/google/protobuf/j3;->b(Lcom/google/protobuf/q3;)V

    return-void

    .line 27
    :cond_1
    invoke-static {v2}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public static e(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;
    .locals 14

    new-instance v0, Lcom/google/protobuf/j3;

    invoke-direct {v0, p1}, Lcom/google/protobuf/j3;-><init>([Lcom/google/protobuf/p3;)V

    new-instance v1, Lcom/google/protobuf/p3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/protobuf/p3;-><init>(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/p3;Lcom/google/protobuf/j3;)V

    iget-object p0, v1, Lcom/google/protobuf/p3;->b:[Lcom/google/protobuf/h3;

    array-length p1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/protobuf/h3;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/google/protobuf/p3;->d:[Lcom/google/protobuf/t3;

    array-length p1, p0

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v3, p0, v2

    iget-object v3, v3, Lcom/google/protobuf/t3;->d:[Lcom/google/protobuf/r3;

    array-length v4, v3

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    iget-object v7, v6, Lcom/google/protobuf/r3;->c:Lcom/google/protobuf/p3;

    iget-object v8, v7, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    iget-object v9, v6, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v9}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v8, v9, v6, v10}, Lcom/google/protobuf/j3;->e(Ljava/lang/String;Lcom/google/protobuf/q3;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/q3;

    move-result-object v8

    instance-of v9, v8, Lcom/google/protobuf/h3;

    const/4 v11, 0x0

    const-string v12, "\" is not a message type."

    const-string v13, "\""

    if-eqz v9, :cond_2

    check-cast v8, Lcom/google/protobuf/h3;

    iget-object v8, v6, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v8}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    invoke-virtual {v7, v8, v6, v10}, Lcom/google/protobuf/j3;->e(Ljava/lang/String;Lcom/google/protobuf/q3;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/q3;

    move-result-object v7

    instance-of v8, v7, Lcom/google/protobuf/h3;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/google/protobuf/h3;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1, v11}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/q3;Ljava/lang/String;Lcom/google/protobuf/g3;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1, v11}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/q3;Ljava/lang/String;Lcom/google/protobuf/g3;)V

    throw p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, v1, Lcom/google/protobuf/p3;->e:[Lcom/google/protobuf/n3;

    array-length p1, p0

    :goto_3
    if-ge v0, p1, :cond_5

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/google/protobuf/n3;->e(Lcom/google/protobuf/n3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public static i([Ljava/lang/String;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;
    .locals 3

    invoke-static {p0}, Lcom/google/protobuf/p3;->k([Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1}, Lcom/google/protobuf/p3;->e(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid embedded descriptor for \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V
    .locals 6

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-static {p0}, Lcom/google/protobuf/p3;->k([Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v1, p1}, Lcom/google/protobuf/p3;->e(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {p2, p1}, Lcom/google/protobuf/o3;->assignDescriptors(Lcom/google/protobuf/p3;)Lcom/google/protobuf/q4;

    move-result-object p2

    if-eqz p2, :cond_5

    :try_start_2
    invoke-static {p0, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0

    iput-object p0, p1, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/p3;->b:[Lcom/google/protobuf/h3;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/h3;->l(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_1
    iget-object v1, p1, Lcom/google/protobuf/p3;->c:[Lcom/google/protobuf/l3;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    iput-object v2, v1, Lcom/google/protobuf/l3;->a:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move v3, p2

    :goto_2
    iget-object v4, v1, Lcom/google/protobuf/l3;->d:[Lcom/google/protobuf/m3;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v5

    iput-object v5, v4, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_3
    iget-object v1, p1, Lcom/google/protobuf/p3;->d:[Lcom/google/protobuf/t3;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    iput-object v2, v1, Lcom/google/protobuf/t3;->a:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move v3, p2

    :goto_4
    iget-object v4, v1, Lcom/google/protobuf/t3;->d:[Lcom/google/protobuf/r3;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v5

    iput-object v5, v4, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    iget-object v0, p1, Lcom/google/protobuf/p3;->e:[Lcom/google/protobuf/n3;

    array-length v1, v0

    if-ge p2, v1, :cond_5

    aget-object v0, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/n3;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid embedded descriptor for \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static k([Ljava/lang/String;)[B
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object p0, p0, v2

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    sget-object v0, Lcom/google/protobuf/g7;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/protobuf/n3;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/j3;->c(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/q3;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/n3;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/q3;->a()Lcom/google/protobuf/p3;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/google/protobuf/n3;

    return-object p1

    :cond_2
    return-object v3
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/p3;->b:[Lcom/google/protobuf/h3;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 2

    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->access$000(Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object p0
.end method
