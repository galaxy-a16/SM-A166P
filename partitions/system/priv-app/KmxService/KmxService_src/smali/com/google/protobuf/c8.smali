.class public abstract Lcom/google/protobuf/c8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t9;


# static fields
.field public static final a:Lcom/google/protobuf/da;

.field public static final b:Lcom/google/protobuf/ea;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/da;

    invoke-direct {v0}, Lcom/google/protobuf/da;-><init>()V

    sput-object v0, Lcom/google/protobuf/c8;->a:Lcom/google/protobuf/da;

    new-instance v0, Lcom/google/protobuf/ea;

    invoke-direct {v0}, Lcom/google/protobuf/ea;-><init>()V

    sput-object v0, Lcom/google/protobuf/c8;->b:Lcom/google/protobuf/ea;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static L(BBBB[CI)V
    .locals 2

    invoke-static {p1}, Lcom/google/protobuf/c8;->V(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/protobuf/c8;->V(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/google/protobuf/c8;->V(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3f

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p4, p5

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static M(BB[CI)V
    .locals 1

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/c8;->V(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static N(BBB[CI)V
    .locals 2

    invoke-static {p1}, Lcom/google/protobuf/c8;->V(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/c8;->V(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static O(Lcom/google/protobuf/b8;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/j5;->e(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/j5;->e(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static P(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11

    or-int v0, p1, p2

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_10

    add-int v0, p1, p2

    new-array p2, p2, [C

    move v3, v1

    :goto_0
    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-ltz v4, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    aput-char v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_2
    :goto_2
    move v8, v3

    :cond_3
    :goto_3
    if-ge p1, v0, :cond_f

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-ltz p1, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    if-eqz v4, :cond_7

    add-int/lit8 v4, v8, 0x1

    int-to-char p1, p1

    aput-char p1, p2, v8

    move p1, v3

    :goto_5
    move v8, v4

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-ltz v3, :cond_5

    move v4, v2

    goto :goto_6

    :cond_5
    move v4, v1

    :goto_6
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v8, 0x1

    int-to-char v3, v3

    aput-char v3, p2, v8

    goto :goto_5

    :cond_7
    const/16 v4, -0x20

    if-ge p1, v4, :cond_8

    move v4, v2

    goto :goto_7

    :cond_8
    move v4, v1

    :goto_7
    if-eqz v4, :cond_a

    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p1, v3, p2, v8}, Lcom/google/protobuf/c8;->M(BB[CI)V

    move p1, v4

    move v8, v5

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    const/16 v4, -0x10

    if-ge p1, v4, :cond_b

    move v4, v2

    goto :goto_8

    :cond_b
    move v4, v1

    :goto_8
    if-eqz v4, :cond_d

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_c

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p1, v3, v4, p2, v8}, Lcom/google/protobuf/c8;->N(BBB[CI)V

    move p1, v5

    move v8, v6

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_d
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_e

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/google/protobuf/c8;->L(BBBB[CI)V

    add-int/lit8 v8, v10, 0x1

    move p1, v9

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v3, p1

    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static Q(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static R(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/google/protobuf/w8;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/w8;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/google/protobuf/c8;->S(Lcom/google/protobuf/w8;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lcom/google/protobuf/w8;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/protobuf/w8;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    goto :goto_1

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    :goto_1
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    goto :goto_4

    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v3, [B

    array-length v3, v3

    :goto_4
    if-ge v2, v3, :cond_4

    packed-switch v1, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    iget-object v3, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    goto :goto_6

    :goto_5
    iget-object v3, p0, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v3, [B

    aget-byte v3, v3, v2

    :goto_6
    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_3

    const/16 v5, 0x20

    if-lt v3, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v3, v5, :cond_0

    goto :goto_7

    :pswitch_3
    const-string v3, "\\r"

    goto :goto_8

    :pswitch_4
    const-string v3, "\\f"

    goto :goto_8

    :pswitch_5
    const-string v3, "\\v"

    goto :goto_8

    :pswitch_6
    const-string v3, "\\n"

    goto :goto_8

    :pswitch_7
    const-string v3, "\\t"

    goto :goto_8

    :pswitch_8
    const-string v3, "\\b"

    goto :goto_8

    :pswitch_9
    const-string v3, "\\a"

    goto :goto_8

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v3, 0x3

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    :goto_7
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1
    const-string v3, "\\\\"

    goto :goto_8

    :cond_2
    const-string v3, "\\\'"

    goto :goto_8

    :cond_3
    const-string v3, "\\\""

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static T(Lcom/google/protobuf/t8;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n3;

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/google/protobuf/t8;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/n3;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/google/protobuf/n3;->q()Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/t8;

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/c8;->e0(Ljava/lang/String;Lcom/google/protobuf/n3;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/protobuf/c8;->T(Lcom/google/protobuf/t8;Ljava/lang/String;Ljava/util/ArrayList;)V

    move v3, v5

    goto :goto_2

    :cond_3
    invoke-interface {p0, v2}, Lcom/google/protobuf/t8;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v1, Lcom/google/protobuf/t8;

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/c8;->e0(Ljava/lang/String;Lcom/google/protobuf/n3;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/google/protobuf/c8;->T(Lcom/google/protobuf/t8;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static U(Lcom/google/protobuf/n8;Ljava/util/Map;)I
    .locals 6

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/n3;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/n3;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/n3;->q()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v3

    check-cast v2, Lcom/google/protobuf/n8;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/protobuf/n0;->r(I)I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v5, v3}, Lcom/google/protobuf/n0;->s(II)I

    move-result v3

    add-int/2addr v3, v4

    const/4 v4, 0x3

    invoke-static {v4, v2}, Lcom/google/protobuf/n0;->o(ILcom/google/protobuf/r8;)I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    invoke-static {v3, v2}, Lcom/google/protobuf/j5;->g(Lcom/google/protobuf/i5;Ljava/lang/Object;)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/ob;->a()I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result p0

    :goto_2
    add-int/2addr p0, v1

    return p0
.end method

.method public static V(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static W(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;Lcom/google/protobuf/h3;Lcom/google/protobuf/x8;I)Z
    .locals 7

    invoke-virtual {p3}, Lcom/google/protobuf/h3;->k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    const/16 v0, 0xb

    if-ne p5, v0, :cond_5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->G()I

    move-result p5

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    if-ne p5, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->H()I

    move-result v2

    if-eqz v2, :cond_0

    instance-of p5, p2, Lcom/google/protobuf/q4;

    if-eqz p5, :cond_0

    move-object p5, p2

    check-cast p5, Lcom/google/protobuf/q4;

    invoke-interface {p4, p5, p3, v2}, Lcom/google/protobuf/x8;->e(Lcom/google/protobuf/q4;Lcom/google/protobuf/h3;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1a

    if-ne p5, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p5}, Lcom/google/protobuf/i0;->J(I)Z

    move-result p5

    if-nez p5, :cond_0

    :goto_1
    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Lcom/google/protobuf/i0;->a(I)V

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    sget p0, Lcom/google/protobuf/nb;->f:I

    new-instance p0, Lcom/google/protobuf/mb;

    invoke-direct {p0}, Lcom/google/protobuf/mb;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/protobuf/mb;->a(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/google/protobuf/mb;->b()Lcom/google/protobuf/nb;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/google/protobuf/lb;->c(ILcom/google/protobuf/nb;)V

    :cond_4
    return v3

    :cond_5
    and-int/lit8 v0, p5, 0x7

    ushr-int/lit8 v4, p5, 0x3

    iget-object v5, p3, Lcom/google/protobuf/h3;->j:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-gez v5, :cond_6

    not-int v5, v5

    sub-int/2addr v5, v3

    :cond_6
    if-ltz v5, :cond_7

    iget-object v6, p3, Lcom/google/protobuf/h3;->k:[I

    aget v5, v6, v5

    if-ge v4, v5, :cond_7

    move v5, v3

    goto :goto_2

    :cond_7
    move v5, v2

    :goto_2
    if-eqz v5, :cond_8

    instance-of v5, p2, Lcom/google/protobuf/q4;

    if-eqz v5, :cond_9

    move-object v5, p2

    check-cast v5, Lcom/google/protobuf/q4;

    invoke-interface {p4, v5, p3, v4}, Lcom/google/protobuf/x8;->e(Lcom/google/protobuf/q4;Lcom/google/protobuf/h3;I)V

    goto :goto_3

    :cond_8
    invoke-interface {p4}, Lcom/google/protobuf/x8;->a()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    if-ne v5, v6, :cond_9

    invoke-virtual {p3, v4}, Lcom/google/protobuf/h3;->g(I)Lcom/google/protobuf/n3;

    move-result-object v1

    :cond_9
    :goto_3
    const/4 p3, 0x2

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/j5;->d:Lcom/google/protobuf/j5;

    invoke-virtual {v5}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v5

    if-ne v0, v5, :cond_b

    move v0, v2

    move v5, v0

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->o()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v0, p3, :cond_c

    move v0, v2

    move v5, v3

    goto :goto_5

    :cond_c
    :goto_4
    move v5, v2

    move v0, v3

    :goto_5
    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    invoke-virtual {p1, p5, p0}, Lcom/google/protobuf/lb;->d(ILcom/google/protobuf/i0;)Z

    move-result p0

    return p0

    :cond_d
    invoke-virtual {p0, p5}, Lcom/google/protobuf/i0;->J(I)Z

    move-result p0

    return p0

    :cond_e
    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->y()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/i0;->l(I)I

    move-result p2

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p3

    sget-object p5, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p3, p5, :cond_13

    :cond_f
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->e()I

    move-result p3

    if-lez p3, :cond_14

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->p()I

    move-result p3

    iget-object p5, v1, Lcom/google/protobuf/n3;->d:Lcom/google/protobuf/p3;

    invoke-virtual {p5}, Lcom/google/protobuf/p3;->h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne p5, v0, :cond_10

    move p5, v3

    goto :goto_7

    :cond_10
    move p5, v2

    :goto_7
    if-eqz p5, :cond_11

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p3

    invoke-interface {p4, v1, p3}, Lcom/google/protobuf/x8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    goto :goto_6

    :cond_11
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/protobuf/l3;->e(I)Lcom/google/protobuf/m3;

    move-result-object p5

    if-nez p5, :cond_12

    if-eqz p1, :cond_f

    invoke-virtual {p1, v4, p3}, Lcom/google/protobuf/lb;->g(II)V

    goto :goto_6

    :cond_12
    invoke-interface {p4, v1, p5}, Lcom/google/protobuf/x8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    goto :goto_6

    :cond_13
    :goto_8
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->e()I

    move-result p1

    if-lez p1, :cond_14

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-interface {p4, v1}, Lcom/google/protobuf/x8;->c(Lcom/google/protobuf/n3;)Lcom/google/protobuf/WireFormat$Utf8Validation;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/c8;->d0(Lcom/google/protobuf/i0;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, v1, p1}, Lcom/google/protobuf/x8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    goto :goto_8

    :cond_14
    invoke-virtual {p0, p2}, Lcom/google/protobuf/i0;->k(I)V

    goto :goto_a

    :cond_15
    sget-object p5, Lcom/google/protobuf/u8;->a:[I

    iget-object v0, v1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p5, p5, v0

    if-eq p5, v3, :cond_1d

    if-eq p5, p3, :cond_1c

    const/4 p2, 0x3

    if-eq p5, p2, :cond_16

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-interface {p4, v1}, Lcom/google/protobuf/x8;->c(Lcom/google/protobuf/n3;)Lcom/google/protobuf/WireFormat$Utf8Validation;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/c8;->d0(Lcom/google/protobuf/i0;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_9

    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->p()I

    move-result p0

    iget-object p2, v1, Lcom/google/protobuf/n3;->d:Lcom/google/protobuf/p3;

    invoke-virtual {p2}, Lcom/google/protobuf/p3;->h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object p2

    sget-object p3, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne p2, p3, :cond_17

    move v2, v3

    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual {v1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p0

    goto :goto_9

    :cond_18
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/protobuf/l3;->e(I)Lcom/google/protobuf/m3;

    move-result-object p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    invoke-virtual {p1, v4, p0}, Lcom/google/protobuf/lb;->g(II)V

    :cond_19
    return v3

    :cond_1a
    move-object p0, p2

    :goto_9
    invoke-virtual {v1}, Lcom/google/protobuf/n3;->q()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-interface {p4, v1, p0}, Lcom/google/protobuf/x8;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    goto :goto_a

    :cond_1b
    invoke-interface {p4, v1, p0}, Lcom/google/protobuf/x8;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/x8;

    :goto_a
    return v3

    :cond_1c
    invoke-interface {p4, p0, p2, v1}, Lcom/google/protobuf/x8;->b(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/n3;)V

    return v3

    :cond_1d
    invoke-interface {p4, p0, p2, v1}, Lcom/google/protobuf/x8;->d(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/n3;)V

    return v3
.end method

.method public static X(Lcom/google/protobuf/i0;Lcom/google/protobuf/b8;Lcom/google/protobuf/t4;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 5

    iget-object v0, p1, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->G()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    if-ne v2, v4, :cond_2

    invoke-static {p0, p2, v3, v0}, Lcom/google/protobuf/c8;->Y(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    if-ne v2, v4, :cond_3

    invoke-static {p0, p2, v3, v1}, Lcom/google/protobuf/c8;->Y(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/protobuf/i0;->J(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    new-instance p0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static Y(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/protobuf/a8;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    sget-object p1, Lcom/google/protobuf/j5;->d:Lcom/google/protobuf/j5;

    sget-object p1, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p2, p1}, Lcom/google/protobuf/c8;->d0(Lcom/google/protobuf/i0;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Groups are not allowed in maps."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->p()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p3, Lcom/google/protobuf/r8;

    invoke-interface {p3}, Lcom/google/protobuf/r8;->toBuilder()Lcom/google/protobuf/q8;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-interface {p2}, Lcom/google/protobuf/q8;->buildPartial()Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public static b0(IIILjava/nio/ByteBuffer;)I
    .locals 18

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, -0x13

    const/16 v5, -0x3e

    const/16 v6, -0x10

    const/4 v7, 0x0

    const/16 v8, -0x60

    const/16 v9, -0x20

    const/4 v10, -0x1

    const/16 v11, -0x41

    if-eqz v0, :cond_f

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    int-to-byte v12, v0

    if-ge v12, v9, :cond_3

    if-lt v12, v5, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-le v1, v11, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    return v10

    :cond_3
    if-ge v12, v6, :cond_9

    shr-int/lit8 v0, v0, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-lt v0, v2, :cond_5

    invoke-static {v12, v1}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    return v0

    :cond_4
    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :cond_5
    if-gt v1, v11, :cond_8

    if-ne v12, v9, :cond_6

    if-lt v1, v8, :cond_8

    :cond_6
    if-ne v12, v4, :cond_7

    if-ge v1, v8, :cond_8

    :cond_7
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_f

    :cond_8
    return v10

    :cond_9
    shr-int/lit8 v13, v0, 0x8

    not-int v13, v13

    int-to-byte v13, v13

    if-nez v13, :cond_b

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    if-lt v0, v2, :cond_a

    invoke-static {v12, v13}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    return v0

    :cond_a
    move v1, v7

    goto :goto_1

    :cond_b
    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :goto_1
    if-nez v1, :cond_d

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-lt v1, v2, :cond_c

    invoke-static {v12, v13, v0}, Lcom/google/protobuf/yb;->d(III)I

    move-result v0

    return v0

    :cond_c
    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :cond_d
    if-gt v13, v11, :cond_e

    shl-int/lit8 v12, v12, 0x1c

    add-int/lit8 v13, v13, 0x70

    add-int/2addr v13, v12

    shr-int/lit8 v12, v13, 0x1e

    if-nez v12, :cond_e

    if-gt v1, v11, :cond_e

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_f

    :cond_e
    return v10

    :cond_f
    :goto_2
    sget-object v0, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    add-int/lit8 v0, v2, -0x7

    move v12, v1

    :goto_3
    if-ge v12, v0, :cond_10

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v13

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_10

    add-int/lit8 v12, v12, 0x8

    goto :goto_3

    :cond_10
    sub-int/2addr v12, v1

    add-int/2addr v12, v1

    :cond_11
    :goto_4
    if-lt v12, v2, :cond_12

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gez v1, :cond_21

    if-ge v1, v9, :cond_16

    if-lt v0, v2, :cond_14

    :cond_13
    move v7, v1

    goto/16 :goto_8

    :cond_14
    if-lt v1, v5, :cond_20

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-le v1, v11, :cond_15

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_16
    if-ge v1, v6, :cond_1b

    add-int/lit8 v12, v2, -0x1

    if-lt v0, v12, :cond_17

    goto :goto_5

    :cond_17
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v11, :cond_20

    if-ne v1, v9, :cond_18

    if-lt v0, v8, :cond_20

    :cond_18
    if-ne v1, v4, :cond_19

    if-ge v0, v8, :cond_20

    :cond_19
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_1a

    goto :goto_7

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_1b
    add-int/lit8 v12, v2, -0x2

    if-lt v0, v12, :cond_1f

    :goto_5
    sub-int/2addr v2, v0

    if-eqz v2, :cond_1e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1d

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1c

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/yb;->d(III)I

    move-result v0

    goto :goto_6

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    :goto_6
    move v7, v0

    goto :goto_8

    :cond_1e
    const/16 v0, -0xc

    if-le v1, v0, :cond_13

    goto :goto_7

    :cond_1f
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v11, :cond_20

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_20

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gt v1, v11, :cond_20

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v11, :cond_11

    :cond_20
    :goto_7
    move v7, v10

    :goto_8
    return v7

    :cond_21
    :goto_9
    move v12, v0

    goto/16 :goto_4
.end method

.method public static d0(Lcom/google/protobuf/i0;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/protobuf/dc;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-virtual {p2, p0}, Lcom/google/protobuf/WireFormat$Utf8Validation;->readString(Lcom/google/protobuf/i0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->D()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->C()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->B()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->A()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->H()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->m()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->q()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->r()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->u()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->I()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->v()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->s()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->o()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e0(Ljava/lang/String;Lcom/google/protobuf/n3;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/google/protobuf/n3;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x5b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Lcom/google/protobuf/n8;Ljava/util/Map;Lcom/google/protobuf/n0;)V
    .locals 5

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/n3;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/n3;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/n3;->q()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/n8;

    invoke-virtual {p2, v2, v1}, Lcom/google/protobuf/n0;->K(ILcom/google/protobuf/r8;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v1, p2}, Lcom/google/protobuf/j5;->y(Lcom/google/protobuf/i5;Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/ob;->b(Lcom/google/protobuf/n0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public Z(IIILjava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    add-int/2addr p2, v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/protobuf/c8;->a0(III[B)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/c8;->c0(IIILjava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/c8;->b0(IIILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public abstract a0(III[B)I
.end method

.method public abstract c0(IIILjava/nio/ByteBuffer;)I
.end method
