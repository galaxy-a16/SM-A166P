.class public final Lcom/google/protobuf/j5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/protobuf/j5;


# instance fields
.field public final a:Lcom/google/protobuf/ca;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/protobuf/j5;

    new-instance v1, Lcom/google/protobuf/ca;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/ca;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/j5;-><init>(Lcom/google/protobuf/ca;)V

    invoke-virtual {v0}, Lcom/google/protobuf/j5;->t()V

    sput-object v0, Lcom/google/protobuf/j5;->d:Lcom/google/protobuf/j5;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/google/protobuf/ca;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/protobuf/ca;-><init>(I)V

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/ca;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->t()V

    return-void
.end method

.method public static b(Lcom/google/protobuf/ca;Z)Lcom/google/protobuf/ca;
    .locals 3

    new-instance v0, Lcom/google/protobuf/ca;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/protobuf/ca;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ca;->j()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/google/protobuf/j5;->c(Lcom/google/protobuf/ca;Ljava/util/Map$Entry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/j5;->c(Lcom/google/protobuf/ca;Ljava/util/Map$Entry;Z)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static c(Lcom/google/protobuf/ca;Ljava/util/Map$Entry;Z)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/i5;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_0

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/ca;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/ca;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static e(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/n0;->r(I)I

    move-result p1

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/j5;->f(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 3

    sget-object v0, Lcom/google/protobuf/h5;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of p0, p1, Lcom/google/protobuf/z6;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/protobuf/z6;

    invoke-interface {p1}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/n0;->m(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/n0;->m(I)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/protobuf/n0;->v(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result p0

    return p0

    :pswitch_4
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/n0;->e(Lcom/google/protobuf/ByteString;)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, [B

    sget-object p0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    array-length p0, p1

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :pswitch_5
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/n0;->e(Lcom/google/protobuf/ByteString;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/n0;->q(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lcom/google/protobuf/r8;

    sget-object p0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lcom/google/protobuf/r8;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :pswitch_7
    check-cast p1, Lcom/google/protobuf/r8;

    sget-object p0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lcom/google/protobuf/r8;->getSerializedSize()I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    return v0

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto :goto_1

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/n0;->m(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/n0;->v(J)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/n0;->v(J)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    :goto_0
    sget-object p0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    const/4 p0, 0x4

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    :goto_1
    sget-object p0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    const/16 p0, 0x8

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lcom/google/protobuf/i5;Ljava/lang/Object;)I
    .locals 3

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->p()Z

    move-result p0

    const/4 v2, 0x0

    check-cast p1, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/protobuf/j5;->f(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/google/protobuf/n0;->t(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/j5;->e(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/j5;->e(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/util/Map$Entry;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/i5;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/protobuf/n3;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->i()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->q()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->p()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i5;

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    check-cast v1, Lcom/google/protobuf/r8;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/n0;->r(I)I

    move-result v0

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    invoke-static {v2, p0}, Lcom/google/protobuf/n0;->s(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/google/protobuf/n0;->o(ILcom/google/protobuf/r8;)I

    move-result v0

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/protobuf/j5;->g(Lcom/google/protobuf/i5;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static q(Ljava/util/Map$Entry;)Z
    .locals 3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/i5;

    check-cast v0, Lcom/google/protobuf/n3;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->i()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Wrong object type used with protocol message reflection."

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/google/protobuf/s8;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/protobuf/s8;

    invoke-interface {v0}, Lcom/google/protobuf/s8;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v0, p0, Lcom/google/protobuf/s8;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/protobuf/s8;

    invoke-interface {p0}, Lcom/google/protobuf/s8;->isInitialized()Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static r(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/protobuf/h5;->a:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    instance-of p0, p1, Lcom/google/protobuf/r8;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/google/protobuf/k7;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lcom/google/protobuf/z6;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0

    :pswitch_2
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0

    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static v(Lcom/google/protobuf/i5;Ljava/lang/Object;)V
    .locals 4

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/j5;->r(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/google/protobuf/r8;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/n0;->O(II)V

    invoke-interface {p3, p0}, Lcom/google/protobuf/r8;->writeTo(Lcom/google/protobuf/n0;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/n0;->O(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/n0;->O(II)V

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/j5;->x(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static x(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/protobuf/h5;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    instance-of p1, p2, Lcom/google/protobuf/z6;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/protobuf/z6;

    invoke-interface {p2}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->H(I)V

    goto/16 :goto_2

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget-object v0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->S(J)V

    goto/16 :goto_2

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->Q(I)V

    goto/16 :goto_2

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->F(J)V

    goto/16 :goto_2

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->D(I)V

    goto/16 :goto_2

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->Q(I)V

    goto/16 :goto_2

    :pswitch_6
    instance-of p1, p2, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p2, [B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->z(I[B)V

    goto/16 :goto_2

    :pswitch_7
    instance-of p1, p2, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_2

    :goto_1
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/n0;->B(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_2

    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/n0;->N(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    check-cast p2, Lcom/google/protobuf/r8;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/n0;->J(Lcom/google/protobuf/r8;)V

    goto :goto_2

    :pswitch_9
    check-cast p2, Lcom/google/protobuf/r8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p0}, Lcom/google/protobuf/r8;->writeTo(Lcom/google/protobuf/n0;)V

    goto :goto_2

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->x(B)V

    goto :goto_2

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->D(I)V

    goto :goto_2

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->F(J)V

    goto :goto_2

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->H(I)V

    goto :goto_2

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->S(J)V

    goto :goto_2

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->S(J)V

    goto :goto_2

    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n0;->D(I)V

    goto :goto_2

    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n0;->F(J)V

    :goto_2
    return-void

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

.method public static y(Lcom/google/protobuf/i5;Ljava/lang/Object;Lcom/google/protobuf/n0;)V
    .locals 3

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->j()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    invoke-virtual {p2, v1, p0}, Lcom/google/protobuf/n0;->O(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/j5;->f(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Lcom/google/protobuf/n0;->Q(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/j5;->x(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/j5;->w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of p0, p1, Lcom/google/protobuf/k7;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/google/protobuf/k7;

    invoke-virtual {p1}, Lcom/google/protobuf/k7;->a()Lcom/google/protobuf/r8;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/google/protobuf/j5;->w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/j5;->w(Lcom/google/protobuf/n0;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static z(Ljava/util/Map$Entry;Lcom/google/protobuf/n0;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/i5;

    check-cast v0, Lcom/google/protobuf/n3;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->i()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i5;

    check-cast p0, Lcom/google/protobuf/n3;

    invoke-virtual {p0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p0

    check-cast v0, Lcom/google/protobuf/r8;

    invoke-virtual {p1, p0, v0}, Lcom/google/protobuf/n0;->K(ILcom/google/protobuf/r8;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/j5;->y(Lcom/google/protobuf/i5;Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/j5;
    .locals 4

    new-instance v0, Lcom/google/protobuf/j5;

    invoke-direct {v0}, Lcom/google/protobuf/j5;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v2}, Lcom/google/protobuf/ca;->j()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/i5;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/j5;->u(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/i5;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/j5;->u(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/protobuf/j5;->c:Z

    iput-boolean p0, v0, Lcom/google/protobuf/j5;->c:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->a()Lcom/google/protobuf/j5;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/j5;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/protobuf/j5;

    iget-object p1, p1, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    iget-object p0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ca;->g(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/j5;->c:Z

    iget-object p0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/j5;->b(Lcom/google/protobuf/ca;Z)Lcom/google/protobuf/ca;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/protobuf/ca;->d:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/ca;->n()V

    :cond_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/protobuf/ca;->d:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {p0}, Lcom/google/protobuf/ca;->m()I

    move-result p0

    return p0
.end method

.method public final i(Lcom/google/protobuf/i5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ca;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/protobuf/k7;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/protobuf/k7;

    invoke-virtual {p0}, Lcom/google/protobuf/k7;->a()Lcom/google/protobuf/r8;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final j()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v2}, Lcom/google/protobuf/ca;->j()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/j5;->k(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

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

    invoke-static {v0}, Lcom/google/protobuf/j5;->k(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final l(Lcom/google/protobuf/i5;I)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->i(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(Lcom/google/protobuf/i5;)I
    .locals 1

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->i(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v2}, Lcom/google/protobuf/ca;->j()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/i5;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/j5;->g(Lcom/google/protobuf/i5;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/i5;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/j5;->g(Lcom/google/protobuf/i5;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final o(Lcom/google/protobuf/i5;)Z
    .locals 1

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ca;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v2}, Lcom/google/protobuf/ca;->j()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/j5;->q(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/ca;->k()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/protobuf/j5;->q(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final s()Ljava/util/Iterator;
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/j5;->c:Z

    iget-object p0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/j7;

    invoke-virtual {p0}, Lcom/google/protobuf/ca;->f()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ha;

    invoke-virtual {p0}, Lcom/google/protobuf/ha;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/j7;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ca;->f()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ha;

    invoke-virtual {p0}, Lcom/google/protobuf/ha;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final t()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/j5;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {v1}, Lcom/google/protobuf/ca;->j()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/ca;->i(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/ca;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/j5;->b:Z

    return-void
.end method

.method public final u(Lcom/google/protobuf/i5;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/protobuf/j5;->v(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/protobuf/j5;->v(Lcom/google/protobuf/i5;Ljava/lang/Object;)V

    :goto_1
    iget-object p0, p0, Lcom/google/protobuf/j5;->a:Lcom/google/protobuf/ca;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ca;->o(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
