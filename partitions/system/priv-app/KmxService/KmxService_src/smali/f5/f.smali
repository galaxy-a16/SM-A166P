.class public final Lf5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/d;


# static fields
.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Lc5/b;

.field public static final h:Lc5/b;

.field public static final i:Le5/a;


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Lc5/c;

.field public final e:Lf5/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lf5/f;->f:Ljava/nio/charset/Charset;

    const-string v0, "key"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lf5/f;->g:Lc5/b;

    const-string v0, "value"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v3, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lf5/f;->h:Lc5/b;

    new-instance v0, Le5/a;

    invoke-direct {v0, v2}, Le5/a;-><init>(I)V

    sput-object v0, Lf5/f;->i:Le5/a;

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lc5/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf5/g;

    invoke-direct {v0, p0}, Lf5/g;-><init>(Lf5/f;)V

    iput-object v0, p0, Lf5/f;->e:Lf5/g;

    iput-object p1, p0, Lf5/f;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lf5/f;->b:Ljava/util/Map;

    iput-object p3, p0, Lf5/f;->c:Ljava/util/Map;

    iput-object p4, p0, Lf5/f;->d:Lc5/c;

    return-void
.end method

.method public static h(Lc5/b;)I
    .locals 1

    const-class v0, Lf5/d;

    iget-object p0, p0, Lc5/b;->b:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    check-cast p0, Lf5/d;

    if-eqz p0, :cond_0

    check-cast p0, Lf5/a;

    iget p0, p0, Lf5/a;->a:I

    return p0

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lc5/b;Ljava/lang/Object;)Lc5/d;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lf5/f;->d(Lc5/b;Ljava/lang/Object;Z)Lf5/f;

    return-object p0
.end method

.method public final b(Lc5/b;J)Lc5/d;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lf5/f;->f(Lc5/b;JZ)V

    return-object p0
.end method

.method public final c(Lc5/b;I)Lc5/d;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lf5/f;->e(Lc5/b;IZ)V

    return-object p0
.end method

.method public final d(Lc5/b;Ljava/lang/Object;Z)Lf5/f;
    .locals 4

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    return-object p0

    :cond_1
    invoke-static {p1}, Lf5/f;->h(Lc5/b;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lf5/f;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p0, p2}, Lf5/f;->i(I)V

    iget-object p2, p0, Lf5/f;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3, v1}, Lf5/f;->d(Lc5/b;Ljava/lang/Object;Z)Lf5/f;

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lf5/f;->i:Le5/a;

    invoke-virtual {p0, v0, p1, p3, v1}, Lf5/f;->g(Lc5/c;Lc5/b;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    if-eqz p3, :cond_7

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lf5/f;->h(Lc5/b;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    iget-object p1, p0, Lf5/f;->a:Ljava/io/OutputStream;

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    return-object p0

    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p3, :cond_9

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lf5/f;->h(Lc5/b;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    iget-object p1, p0, Lf5/f;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-object p0

    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lf5/f;->f(Lc5/b;JZ)V

    return-object p0

    :cond_b
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lf5/f;->e(Lc5/b;IZ)V

    return-object p0

    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_e

    check-cast p2, [B

    if-eqz p3, :cond_d

    array-length p3, p2

    if-nez p3, :cond_d

    return-object p0

    :cond_d
    invoke-static {p1}, Lf5/f;->h(Lc5/b;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    iget-object p1, p0, Lf5/f;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lf5/f;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/c;

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1, p2, p3}, Lf5/f;->g(Lc5/c;Lc5/b;Ljava/lang/Object;Z)V

    return-object p0

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lf5/f;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/e;

    if-eqz v0, :cond_10

    iget-object v2, p0, Lf5/f;->e:Lf5/g;

    iput-boolean v1, v2, Lf5/g;->a:Z

    iput-object p1, v2, Lf5/g;->c:Lc5/b;

    iput-boolean p3, v2, Lf5/g;->b:Z

    invoke-interface {v0, p2, v2}, Lc5/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_10
    instance-of v0, p2, Lf5/c;

    if-eqz v0, :cond_11

    check-cast p2, Lf5/c;

    invoke-interface {p2}, Lf5/c;->getNumber()I

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lf5/f;->e(Lc5/b;IZ)V

    return-object p0

    :cond_11
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lf5/f;->e(Lc5/b;IZ)V

    return-object p0

    :cond_12
    iget-object v0, p0, Lf5/f;->d:Lc5/c;

    invoke-virtual {p0, v0, p1, p2, p3}, Lf5/f;->g(Lc5/c;Lc5/b;Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public final e(Lc5/b;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-class p3, Lf5/d;

    iget-object p1, p1, Lc5/b;->b:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lf5/d;

    if-eqz p1, :cond_4

    sget-object p3, Lf5/e;->a:[I

    check-cast p1, Lf5/a;

    iget-object v0, p1, Lf5/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    iget p1, p1, Lf5/a;->a:I

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    shl-int/2addr p1, v1

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    iget-object p0, p0, Lf5/f;->a:Ljava/io/OutputStream;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    shl-int/lit8 p1, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    goto :goto_0

    :cond_3
    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    invoke-virtual {p0, p2}, Lf5/f;->i(I)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Field has no @Protobuf config"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lc5/b;JZ)V
    .locals 3

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-class p4, Lf5/d;

    iget-object p1, p1, Lc5/b;->b:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lf5/d;

    if-eqz p1, :cond_4

    sget-object p4, Lf5/e;->a:[I

    check-cast p1, Lf5/a;

    iget-object v0, p1, Lf5/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    iget p1, p1, Lf5/a;->a:I

    if-eq p4, v0, :cond_3

    const/4 v2, 0x2

    if-eq p4, v2, :cond_2

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    iget-object p0, p0, Lf5/f;->a:Ljava/io/OutputStream;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    shl-long v0, p2, v0

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lf5/f;->j(J)V

    goto :goto_0

    :cond_3
    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lf5/f;->i(I)V

    invoke-virtual {p0, p2, p3}, Lf5/f;->j(J)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Field has no @Protobuf config"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lc5/c;Lc5/b;Ljava/lang/Object;Z)V
    .locals 5

    new-instance v0, Lf5/b;

    invoke-direct {v0}, Lf5/b;-><init>()V

    :try_start_0
    iget-object v1, p0, Lf5/f;->a:Ljava/io/OutputStream;

    iput-object v0, p0, Lf5/f;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, p3, p0}, Lc5/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lf5/f;->a:Ljava/io/OutputStream;

    iget-wide v1, v0, Lf5/b;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_0

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lf5/f;->h(Lc5/b;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lf5/f;->i(I)V

    invoke-virtual {p0, v1, v2}, Lf5/f;->j(J)V

    invoke-interface {p1, p3, p0}, Lc5/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    iput-object v1, p0, Lf5/f;->a:Ljava/io/OutputStream;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final i(I)V
    .locals 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf5/f;->a:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf5/f;->a:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final j(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf5/f;->a:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf5/f;->a:Ljava/io/OutputStream;

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
