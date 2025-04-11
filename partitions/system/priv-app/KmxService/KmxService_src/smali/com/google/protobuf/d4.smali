.class public final Lcom/google/protobuf/d4;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/h3;

.field public final b:Landroidx/lifecycle/i;

.field public final c:[Lcom/google/protobuf/n3;

.field public d:Lcom/google/protobuf/ob;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/h3;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    sget-object v0, Lcom/google/protobuf/j5;->d:Lcom/google/protobuf/j5;

    new-instance v0, Landroidx/lifecycle/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/lifecycle/i;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    iput-object v0, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    iget-object p1, p1, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p1

    new-array p1, p1, [Lcom/google/protobuf/n3;

    iput-object p1, p0, Lcom/google/protobuf/d4;->c:[Lcom/google/protobuf/n3;

    return-void
.end method

.method public static f(Lcom/google/protobuf/n3;Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lcom/google/protobuf/c4;->a:[I

    iget-object v1, p0, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/m8;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object p0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/protobuf/m3;

    if-eqz p0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->e(Lcom/google/protobuf/n3;)V

    invoke-static {p1, p2}, Lcom/google/protobuf/d4;->f(Lcom/google/protobuf/n3;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->a(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/google/protobuf/e4;
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/d4;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/d4;->c()Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/protobuf/e4;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/i;->b(Z)Lcom/google/protobuf/j5;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/d4;->c:[Lcom/google/protobuf/n3;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/protobuf/n3;

    iget-object v3, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    iget-object p0, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/protobuf/e4;-><init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/j5;[Lcom/google/protobuf/n3;Lcom/google/protobuf/ob;)V

    invoke-static {v0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d4;->b()Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/d4;->b()Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d4;->c()Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/d4;->c()Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/e4;
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/n3;

    invoke-virtual {v3}, Lcom/google/protobuf/n3;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/i;->i(Lcom/google/protobuf/i5;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/protobuf/e4;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/lifecycle/i;->b(Z)Lcom/google/protobuf/j5;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/d4;->c:[Lcom/google/protobuf/n3;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/n3;

    iget-object p0, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/google/protobuf/e4;-><init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/j5;[Lcom/google/protobuf/n3;Lcom/google/protobuf/ob;)V

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/google/protobuf/d4;

    iget-object v1, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    invoke-direct {v0, v1}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    iget-object v1, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/i;->b(Z)Lcom/google/protobuf/j5;

    move-result-object v1

    iget-object v3, v0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/i;->k(Lcom/google/protobuf/j5;)V

    iget-object v1, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    iget-object v3, v0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    sget-object v4, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v4, Lcom/google/protobuf/lb;

    invoke-direct {v4}, Lcom/google/protobuf/lb;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    invoke-virtual {v4, v1}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    invoke-virtual {v4}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    iget-object p0, p0, Lcom/google/protobuf/d4;->c:[Lcom/google/protobuf/n3;

    array-length v1, p0

    iget-object v3, v0, Lcom/google/protobuf/d4;->c:[Lcom/google/protobuf/n3;

    invoke-static {p0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final d(Lcom/google/protobuf/n8;)Lcom/google/protobuf/d4;
    .locals 6

    instance-of v0, p1, Lcom/google/protobuf/e4;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/protobuf/e4;

    iget-object v0, p1, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    iget-object v1, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/protobuf/e4;->b:Lcom/google/protobuf/j5;

    iget-object v1, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/i;->k(Lcom/google/protobuf/j5;)V

    iget-object v0, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    sget-object v2, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v2, Lcom/google/protobuf/lb;

    invoke-direct {v2}, Lcom/google/protobuf/lb;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    iget-object v0, p1, Lcom/google/protobuf/e4;->d:Lcom/google/protobuf/ob;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    invoke-virtual {v2}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/d4;->c:[Lcom/google/protobuf/n3;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    iget-object v4, p1, Lcom/google/protobuf/e4;->c:[Lcom/google/protobuf/n3;

    if-nez v3, :cond_0

    aget-object v3, v4, v0

    aput-object v3, v2, v0

    goto :goto_1

    :cond_0
    aget-object v5, v4, v0

    if-eqz v5, :cond_1

    if-eq v3, v5, :cond_1

    invoke-virtual {v1, v3}, Landroidx/lifecycle/i;->c(Lcom/google/protobuf/i5;)V

    aget-object v3, v4, v0

    aput-object v3, v2, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/d4;

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/n3;)V
    .locals 0

    iget-object p1, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object p0, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {p0}, Landroidx/lifecycle/i;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    invoke-static {p0}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->e(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroidx/lifecycle/i;->n(Lcom/google/protobuf/i5;Ljava/lang/Object;Z)Ljava/lang/Object;

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
.end method

.method public final getFieldBuilder(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->e(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->m()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->g(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/d4;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/m8;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/protobuf/m8;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/google/protobuf/n8;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/protobuf/n8;

    invoke-interface {v0}, Lcom/google/protobuf/n8;->toBuilder()Lcom/google/protobuf/m8;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Cannot convert %s to Message.Builder"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Nested builder not supported for map fields."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public final hasField(Lcom/google/protobuf/n3;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->e(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->i(Lcom/google/protobuf/i5;)Z

    move-result p0

    return p0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/d4;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n3;

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->r()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroidx/lifecycle/i;->i(Lcom/google/protobuf/i5;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v2}, Landroidx/lifecycle/i;->j()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->d(Lcom/google/protobuf/n8;)Lcom/google/protobuf/d4;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->d(Lcom/google/protobuf/n8;)Lcom/google/protobuf/d4;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    sget-object v1, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v1, Lcom/google/protobuf/lb;

    invoke-direct {v1}, Lcom/google/protobuf/lb;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    invoke-virtual {v1, p1}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    invoke-virtual {v1}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public final newBuilderForField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->e(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/google/protobuf/d4;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d4;->e(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/protobuf/d4;->f(Lcom/google/protobuf/n3;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/protobuf/d4;->f(Lcom/google/protobuf/n3;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/d4;->b:Landroidx/lifecycle/i;

    iget-object v1, p1, Lcom/google/protobuf/n3;->j:Lcom/google/protobuf/s3;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/d4;->c:[Lcom/google/protobuf/n3;

    iget v1, v1, Lcom/google/protobuf/s3;->a:I

    aget-object v3, v2, v1

    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_2

    invoke-virtual {v0, v3}, Landroidx/lifecycle/i;->c(Lcom/google/protobuf/i5;)V

    :cond_2
    aput-object p1, v2, v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/n3;->d:Lcom/google/protobuf/p3;

    invoke-virtual {v1}, Lcom/google/protobuf/p3;->h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->c(Lcom/google/protobuf/i5;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->p(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/d4;->d:Lcom/google/protobuf/ob;

    return-object p0
.end method
