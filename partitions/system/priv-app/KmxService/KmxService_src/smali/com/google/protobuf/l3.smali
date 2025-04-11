.class public final Lcom/google/protobuf/l3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a7;


# instance fields
.field public a:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/protobuf/p3;

.field public final d:[Lcom/google/protobuf/m3;

.field public final e:[Lcom/google/protobuf/m3;

.field public final f:I

.field public g:Ljava/util/HashMap;

.field public h:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/l3;->g:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/protobuf/l3;->h:Ljava/lang/ref/ReferenceQueue;

    iput-object p1, p0, Lcom/google/protobuf/l3;->a:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lcom/google/protobuf/u3;->a(Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/protobuf/l3;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/protobuf/l3;->c:Lcom/google/protobuf/p3;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/m3;

    iput-object p3, p0, Lcom/google/protobuf/l3;->d:[Lcom/google/protobuf/m3;

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/l3;->d:[Lcom/google/protobuf/m3;

    new-instance v3, Lcom/google/protobuf/m3;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v4

    invoke-direct {v3, v4, p2, p0, v1}, Lcom/google/protobuf/m3;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/l3;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/l3;->d:[Lcom/google/protobuf/m3;

    invoke-virtual {v1}, [Lcom/google/protobuf/m3;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/protobuf/m3;

    iput-object v1, p0, Lcom/google/protobuf/l3;->e:[Lcom/google/protobuf/m3;

    sget-object v2, Lcom/google/protobuf/m3;->e:Lr/i;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/l3;->e:[Lcom/google/protobuf/m3;

    aget-object v4, v3, p3

    aget-object v3, v3, v2

    invoke-virtual {v4}, Lcom/google/protobuf/m3;->getNumber()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/protobuf/m3;->getNumber()I

    move-result v5

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/protobuf/l3;->e:[Lcom/google/protobuf/m3;

    add-int/lit8 p3, p3, 0x1

    aput-object v3, v4, p3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr p3, v1

    iput p3, p0, Lcom/google/protobuf/l3;->f:I

    iget-object v1, p0, Lcom/google/protobuf/l3;->e:[Lcom/google/protobuf/m3;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p1

    invoke-static {v1, p3, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p1, p2, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/j3;->b(Lcom/google/protobuf/q3;)V

    return-void

    :cond_3
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/q3;Ljava/lang/String;Lcom/google/protobuf/g3;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/l3;->c:Lcom/google/protobuf/p3;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/l3;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/l3;->a:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/l3;->a:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public final e(I)Lcom/google/protobuf/m3;
    .locals 6

    sget-object v0, Lcom/google/protobuf/m3;->f:Lm1/e;

    sget-object v1, Lcom/google/protobuf/u3;->a:Ljava/util/logging/Logger;

    iget v1, p0, Lcom/google/protobuf/l3;->f:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/google/protobuf/l3;->e:[Lcom/google/protobuf/m3;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Lm1/e;->j(Ljava/lang/Object;)I

    move-result v5

    if-ge p1, v5, :cond_0

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_0
    if-le p1, v5, :cond_2

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method public final f(I)Lcom/google/protobuf/m3;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l3;->e(I)Lcom/google/protobuf/m3;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/l3;->h:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/l3;->h:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/l3;->g:Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/l3;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/k3;

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/l3;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/m3;

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/google/protobuf/m3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/m3;-><init>(Lcom/google/protobuf/l3;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/google/protobuf/l3;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/k3;

    invoke-direct {v3, p1, v0}, Lcom/google/protobuf/k3;-><init>(ILcom/google/protobuf/m3;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/l3;->g:Ljava/util/HashMap;

    iget v0, v0, Lcom/google/protobuf/k3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/l3;->d:[Lcom/google/protobuf/m3;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
