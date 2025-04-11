.class public final Lcom/google/protobuf/h3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/protobuf/p3;

.field public final d:[Lcom/google/protobuf/h3;

.field public final e:[Lcom/google/protobuf/l3;

.field public final f:[Lcom/google/protobuf/n3;

.field public final g:[Lcom/google/protobuf/n3;

.field public final h:[Lcom/google/protobuf/n3;

.field public final i:[Lcom/google/protobuf/s3;

.field public final j:[I

.field public final k:[I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;)V
    .locals 9

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/protobuf/u3;->a(Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/protobuf/h3;->c:Lcom/google/protobuf/p3;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/s3;

    goto :goto_0

    .line 1
    :cond_0
    sget-object p3, Lcom/google/protobuf/u3;->g:[Lcom/google/protobuf/s3;

    .line 2
    :goto_0
    iput-object p3, p0, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    const/4 p3, 0x0

    move v0, p3

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    new-instance v2, Lcom/google/protobuf/s3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, v0}, Lcom/google/protobuf/s3;-><init>(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/h3;

    goto :goto_2

    .line 3
    :cond_2
    sget-object v0, Lcom/google/protobuf/u3;->c:[Lcom/google/protobuf/h3;

    .line 4
    :goto_2
    iput-object v0, p0, Lcom/google/protobuf/h3;->d:[Lcom/google/protobuf/h3;

    move v0, p3

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/h3;->d:[Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/h3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0}, Lcom/google/protobuf/h3;-><init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l3;

    goto :goto_4

    .line 5
    :cond_4
    sget-object v0, Lcom/google/protobuf/u3;->e:[Lcom/google/protobuf/l3;

    .line 6
    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/h3;->e:[Lcom/google/protobuf/l3;

    move v0, p3

    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/h3;->e:[Lcom/google/protobuf/l3;

    new-instance v2, Lcom/google/protobuf/l3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0}, Lcom/google/protobuf/l3;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/n3;

    goto :goto_6

    .line 7
    :cond_6
    sget-object v0, Lcom/google/protobuf/u3;->d:[Lcom/google/protobuf/n3;

    .line 8
    :goto_6
    iput-object v0, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    move v0, p3

    :goto_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v7, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    new-instance v8, Lcom/google/protobuf/n3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/n3;-><init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;IZ)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    invoke-virtual {v0}, [Lcom/google/protobuf/n3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/n3;

    goto :goto_8

    .line 9
    :cond_8
    sget-object v0, Lcom/google/protobuf/u3;->d:[Lcom/google/protobuf/n3;

    .line 10
    :goto_8
    iput-object v0, p0, Lcom/google/protobuf/h3;->g:[Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/n3;

    goto :goto_9

    .line 11
    :cond_9
    sget-object v0, Lcom/google/protobuf/u3;->d:[Lcom/google/protobuf/n3;

    .line 12
    :goto_9
    iput-object v0, p0, Lcom/google/protobuf/h3;->h:[Lcom/google/protobuf/n3;

    move v0, p3

    :goto_a
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v7, p0, Lcom/google/protobuf/h3;->h:[Lcom/google/protobuf/n3;

    new-instance v8, Lcom/google/protobuf/n3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/n3;-><init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;IZ)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    move v0, p3

    :goto_b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    aget-object v1, v1, v0

    .line 13
    iget v2, v1, Lcom/google/protobuf/s3;->f:I

    .line 14
    new-array v2, v2, [Lcom/google/protobuf/n3;

    .line 15
    iput-object v2, v1, Lcom/google/protobuf/s3;->g:[Lcom/google/protobuf/n3;

    .line 16
    iput p3, v1, Lcom/google/protobuf/s3;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    move v0, p3

    .line 17
    :goto_c
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    aget-object v1, v1, v0

    .line 18
    iget-object v2, v1, Lcom/google/protobuf/n3;->j:Lcom/google/protobuf/s3;

    if-eqz v2, :cond_c

    .line 19
    iget-object v3, v2, Lcom/google/protobuf/s3;->g:[Lcom/google/protobuf/n3;

    .line 20
    iget v4, v2, Lcom/google/protobuf/s3;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lcom/google/protobuf/s3;->f:I

    .line 21
    aput-object v1, v3, v4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    array-length v1, v0

    move v2, p3

    move v3, v2

    :goto_d
    if-ge v2, v1, :cond_10

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/protobuf/s3;->e()Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_e
    if-gtz v3, :cond_f

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_f
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Synthetic oneofs must come last."

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/q3;Ljava/lang/String;Lcom/google/protobuf/g3;)V

    throw p1

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    array-length v0, v0

    .line 22
    iget-object p2, p2, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    .line 23
    invoke-virtual {p2, p0}, Lcom/google/protobuf/j3;->b(Lcom/google/protobuf/q3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

    move-result p2

    if-lez p2, :cond_12

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/protobuf/h3;->j:[I

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/protobuf/h3;->k:[I

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    iget-object v0, p0, Lcom/google/protobuf/h3;->j:[I

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v1

    aput v1, v0, p3

    iget-object v0, p0, Lcom/google/protobuf/h3;->k:[I

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result p2

    aput p2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_f

    :cond_11
    iget-object p1, p0, Lcom/google/protobuf/h3;->j:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iget-object p0, p0, Lcom/google/protobuf/h3;->k:[I

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    goto :goto_10

    .line 24
    :cond_12
    sget-object p1, Lcom/google/protobuf/u3;->b:[I

    .line 25
    iput-object p1, p0, Lcom/google/protobuf/h3;->j:[I

    iput-object p1, p0, Lcom/google/protobuf/h3;->k:[I

    :goto_10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v1, p1

    :goto_0
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/google/protobuf/s0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Lcom/google/protobuf/s0;->b:Ljava/lang/Object;

    iget v1, v3, Lcom/google/protobuf/s0;->a:I

    const/4 v4, 0x1

    or-int/2addr v1, v4

    iput v1, v3, Lcom/google/protobuf/s0;->a:I

    invoke-virtual {v3}, Lcom/google/protobuf/d6;->onChanged()V

    .line 27
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/google/protobuf/u0;

    move-result-object v1

    .line 28
    iput v4, v1, Lcom/google/protobuf/u0;->b:I

    .line 29
    iget v5, v1, Lcom/google/protobuf/u0;->a:I

    or-int/2addr v5, v4

    iput v5, v1, Lcom/google/protobuf/u0;->a:I

    invoke-virtual {v1}, Lcom/google/protobuf/d6;->onChanged()V

    const/high16 v5, 0x20000000

    .line 30
    iput v5, v1, Lcom/google/protobuf/u0;->c:I

    iget v6, v1, Lcom/google/protobuf/u0;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v1, Lcom/google/protobuf/u0;->a:I

    invoke-virtual {v1}, Lcom/google/protobuf/d6;->onChanged()V

    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/u0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 32
    iget-object v6, v3, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/s0;->d()V

    iget-object v6, v3, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    .line 33
    :goto_1
    invoke-virtual {v3}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    iput-object v1, p0, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iput-object p1, p0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    .line 35
    sget-object p1, Lcom/google/protobuf/u3;->c:[Lcom/google/protobuf/h3;

    .line 36
    iput-object p1, p0, Lcom/google/protobuf/h3;->d:[Lcom/google/protobuf/h3;

    .line 37
    sget-object p1, Lcom/google/protobuf/u3;->e:[Lcom/google/protobuf/l3;

    .line 38
    iput-object p1, p0, Lcom/google/protobuf/h3;->e:[Lcom/google/protobuf/l3;

    .line 39
    sget-object p1, Lcom/google/protobuf/u3;->d:[Lcom/google/protobuf/n3;

    .line 40
    iput-object p1, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    iput-object p1, p0, Lcom/google/protobuf/h3;->g:[Lcom/google/protobuf/n3;

    iput-object p1, p0, Lcom/google/protobuf/h3;->h:[Lcom/google/protobuf/n3;

    .line 41
    sget-object p1, Lcom/google/protobuf/u3;->g:[Lcom/google/protobuf/s3;

    .line 42
    iput-object p1, p0, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    new-instance p1, Lcom/google/protobuf/p3;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/p3;-><init>(Ljava/lang/String;Lcom/google/protobuf/h3;)V

    iput-object p1, p0, Lcom/google/protobuf/h3;->c:Lcom/google/protobuf/p3;

    new-array p1, v4, [I

    aput v4, p1, v2

    iput-object p1, p0, Lcom/google/protobuf/h3;->j:[I

    new-array p1, v4, [I

    aput v5, p1, v2

    iput-object p1, p0, Lcom/google/protobuf/h3;->k:[I

    return-void

    .line 43
    :cond_2
    invoke-static {v1}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0

    .line 44
    :cond_3
    invoke-static {v1}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->c:Lcom/google/protobuf/p3;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, Lcom/google/protobuf/h3;->d:[Lcom/google/protobuf/h3;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/google/protobuf/h3;->e()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/protobuf/n3;->e(Lcom/google/protobuf/n3;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/h3;->g:[Lcom/google/protobuf/n3;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v1, v2

    :goto_2
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    if-ge v3, v4, :cond_3

    aget-object v1, v0, v1

    aget-object v4, v0, v3

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v6

    if-eq v5, v6, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Field number "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has already been used in \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object v2, v2, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" by field \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/q3;Ljava/lang/String;Lcom/google/protobuf/g3;)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/google/protobuf/h3;->h:[Lcom/google/protobuf/n3;

    array-length v0, p0

    :goto_3
    if-ge v2, v0, :cond_4

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/google/protobuf/n3;->e(Lcom/google/protobuf/n3;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final f(Ljava/lang/String;)Lcom/google/protobuf/n3;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/h3;->c:Lcom/google/protobuf/p3;

    iget-object v0, v0, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j3;->c(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/q3;

    move-result-object p0

    instance-of p1, p0, Lcom/google/protobuf/n3;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/protobuf/n3;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(I)Lcom/google/protobuf/n3;
    .locals 6

    iget-object p0, p0, Lcom/google/protobuf/h3;->g:[Lcom/google/protobuf/n3;

    array-length v0, p0

    sget-object v1, Lcom/google/protobuf/n3;->m:Landroidx/work/impl/x;

    sget-object v2, Lcom/google/protobuf/u3;->a:Ljava/util/logging/Logger;

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_1

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Landroidx/work/impl/x;->i(Ljava/lang/Object;)I

    move-result v5

    if-ge p1, v5, :cond_0

    add-int/lit8 v0, v3, -0x1

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

.method public final h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->e:[Lcom/google/protobuf/l3;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->d:[Lcom/google/protobuf/h3;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 7

    iput-object p1, p0, Lcom/google/protobuf/h3;->a:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/h3;->d:[Lcom/google/protobuf/h3;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/h3;->l(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v3

    iput-object v3, v2, Lcom/google/protobuf/s3;->b:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/h3;->e:[Lcom/google/protobuf/l3;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    iput-object v3, v2, Lcom/google/protobuf/l3;->a:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move v4, v0

    :goto_3
    iget-object v5, v2, Lcom/google/protobuf/l3;->d:[Lcom/google/protobuf/m3;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget-object v5, v5, v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v6

    iput-object v6, v5, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/h3;->f:[Lcom/google/protobuf/n3;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    iput-object v3, v2, Lcom/google/protobuf/n3;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    iget-object v1, p0, Lcom/google/protobuf/h3;->h:[Lcom/google/protobuf/n3;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    iput-object v2, v1, Lcom/google/protobuf/n3;->b:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method
