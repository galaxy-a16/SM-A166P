.class public final Lc2/g;
.super Lx1/b;
.source "SourceFile"


# static fields
.field public static final A0:[I

.field public static final r0:I

.field public static final s0:I

.field public static final t0:I

.field public static final u0:I

.field public static final v0:I

.field public static final w0:I

.field public static final x0:I

.field public static final y0:I

.field public static final z0:[I


# instance fields
.field public final Z:Lcom/fasterxml/jackson/core/j;

.field public final l0:Le2/b;

.field public m0:[I

.field public n0:Z

.field public o0:I

.field public final p0:Ljava/io/DataInput;

.field public q0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->r0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->s0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->t0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->u0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->v0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->w0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->x0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/g;->y0:I

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->f:[I

    sput-object v0, Lc2/g;->z0:[I

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->e:[I

    sput-object v0, Lc2/g;->A0:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/DataInput;Lcom/fasterxml/jackson/core/j;Le2/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Lc2/g;->m0:[I

    iput-object p4, p0, Lc2/g;->Z:Lcom/fasterxml/jackson/core/j;

    iput-object p5, p0, Lc2/g;->l0:Le2/b;

    iput-object p3, p0, Lc2/g;->p0:Ljava/io/DataInput;

    iput p6, p0, Lc2/g;->q0:I

    return-void
.end method

.method public static final T2(II)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x3

    const/4 v0, -0x1

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static m2([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A2(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final B1()I
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lx1/c;->B1()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lx1/b;->S1()I

    move-result p0

    return p0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lx1/b;->Y1()V

    :cond_3
    iget p0, p0, Lx1/b;->I:I

    return p0
.end method

.method public final B2(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final C1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/g;->n0:Z

    invoke-virtual {p0}, Lc2/g;->j2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final C2(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lc2/g;->g2(I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unrecognized token \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\': was expecting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final D2()I
    .locals 8

    iget v0, p0, Lc2/g;->q0:I

    iget-object v1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    if-gez v0, :cond_0

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lc2/g;->q0:I

    :goto_0
    const/16 v2, 0x3a

    const/16 v3, 0x9

    const/16 v4, 0x23

    const/16 v5, 0x2f

    const/4 v6, 0x1

    const/16 v7, 0x20

    if-ne v0, v2, :cond_8

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-le v0, v7, :cond_3

    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v6}, Lc2/g;->E2(IZ)I

    move-result p0

    return p0

    :cond_3
    if-eq v0, v7, :cond_4

    if-ne v0, v3, :cond_7

    :cond_4
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-le v0, v7, :cond_7

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_5

    goto :goto_2

    :cond_5
    return v0

    :cond_6
    :goto_2
    invoke-virtual {p0, v0, v6}, Lc2/g;->E2(IZ)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0, v0, v6}, Lc2/g;->E2(IZ)I

    move-result p0

    return p0

    :cond_8
    if-eq v0, v7, :cond_9

    if-ne v0, v3, :cond_a

    :cond_9
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :cond_a
    if-ne v0, v2, :cond_12

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-le v0, v7, :cond_d

    if-eq v0, v5, :cond_c

    if-ne v0, v4, :cond_b

    goto :goto_3

    :cond_b
    return v0

    :cond_c
    :goto_3
    invoke-virtual {p0, v0, v6}, Lc2/g;->E2(IZ)I

    move-result p0

    return p0

    :cond_d
    if-eq v0, v7, :cond_e

    if-ne v0, v3, :cond_11

    :cond_e
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-le v0, v7, :cond_11

    if-eq v0, v5, :cond_10

    if-ne v0, v4, :cond_f

    goto :goto_4

    :cond_f
    return v0

    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v6}, Lc2/g;->E2(IZ)I

    move-result p0

    return p0

    :cond_11
    invoke-virtual {p0, v0, v6}, Lc2/g;->E2(IZ)I

    move-result p0

    return p0

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc2/g;->E2(IZ)I

    move-result p0

    return p0
.end method

.method public final E2(IZ)I
    .locals 3

    :goto_0
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-le p1, v0, :cond_5

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lc2/g;->F2()V

    goto :goto_2

    :cond_0
    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v2, Lc2/g;->y0:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc2/g;->G2()V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    return p1

    :cond_3
    const/16 p2, 0x3a

    if-ne p1, p2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    const-string p2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, p1, p2}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    :cond_6
    iget p1, p0, Lx1/b;->u:I

    add-int/2addr p1, v1

    iput p1, p0, Lx1/b;->u:I

    :cond_7
    :goto_2
    iget-object p1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    goto :goto_0
.end method

.method public final F2()V
    .locals 8

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Lc2/g;->x0:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x2f

    if-eqz v0, :cond_9

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lc2/g;->G2()V

    goto :goto_1

    :cond_0
    const/16 v4, 0x2a

    if-ne v3, v4, :cond_8

    sget-object v5, Lcom/fasterxml/jackson/core/io/b;->i:[I

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    :cond_2
    aget v6, v5, v3

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    const/16 v7, 0xa

    if-eq v6, v7, :cond_4

    const/16 v7, 0xd

    if-eq v6, v7, :cond_4

    if-ne v6, v4, :cond_3

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    if-ne v3, v2, :cond_2

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, v3}, Lc2/g;->z2(I)V

    throw v1

    :cond_4
    iget v3, p0, Lx1/b;->u:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lx1/b;->u:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lc2/g;->K2()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lc2/g;->J2()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lc2/g;->I2()V

    goto :goto_0

    :cond_8
    const-string v0, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v3, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1

    :cond_9
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v2, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1
.end method

.method public final G2()V
    .locals 4

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->i:[I

    :cond_0
    :goto_0
    iget-object v1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lc2/g;->z2(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    return-void

    :cond_3
    invoke-virtual {p0}, Lc2/g;->K2()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lc2/g;->J2()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lc2/g;->I2()V

    goto :goto_0
.end method

.method public final H2()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/g;->n0:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    sget-object v1, Lc2/g;->z0:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const-string v1, "string value"

    invoke-virtual {p0, v0, v1}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lc2/g;->z2(I)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-virtual {p0}, Lc2/g;->K2()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lc2/g;->J2()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lc2/g;->I2()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lc2/g;->N1()C

    goto :goto_0
.end method

.method public final I0()Lcom/fasterxml/jackson/core/util/g;
    .locals 0

    sget-object p0, Lx1/b;->Y:Lcom/fasterxml/jackson/core/util/g;

    return-object p0
.end method

.method public final I2()V
    .locals 3

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lc2/g;->B2(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lx1/b;->G:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current token ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lc2/g;->f2(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lx1/b;->G:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc2/g;->n0:Z

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object v0, p0, Lx1/b;->G:[B

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lx1/b;->Q1()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    invoke-virtual {p0}, Lc2/g;->K0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lx1/c;->o1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p1

    iput-object p1, p0, Lx1/b;->G:[B

    :cond_3
    :goto_1
    iget-object p0, p0, Lx1/b;->G:[B

    return-object p0
.end method

.method public final J1()V
    .locals 0

    return-void
.end method

.method public final J2()V
    .locals 5

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v2, v4, :cond_1

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lc2/g;->B2(I)V

    throw v3

    :cond_1
    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Lc2/g;->B2(I)V

    throw v3
.end method

.method public final K0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v2, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/g;->n0:Z

    invoke-virtual {p0}, Lc2/g;->j2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 p0, 0x6

    if-eq v1, p0, :cond_3

    const/4 p0, 0x7

    if-eq v1, p0, :cond_3

    const/16 p0, 0x8

    if-eq v1, p0, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final K2()V
    .locals 5

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v2, v4, :cond_2

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v4, :cond_1

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lc2/g;->B2(I)V

    throw v3

    :cond_1
    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Lc2/g;->B2(I)V

    throw v3

    :cond_2
    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Lc2/g;->B2(I)V

    throw v3
.end method

.method public final L0()[C
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lc2/g;->n0:Z

    invoke-virtual {p0}, Lc2/g;->k2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lx1/b;->E:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, v0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lx1/b;->C:[C

    if-nez v3, :cond_3

    iget-object v3, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/d;->c(I)[C

    move-result-object v3

    iput-object v3, p0, Lx1/b;->C:[C

    goto :goto_0

    :cond_3
    array-length v3, v3

    if-ge v3, v1, :cond_4

    new-array v3, v1, [C

    iput-object v3, p0, Lx1/b;->C:[C

    :cond_4
    :goto_0
    iget-object v3, p0, Lx1/b;->C:[C

    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/b;->E:Z

    :cond_5
    iget-object p0, p0, Lx1/b;->C:[C

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final L2()I
    .locals 3

    iget v0, p0, Lc2/g;->q0:I

    iget-object v1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lc2/g;->q0:I

    :goto_1
    const/16 v2, 0x20

    if-le v0, v2, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lc2/g;->M2(I)I

    move-result p0

    return p0

    :cond_4
    const/16 v2, 0xd

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    :cond_5
    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    goto :goto_0
.end method

.method public final M0()I
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    iget-object v3, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lc2/g;->n0:Z

    invoke-virtual {p0}, Lc2/g;->k2()V

    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result p0

    return p0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    array-length p0, p0

    return p0

    :cond_4
    return v2
.end method

.method public final M2(I)I
    .locals 3

    :goto_0
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-le p1, v0, :cond_3

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lc2/g;->F2()V

    goto :goto_2

    :cond_0
    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v2, Lc2/g;->y0:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc2/g;->G2()V

    :goto_1
    if-nez v1, :cond_5

    :cond_2
    return p1

    :cond_3
    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    :cond_4
    iget p1, p0, Lx1/b;->u:I

    add-int/2addr p1, v1

    iput p1, p0, Lx1/b;->u:I

    :cond_5
    :goto_2
    iget-object p1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    goto :goto_0
.end method

.method public final N0()I
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc2/g;->n0:Z

    invoke-virtual {p0}, Lc2/g;->k2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->o()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final N1()C
    .locals 5

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_8

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_8

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_8

    const/16 v2, 0x62

    if-eq v1, v2, :cond_7

    const/16 v2, 0x66

    if-eq v1, v2, :cond_6

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x72

    if-eq v1, v2, :cond_4

    const/16 v2, 0x74

    if-eq v1, v2, :cond_3

    const/16 v2, 0x75

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lc2/g;->g2(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lx1/b;->R1(C)V

    return v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v4

    if-ltz v4, :cond_1

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v3, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    int-to-char p0, v2

    return p0

    :cond_3
    const/16 p0, 0x9

    return p0

    :cond_4
    const/16 p0, 0xd

    return p0

    :cond_5
    const/16 p0, 0xa

    return p0

    :cond_6
    const/16 p0, 0xc

    return p0

    :cond_7
    const/16 p0, 0x8

    return p0

    :cond_8
    int-to-char p0, v1

    return p0
.end method

.method public final N2()V
    .locals 2

    iget v0, p0, Lc2/g;->q0:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lc2/g;->q0:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    :cond_1
    return-void

    :cond_2
    const-string v1, "Expected space separating root-level values"

    invoke-virtual {p0, v0, v1}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final O()Lcom/fasterxml/jackson/core/j;
    .locals 0

    iget-object p0, p0, Lc2/g;->Z:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public final O0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    iget v6, p0, Lx1/b;->x:I

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v8
.end method

.method public final O2(II[I)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    shl-int/lit8 v4, v1, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    const/4 v7, 0x3

    if-ge v2, v5, :cond_0

    add-int/lit8 v8, v1, -0x1

    aget v9, v3, v8

    rsub-int/lit8 v10, v2, 0x4

    shl-int/2addr v10, v7

    shl-int v10, v9, v10

    aput v10, v3, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v8, v0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v4, :cond_e

    shr-int/lit8 v13, v11, 0x2

    aget v13, v3, v13

    and-int/lit8 v14, v11, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v7

    shr-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0x7f

    if-le v13, v14, :cond_b

    and-int/lit16 v14, v13, 0xe0

    const/16 v15, 0xc0

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-ne v14, v15, :cond_1

    and-int/lit8 v13, v13, 0x1f

    move v14, v5

    goto :goto_2

    :cond_1
    and-int/lit16 v14, v13, 0xf0

    const/16 v15, 0xe0

    if-ne v14, v15, :cond_2

    and-int/lit8 v13, v13, 0xf

    const/4 v14, 0x2

    goto :goto_2

    :cond_2
    and-int/lit16 v14, v13, 0xf8

    const/16 v15, 0xf0

    if-ne v14, v15, :cond_a

    and-int/lit8 v13, v13, 0x7

    move v14, v7

    :goto_2
    add-int v15, v11, v14

    if-gt v15, v4, :cond_9

    shr-int/lit8 v15, v11, 0x2

    aget v15, v3, v15

    and-int/lit8 v17, v11, 0x3

    rsub-int/lit8 v17, v17, 0x3

    shl-int/lit8 v17, v17, 0x3

    shr-int v15, v15, v17

    add-int/lit8 v11, v11, 0x1

    and-int/lit16 v6, v15, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_8

    shl-int/lit8 v6, v13, 0x6

    and-int/lit8 v13, v15, 0x3f

    or-int/2addr v6, v13

    if-le v14, v5, :cond_6

    shr-int/lit8 v5, v11, 0x2

    aget v5, v3, v5

    and-int/lit8 v13, v11, 0x3

    const/4 v15, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v15

    shr-int/2addr v5, v13

    add-int/lit8 v11, v11, 0x1

    and-int/lit16 v13, v5, 0xc0

    if-ne v13, v7, :cond_5

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    const/4 v6, 0x2

    if-le v14, v6, :cond_4

    shr-int/lit8 v6, v11, 0x2

    aget v6, v3, v6

    and-int/lit8 v13, v11, 0x3

    const/16 v18, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/lit8 v13, v13, 0x3

    shr-int/2addr v6, v13

    add-int/lit8 v11, v11, 0x1

    and-int/lit16 v13, v6, 0xc0

    if-ne v13, v7, :cond_3

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    move v13, v5

    goto :goto_3

    :cond_3
    and-int/lit16 v1, v6, 0xff

    invoke-virtual {v0, v1}, Lc2/g;->B2(I)V

    throw v16

    :cond_4
    const/16 v18, 0x3

    move v13, v5

    move v5, v6

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v5}, Lc2/g;->B2(I)V

    throw v16

    :cond_6
    const/16 v18, 0x3

    move v13, v6

    :goto_3
    const/4 v5, 0x2

    :goto_4
    if-le v14, v5, :cond_c

    const/high16 v5, 0x10000

    sub-int/2addr v13, v5

    array-length v5, v10

    if-lt v12, v5, :cond_7

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v5

    move-object v10, v5

    :cond_7
    add-int/lit8 v5, v12, 0x1

    shr-int/lit8 v6, v13, 0xa

    const v7, 0xd800

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v10, v12

    and-int/lit16 v6, v13, 0x3ff

    const v7, 0xdc00

    or-int v13, v6, v7

    move v12, v5

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v15}, Lc2/g;->B2(I)V

    throw v16

    :cond_9
    const-string v1, " in field name"

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v16

    :cond_a
    invoke-virtual {v0, v13}, Lc2/g;->A2(I)V

    throw v16

    :cond_b
    move/from16 v18, v7

    :cond_c
    :goto_5
    array-length v5, v10

    if-lt v12, v5, :cond_d

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v5

    move-object v10, v5

    :cond_d
    add-int/lit8 v5, v12, 0x1

    int-to-char v6, v13

    aput-char v6, v10, v12

    move v12, v5

    move/from16 v7, v18

    const/4 v5, 0x4

    goto/16 :goto_1

    :cond_e
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v5, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, 0x4

    if-ge v2, v5, :cond_f

    add-int/lit8 v2, v1, -0x1

    aput v9, v3, v2

    :cond_f
    iget-object v0, v0, Lc2/g;->l0:Le2/b;

    invoke-virtual {v0, v4, v3, v1}, Le2/b;->e(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P2(II)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Lc2/g;->T2(II)I

    move-result p1

    iget-object v0, p0, Lc2/g;->l0:Le2/b;

    invoke-virtual {v0, p1}, Le2/b;->h(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc2/g;->m0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc2/g;->O2(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()I
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lx1/c;->B1()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lx1/b;->S1()I

    move-result p0

    return p0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lx1/b;->Y1()V

    :cond_3
    iget p0, p0, Lx1/b;->I:I

    return p0
.end method

.method public final Q2(III)Ljava/lang/String;
    .locals 2

    invoke-static {p2, p3}, Lc2/g;->T2(II)I

    move-result p2

    iget-object v0, p0, Lc2/g;->l0:Le2/b;

    invoke-virtual {v0, p1, p2}, Le2/b;->i(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc2/g;->m0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3, v0}, Lc2/g;->O2(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final R2(IIII)Ljava/lang/String;
    .locals 2

    invoke-static {p3, p4}, Lc2/g;->T2(II)I

    move-result p3

    iget-object v0, p0, Lc2/g;->l0:Le2/b;

    invoke-virtual {v0, p1, p2, p3}, Le2/b;->j(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc2/g;->m0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Lc2/g;->T2(II)I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p4, v0}, Lc2/g;->O2(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/g;->n0:Z

    invoke-virtual {p0}, Lc2/g;->j2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final S2(II[II)Ljava/lang/String;
    .locals 1

    array-length v0, p3

    if-lt p1, v0, :cond_0

    array-length v0, p3

    invoke-static {p3, v0}, Lc2/g;->m2([II)[I

    move-result-object p3

    iput-object p3, p0, Lc2/g;->m0:[I

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, p4}, Lc2/g;->T2(II)I

    move-result p2

    aput p2, p3, p1

    iget-object p1, p0, Lc2/g;->l0:Le2/b;

    invoke-virtual {p1, p3, v0}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, p4, p3}, Lc2/g;->O2(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final U1()V
    .locals 0

    invoke-super {p0}, Lx1/b;->U1()V

    iget-object p0, p0, Lc2/g;->l0:Le2/b;

    invoke-virtual {p0}, Le2/b;->m()V

    return-void
.end method

.method public final U2(IIII[I)Ljava/lang/String;
    .locals 4

    :goto_0
    sget-object v0, Lc2/g;->A0:[I

    aget v0, v0, p3

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/16 v0, 0x22

    if-ne p3, v0, :cond_3

    if-lez p4, :cond_1

    array-length p3, p5

    if-lt p1, p3, :cond_0

    array-length p3, p5

    invoke-static {p5, p3}, Lc2/g;->m2([II)[I

    move-result-object p3

    iput-object p3, p0, Lc2/g;->m0:[I

    move-object p5, p3

    :cond_0
    add-int/lit8 p3, p1, 0x1

    invoke-static {p2, p4}, Lc2/g;->T2(II)I

    move-result p2

    aput p2, p5, p1

    move p1, p3

    :cond_1
    iget-object p2, p0, Lc2/g;->l0:Le2/b;

    invoke-virtual {p2, p5, p1}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1, p4, p5}, Lc2/g;->O2(II[I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2

    :cond_3
    const/16 v0, 0x5c

    if-eq p3, v0, :cond_4

    const-string v0, "name"

    invoke-virtual {p0, p3, v0}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lc2/g;->N1()C

    move-result p3

    :goto_1
    const/16 v0, 0x7f

    if-le p3, v0, :cond_a

    const/4 v0, 0x0

    if-lt p4, v1, :cond_6

    array-length p4, p5

    if-lt p1, p4, :cond_5

    array-length p4, p5

    invoke-static {p5, p4}, Lc2/g;->m2([II)[I

    move-result-object p4

    iput-object p4, p0, Lc2/g;->m0:[I

    move-object p5, p4

    :cond_5
    add-int/lit8 p4, p1, 0x1

    aput p2, p5, p1

    move p1, p4

    move p2, v0

    move p4, p2

    :cond_6
    const/16 v3, 0x800

    shl-int/lit8 p2, p2, 0x8

    if-ge p3, v3, :cond_7

    shr-int/lit8 v0, p3, 0x6

    or-int/lit16 v0, v0, 0xc0

    or-int/2addr p2, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_7
    shr-int/lit8 v3, p3, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr p2, v3

    add-int/lit8 p4, p4, 0x1

    if-lt p4, v1, :cond_9

    array-length p4, p5

    if-lt p1, p4, :cond_8

    array-length p4, p5

    invoke-static {p5, p4}, Lc2/g;->m2([II)[I

    move-result-object p4

    iput-object p4, p0, Lc2/g;->m0:[I

    move-object p5, p4

    :cond_8
    add-int/lit8 p4, p1, 0x1

    aput p2, p5, p1

    move p1, p4

    move p4, v0

    goto :goto_2

    :cond_9
    move v0, p2

    :goto_2
    shl-int/lit8 p2, v0, 0x8

    shr-int/lit8 v0, p3, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    or-int/2addr p2, v0

    add-int/2addr p4, v2

    :goto_3
    and-int/lit8 p3, p3, 0x3f

    or-int/lit16 p3, p3, 0x80

    :cond_a
    if-ge p4, v1, :cond_b

    add-int/lit8 p4, p4, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    goto :goto_4

    :cond_b
    array-length p4, p5

    if-lt p1, p4, :cond_c

    array-length p4, p5

    invoke-static {p5, p4}, Lc2/g;->m2([II)[I

    move-result-object p5

    iput-object p5, p0, Lc2/g;->m0:[I

    :cond_c
    add-int/lit8 p4, p1, 0x1

    aput p2, p5, p1

    move p2, p3

    move p1, p4

    move p4, v2

    :goto_4
    iget-object p3, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    goto/16 :goto_0
.end method

.method public final V2(III)Ljava/lang/String;
    .locals 6

    iget-object v5, p0, Lc2/g;->m0:[I

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc2/g;->U2(IIII[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final W2(IIII)Ljava/lang/String;
    .locals 6

    iget-object v5, p0, Lc2/g;->m0:[I

    const/4 v0, 0x0

    aput p1, v5, v0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lc2/g;->U2(IIII[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    iget v6, p0, Lx1/b;->u:I

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v8
.end method

.method public final d1()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->H:I

    iget-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/g;->r2()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_0
    iget-boolean v1, p0, Lc2/g;->n0:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc2/g;->H2()V

    :cond_1
    invoke-virtual {p0}, Lc2/g;->L2()I

    move-result v1

    iput-object v3, p0, Lx1/b;->G:[B

    iget v4, p0, Lx1/b;->u:I

    iput v4, p0, Lx1/b;->x:I

    const/16 v4, 0x5d

    if-eq v1, v4, :cond_11

    const/16 v5, 0x7d

    if-ne v1, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v6, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v6}, Lc2/c;->l()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_4

    invoke-virtual {p0}, Lc2/g;->L2()I

    move-result v1

    iget v6, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v7, Lc2/g;->r0:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    if-eq v1, v4, :cond_3

    if-ne v1, v5, :cond_5

    :cond_3
    invoke-virtual {p0, v1}, Lc2/g;->e2(I)V

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3

    :cond_5
    iget-object v4, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v1}, Lc2/g;->s2(I)Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_6
    invoke-virtual {p0, v1}, Lc2/g;->v2(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3, v1}, Lc2/c;->m(Ljava/lang/String;)V

    iput-object v2, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lc2/g;->D2()I

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_7

    iput-boolean v4, p0, Lc2/g;->n0:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_7
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_f

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_e

    const/16 v3, 0x66

    if-eq v2, v3, :cond_d

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_c

    const/16 v3, 0x74

    if-eq v2, v3, :cond_b

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_a

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_9

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_8

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lc2/g;->u2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    :pswitch_0
    invoke-virtual {p0, v2}, Lc2/g;->x2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v4}, Lc2/g;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_b
    const-string v0, "true"

    invoke-virtual {p0, v4, v0}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_c
    const-string v0, "null"

    invoke-virtual {p0, v4, v0}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_d
    const-string v0, "false"

    invoke-virtual {p0, v4, v0}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_e
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_f
    sget-object v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0, v0}, Lc2/g;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_10
    :goto_0
    invoke-virtual {p0, v2}, Lc2/g;->p2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_11
    :goto_2
    invoke-virtual {p0, v1}, Lc2/g;->e2(I)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e1()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->E:Z

    iget-object v1, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lc2/g;->n0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lc2/g;->n0:Z

    invoke-virtual {p0}, Lc2/g;->j2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v3}, Lc2/c;->j(II)Lc2/c;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v3}, Lc2/c;->k(II)Lc2/c;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {p0}, Lc2/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lc2/g;->K0()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public final e2(I)V
    .locals 4

    const/16 v0, 0x7d

    const/4 v1, 0x0

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    iput-object v1, v3, Lc2/c;->g:Ljava/lang/Object;

    iget-object v3, v3, Lc2/c;->c:Lc2/c;

    iput-object v3, p0, Lx1/b;->z:Lc2/c;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lx1/b;->V1(CI)V

    throw v1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iput-object v1, p1, Lc2/c;->g:Ljava/lang/Object;

    iget-object p1, p1, Lc2/c;->c:Lc2/c;

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, p1}, Lx1/b;->V1(CI)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    iget-boolean v0, p0, Lx1/b;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lc2/g;->r2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->H:I

    iget-boolean v2, p0, Lc2/g;->n0:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lc2/g;->H2()V

    :cond_2
    iget v2, p0, Lc2/g;->q0:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v5, p0, Lc2/g;->p0:Ljava/io/DataInput;

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    iput v4, p0, Lc2/g;->q0:I

    :goto_0
    const/16 v6, 0x20

    if-le v2, v6, :cond_6

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_5

    const/16 v4, 0x23

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lc2/g;->M2(I)I

    move-result v4

    goto :goto_3

    :cond_6
    const/16 v6, 0xd

    if-eq v2, v6, :cond_7

    const/16 v6, 0xa

    if-ne v2, v6, :cond_8

    :cond_7
    iget v2, p0, Lx1/b;->u:I

    add-int/2addr v2, v3

    iput v2, p0, Lx1/b;->u:I

    :cond_8
    :goto_2
    :try_start_0
    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lx1/b;->q1()V

    :goto_3
    if-gez v4, :cond_9

    invoke-virtual {p0}, Lx1/b;->close()V

    iput-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_9
    iput-object v1, p0, Lx1/b;->G:[B

    iget v2, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->x:I

    const/16 v2, 0x5d

    if-eq v4, v2, :cond_18

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v6, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v6}, Lc2/c;->l()Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_b

    invoke-virtual {p0}, Lc2/g;->L2()I

    move-result v4

    iget v1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v6, Lc2/g;->r0:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_c

    if-eq v4, v2, :cond_18

    if-ne v4, v5, :cond_c

    goto/16 :goto_6

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1

    :cond_c
    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0, v4}, Lc2/g;->s2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0, v4}, Lc2/g;->v2(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v2, v1}, Lc2/c;->m(Ljava/lang/String;)V

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lc2/g;->D2()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_e

    iput-boolean v3, p0, Lc2/g;->n0:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_5

    :cond_e
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_16

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_15

    const/16 v2, 0x66

    if-eq v1, v2, :cond_14

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_13

    const/16 v2, 0x74

    if-eq v1, v2, :cond_12

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_11

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_10

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_f

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0, v1}, Lc2/g;->x2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v0}, Lc2/g;->u2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_10
    invoke-virtual {p0, v3}, Lc2/g;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_11
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_12
    const-string v0, "true"

    invoke-virtual {p0, v3, v0}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_13
    const-string v0, "null"

    invoke-virtual {p0, v3, v0}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_14
    const-string v0, "false"

    invoke-virtual {p0, v3, v0}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_15
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_5

    :cond_16
    sget-object v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0, v0}, Lc2/g;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_17
    :goto_4
    invoke-virtual {p0, v1}, Lc2/g;->p2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_7

    :cond_18
    :goto_6
    invoke-virtual {p0, v4}, Lc2/g;->e2(I)V

    :goto_7
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f2(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 9

    invoke-virtual {p0}, Lx1/b;->Q1()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v3

    const/16 v4, 0x22

    if-gez v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v5

    if-gez v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v2, v5}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v5

    :cond_3
    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v5

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x2

    if-gez v5, :cond_9

    if-eq v5, v8, :cond_6

    if-ne v3, v4, :cond_5

    shr-int/lit8 v1, v2, 0x4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-virtual {p0, p1, v3, v6}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    move v5, v3

    :cond_6
    if-ne v5, v8, :cond_9

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_7

    invoke-virtual {p0, p1, v1, v7}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    if-ne v3, v8, :cond_7

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "expected padding character \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, v7, p0}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    shr-int/lit8 v1, v2, 0x4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    goto/16 :goto_0

    :cond_9
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v5

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v3

    if-gez v3, :cond_d

    if-eq v3, v8, :cond_c

    if-ne v1, v4, :cond_b

    shr-int/lit8 v1, v2, 0x2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_b
    invoke-virtual {p0, p1, v1, v7}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v1

    move v3, v1

    :cond_c
    if-ne v3, v8, :cond_d

    shr-int/lit8 v1, v2, 0x2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->d(I)V

    goto/16 :goto_0
.end method

.method public final g2(I)I
    .locals 8

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x7f

    if-le p1, v0, :cond_6

    and-int/lit16 v0, p1, 0xe0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc0

    if-ne v0, v4, :cond_0

    and-int/lit8 p1, p1, 0x1f

    move v0, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_1

    and-int/lit8 p1, p1, 0xf

    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p1, 0xf8

    const/16 v4, 0xf0

    if-ne v0, v4, :cond_5

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    :goto_0
    iget-object v4, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v6, v5, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr p1, v5

    if-le v0, v2, :cond_6

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v5, v2, 0xc0

    if-ne v5, v7, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    if-le v0, v1, :cond_6

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v7, :cond_2

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p1, p0

    goto :goto_1

    :cond_2
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3

    :cond_3
    and-int/lit16 p1, v2, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3

    :cond_4
    and-int/lit16 p1, v5, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3

    :cond_5
    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->A2(I)V

    throw v3

    :cond_6
    :goto_1
    return p1
.end method

.method public final h2(I)I
    .locals 5

    and-int/lit8 p1, p1, 0xf

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v2, v4, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_0

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3

    :cond_1
    and-int/lit16 p1, v1, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3
.end method

.method public final i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
    .locals 2

    iget-boolean v0, p0, Lc2/g;->n0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/d;->b()[B

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lc2/g;->y2(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;[B)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc2/g;->J(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/io/c;->write([B)V

    array-length p0, p0

    return p0
.end method

.method public final i2(I)I
    .locals 5

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v2, v4, :cond_2

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v4, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_0

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    sub-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3

    :cond_1
    and-int/lit16 p1, v1, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3

    :cond_2
    and-int/lit16 p1, v1, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v3
.end method

.method public final j2()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    sget-object v7, Lc2/g;->z0:[I

    aget v7, v7, v6

    if-eqz v7, :cond_3

    const/16 v2, 0x22

    if-ne v6, v2, :cond_2

    iput v4, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget p0, v0, Lcom/fasterxml/jackson/core/util/j;->g:I

    if-lez p0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    if-nez v4, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    iget-object v1, v0, Lcom/fasterxml/jackson/core/util/j;->h:[C

    invoke-direct {p0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    iput-object p0, v0, Lcom/fasterxml/jackson/core/util/j;->j:Ljava/lang/String;

    :goto_2
    return-object p0

    :cond_2
    invoke-virtual {p0, v4, v1, v6}, Lc2/g;->l2(I[CI)V

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v4, 0x1

    int-to-char v6, v6

    aput-char v6, v1, v4

    if-lt v7, v2, :cond_4

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0, v7, v1, v2}, Lc2/g;->l2(I[CI)V

    :goto_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    move v4, v7

    goto :goto_0
.end method

.method public final k2()V
    .locals 7

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    sget-object v6, Lc2/g;->z0:[I

    aget v6, v6, v5

    if-eqz v6, :cond_1

    const/16 v2, 0x22

    if-ne v5, v2, :cond_0

    iput v3, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    return-void

    :cond_0
    invoke-virtual {p0, v3, v1, v5}, Lc2/g;->l2(I[CI)V

    return-void

    :cond_1
    add-int/lit8 v6, v3, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v3

    if-lt v6, v2, :cond_2

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p0, v6, v1, v0}, Lc2/g;->l2(I[CI)V

    return-void

    :cond_2
    move v3, v6

    goto :goto_0
.end method

.method public final l2(I[CI)V
    .locals 8

    array-length v0, p2

    :goto_0
    sget-object v1, Lc2/g;->z0:[I

    aget v1, v1, p3

    iget-object v2, p0, Lc2/g;->p0:Ljava/io/DataInput;

    const/4 v3, 0x0

    iget-object v4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-nez v1, :cond_1

    if-lt p1, v0, :cond_0

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    array-length p2, p1

    move v0, p2

    move-object p2, p1

    move p1, v3

    :cond_0
    add-int/lit8 v1, p1, 0x1

    int-to-char p3, p3

    aput-char p3, p2, p1

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    move p1, v1

    goto :goto_0

    :cond_1
    const/16 v5, 0x22

    if-ne p3, v5, :cond_2

    iput p1, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    return-void

    :cond_2
    const/4 v5, 0x1

    if-eq v1, v5, :cond_9

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v1, v5, :cond_7

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/16 v1, 0x20

    if-ge p3, v1, :cond_3

    const-string v1, "string value"

    invoke-virtual {p0, p3, v1}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p3}, Lc2/g;->z2(I)V

    throw v6

    :cond_4
    invoke-virtual {p0, p3}, Lc2/g;->i2(I)I

    move-result p3

    array-length v1, p2

    if-lt p1, v1, :cond_5

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    array-length v0, p1

    move-object p2, p1

    move p1, v3

    :cond_5
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v5, p3, 0xa

    const v6, 0xd800

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p2, p1

    and-int/lit16 p1, p3, 0x3ff

    const p3, 0xdc00

    or-int/2addr p3, p1

    move p1, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p3}, Lc2/g;->h2(I)I

    move-result p3

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v5, v1, 0xc0

    const/16 v7, 0x80

    if-ne v5, v7, :cond_8

    and-int/lit8 p3, p3, 0x1f

    shl-int/lit8 p3, p3, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p3, v1

    goto :goto_1

    :cond_8
    and-int/lit16 p1, v1, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v6

    :cond_9
    invoke-virtual {p0}, Lc2/g;->N1()C

    move-result p3

    :goto_1
    array-length v1, p2

    if-lt p1, v1, :cond_a

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    array-length p2, p1

    move v0, p2

    move-object p2, p1

    goto :goto_2

    :cond_a
    move v3, p1

    :goto_2
    add-int/lit8 p1, v3, 0x1

    int-to-char p3, p3

    aput-char p3, p2, v3

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    goto/16 :goto_0
.end method

.method public final n2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    const/16 v0, 0x49

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    const/16 v0, 0x4e

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "-INF"

    goto :goto_0

    :cond_0
    const-string p1, "+INF"

    goto :goto_0

    :cond_1
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_2

    const-string p1, "-Infinity"

    goto :goto_0

    :cond_2
    const-string p1, "+Infinity"

    :goto_0
    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1}, Lc2/g;->q2(ILjava/lang/String;)V

    iget p3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v0, Lc2/g;->t0:I

    and-int/2addr p3, v0

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    const-wide/high16 p2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1

    :cond_3
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Non-standard token \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    const/16 p1, 0x2b

    const-string p2, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    goto :goto_3

    :cond_8
    const-string p2, "expected digit (0-9) for valid numeric value"

    :goto_3
    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v1
.end method

.method public final o2()I
    .locals 5

    iget-object v0, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v3, 0x39

    if-le v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v4, Lc2/g;->s0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    :goto_0
    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lx1/c;->D1()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    return v1
.end method

.method public final p2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lc2/g;->p0:Ljava/io/DataInput;

    const/16 v3, 0x27

    const/4 v4, 0x1

    if-eq p1, v3, :cond_8

    const/16 v3, 0x49

    sget v5, Lc2/g;->t0:I

    if-eq p1, v3, :cond_6

    const/16 v3, 0x4e

    if-eq p1, v3, :cond_4

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_1

    const/16 v3, 0x7d

    if-eq p1, v3, :cond_3

    const/16 v3, 0x2b

    if-eq p1, v3, :cond_0

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_2

    goto/16 :goto_3

    :cond_0
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    invoke-virtual {p0, p1, v1, v4}, Lc2/g;->n2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v2, Lc2/g;->u0:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iput p1, p0, Lc2/g;->q0:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_3
    const-string v1, "expected a value"

    invoke-virtual {p0, p1, v1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "NaN"

    invoke-virtual {p0, v4, p1}, Lc2/g;->q2(ILjava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, "Non-standard token \'NaN\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_6
    const-string p1, "Infinity"

    invoke-virtual {p0, v4, p1}, Lc2/g;->q2(ILjava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, p1, v0, v1}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p1, "Non-standard token \'Infinity\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_8
    iget v5, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v6, Lc2/g;->v0:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_14

    iget-object v5, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object p1

    move v6, v1

    :goto_0
    array-length v7, p1

    array-length v8, p1

    if-lt v6, v8, :cond_9

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    array-length v7, p1

    move v6, v1

    :cond_9
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    if-ne v8, v3, :cond_a

    iput v6, v5, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_a
    sget-object v9, Lc2/g;->z0:[I

    aget v9, v9, v8

    if-eqz v9, :cond_13

    const/16 v10, 0x22

    if-eq v8, v10, :cond_13

    if-eq v9, v4, :cond_11

    const/4 v7, 0x2

    if-eq v9, v7, :cond_f

    const/4 v7, 0x3

    if-eq v9, v7, :cond_e

    const/4 v7, 0x4

    if-eq v9, v7, :cond_c

    const/16 p1, 0x20

    if-ge v8, p1, :cond_b

    const-string p1, "string value"

    invoke-virtual {p0, v8, p1}, Lx1/b;->W1(ILjava/lang/String;)V

    :cond_b
    invoke-virtual {p0, v8}, Lc2/g;->z2(I)V

    throw v0

    :cond_c
    invoke-virtual {p0, v8}, Lc2/g;->i2(I)I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0xa

    const v10, 0xd800

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, p1, v6

    array-length v6, p1

    if-lt v8, v6, :cond_d

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v6, v1

    goto :goto_1

    :cond_d
    move v6, v8

    :goto_1
    and-int/lit16 v7, v7, 0x3ff

    const v8, 0xdc00

    or-int/2addr v7, v8

    goto :goto_2

    :cond_e
    invoke-virtual {p0, v8}, Lc2/g;->h2(I)I

    move-result v7

    goto :goto_2

    :cond_f
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v9, v7, 0xc0

    const/16 v10, 0x80

    if-ne v9, v10, :cond_10

    and-int/lit8 v8, v8, 0x1f

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v8

    goto :goto_2

    :cond_10
    and-int/lit16 p1, v7, 0xff

    invoke-virtual {p0, p1}, Lc2/g;->B2(I)V

    throw v0

    :cond_11
    invoke-virtual {p0}, Lc2/g;->N1()C

    move-result v7

    :goto_2
    array-length v8, p1

    if-lt v6, v8, :cond_12

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v6, v1

    :cond_12
    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v8

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v9, v6, 0x1

    int-to-char v8, v8

    aput-char v8, p1, v6

    move v6, v9

    if-lt v9, v7, :cond_9

    goto/16 :goto_0

    :cond_14
    :goto_3
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lc2/g;->C2(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expected a valid value "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v0
.end method

.method public final q2(ILjava/lang/String;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lc2/g;->g2(I)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lc2/g;->C2(ILjava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    iput v0, p0, Lc2/g;->q0:I

    return-void

    :cond_3
    invoke-virtual {p2, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p1, p2}, Lc2/g;->C2(ILjava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public final r2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->E:Z

    iget-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    iget v2, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v1, v2, v3}, Lc2/c;->j(II)Lc2/c;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lx1/b;->z:Lc2/c;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    iget v2, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v1, v2, v3}, Lc2/c;->k(II)Lc2/c;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final s2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    const/16 v0, 0x22

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lc2/g;->n0:Z

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x2b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_7

    const/16 v0, 0x66

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x74

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1}, Lc2/g;->x2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Lc2/g;->u2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lc2/g;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_3
    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iget v0, p0, Lx1/b;->x:I

    iget v1, p0, Lx1/b;->y:I

    invoke-virtual {p1, v0, v1}, Lc2/c;->k(II)Lc2/c;

    move-result-object p1

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_4
    const-string p1, "true"

    invoke-virtual {p0, v1, p1}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_5
    const-string p1, "null"

    invoke-virtual {p0, v1, p1}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_6
    const-string p1, "false"

    invoke-virtual {p0, v1, p1}, Lc2/g;->q2(ILjava/lang/String;)V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iget v0, p0, Lx1/b;->x:I

    iget v1, p0, Lx1/b;->y:I

    invoke-virtual {p1, v0, v1}, Lc2/c;->j(II)Lc2/c;

    move-result-object p1

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v2}, Lc2/g;->w2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_0

    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lc2/g;->p2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final t2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0x2e

    const/16 v2, 0x39

    const/16 v3, 0x30

    iget-object v4, p0, Lc2/g;->p0:Ljava/io/DataInput;

    iget-object v5, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    const/4 v6, 0x0

    if-ne p3, v1, :cond_6

    array-length v1, p1

    if-lt p2, v1, :cond_0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move p2, v6

    :cond_0
    add-int/lit8 v1, p2, 0x1

    int-to-char p3, p3

    aput-char p3, p1, p2

    move p2, v1

    move p3, v6

    :goto_0
    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    if-lt v1, v3, :cond_3

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    array-length v7, p1

    if-lt p2, v7, :cond_2

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move p2, v6

    :cond_2
    add-int/lit8 v7, p2, 0x1

    int-to-char v1, v1

    aput-char v1, p1, p2

    move p2, v7

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p3, :cond_5

    sget-object v7, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "Decimal point not followed by a digit"

    invoke-virtual {p0, v1, p1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    move v9, v1

    move v1, p3

    move p3, v9

    goto :goto_3

    :cond_6
    move v1, v6

    :goto_3
    const/16 v7, 0x65

    if-eq p3, v7, :cond_7

    const/16 v7, 0x45

    if-ne p3, v7, :cond_e

    :cond_7
    array-length v7, p1

    if-lt p2, v7, :cond_8

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move p2, v6

    :cond_8
    add-int/lit8 v7, p2, 0x1

    int-to-char p3, p3

    aput-char p3, p1, p2

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    const/16 p3, 0x2d

    if-eq p2, p3, :cond_a

    const/16 p3, 0x2b

    if-ne p2, p3, :cond_9

    goto :goto_4

    :cond_9
    move p3, p2

    move p2, v7

    move v7, v6

    goto :goto_5

    :cond_a
    :goto_4
    array-length p3, p1

    if-lt v7, p3, :cond_b

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v7, v6

    :cond_b
    add-int/lit8 p3, v7, 0x1

    int-to-char p2, p2

    aput-char p2, p1, v7

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    move v7, v6

    move v9, p3

    move p3, p2

    move p2, v9

    :goto_5
    if-gt p3, v2, :cond_d

    if-lt p3, v3, :cond_d

    add-int/lit8 v7, v7, 0x1

    array-length v8, p1

    if-lt p2, v8, :cond_c

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move p2, v6

    :cond_c
    add-int/lit8 v8, p2, 0x1

    int-to-char p3, p3

    aput-char p3, p1, p2

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    move p2, v8

    goto :goto_5

    :cond_d
    if-eqz v7, :cond_10

    move v6, v7

    :cond_e
    iput p3, p0, Lc2/g;->q0:I

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lc2/g;->N2()V

    :cond_f
    iput p2, v5, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-virtual {p0, p5, v1, v6, p4}, Lx1/b;->c2(IIIZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p1, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p3, p1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0
.end method

.method public final u2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Lc2/g;->p2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x2d

    aput-char v1, v2, v0

    const/4 v0, 0x1

    :cond_1
    move v3, v0

    const/16 v4, 0x2e

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lc2/g;->t2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final v2(I)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    const-string v2, ""

    sget-object v3, Lc2/g;->A0:[I

    const/4 v4, 0x0

    const/4 v5, 0x4

    iget-object v6, v0, Lc2/g;->p0:Ljava/io/DataInput;

    const/4 v7, 0x1

    const/16 v8, 0x22

    if-eq v1, v8, :cond_16

    iget-object v9, v0, Lc2/g;->l0:Le2/b;

    const/16 v10, 0x27

    if-ne v1, v10, :cond_e

    iget v11, v0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v12, Lc2/g;->v0:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_e

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    if-ne v1, v10, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lc2/g;->m0:[I

    move v11, v4

    move v12, v11

    move v13, v12

    :goto_0
    if-ne v1, v10, :cond_4

    if-lez v11, :cond_2

    array-length v1, v2

    if-lt v12, v1, :cond_1

    array-length v1, v2

    invoke-static {v2, v1}, Lc2/g;->m2([II)[I

    move-result-object v1

    iput-object v1, v0, Lc2/g;->m0:[I

    move-object v2, v1

    :cond_1
    add-int/lit8 v1, v12, 0x1

    invoke-static {v13, v11}, Lc2/g;->T2(II)I

    move-result v3

    aput v3, v2, v12

    move v12, v1

    :cond_2
    invoke-virtual {v9, v2, v12}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v12, v11, v2}, Lc2/g;->O2(II[I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_3
    move-object v2, v1

    goto/16 :goto_5

    :cond_4
    if-eq v1, v8, :cond_b

    aget v14, v3, v1

    if-eqz v14, :cond_b

    const/16 v14, 0x5c

    if-eq v1, v14, :cond_5

    const-string v14, "name"

    invoke-virtual {p0, v1, v14}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lc2/g;->N1()C

    move-result v1

    :goto_1
    const/16 v14, 0x7f

    if-le v1, v14, :cond_b

    if-lt v11, v5, :cond_7

    array-length v11, v2

    if-lt v12, v11, :cond_6

    array-length v11, v2

    invoke-static {v2, v11}, Lc2/g;->m2([II)[I

    move-result-object v2

    iput-object v2, v0, Lc2/g;->m0:[I

    :cond_6
    add-int/lit8 v11, v12, 0x1

    aput v13, v2, v12

    move v13, v4

    move v12, v11

    move v11, v13

    :cond_7
    shl-int/lit8 v13, v13, 0x8

    const/16 v14, 0x800

    if-ge v1, v14, :cond_8

    shr-int/lit8 v14, v1, 0x6

    or-int/lit16 v14, v14, 0xc0

    or-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    shr-int/lit8 v14, v1, 0xc

    or-int/lit16 v14, v14, 0xe0

    or-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v5, :cond_a

    array-length v11, v2

    if-lt v12, v11, :cond_9

    array-length v11, v2

    invoke-static {v2, v11}, Lc2/g;->m2([II)[I

    move-result-object v2

    iput-object v2, v0, Lc2/g;->m0:[I

    :cond_9
    add-int/lit8 v11, v12, 0x1

    aput v13, v2, v12

    move v13, v4

    move v12, v11

    move v11, v13

    :cond_a
    shl-int/lit8 v13, v13, 0x8

    shr-int/lit8 v14, v1, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    or-int/2addr v13, v14

    add-int/2addr v11, v7

    :goto_2
    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    :cond_b
    if-ge v11, v5, :cond_c

    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v1, v13

    move v13, v1

    goto :goto_3

    :cond_c
    array-length v11, v2

    if-lt v12, v11, :cond_d

    array-length v11, v2

    invoke-static {v2, v11}, Lc2/g;->m2([II)[I

    move-result-object v2

    iput-object v2, v0, Lc2/g;->m0:[I

    :cond_d
    add-int/lit8 v11, v12, 0x1

    aput v13, v2, v12

    move v13, v1

    move v12, v11

    move v11, v7

    :goto_3
    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto/16 :goto_0

    :cond_e
    iget v2, v0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v3, Lc2/g;->w0:I

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    sget-object v2, Lcom/fasterxml/jackson/core/io/b;->h:[I

    aget v8, v2, v1

    if-nez v8, :cond_14

    iget-object v3, v0, Lc2/g;->m0:[I

    move v8, v4

    move v10, v8

    :cond_f
    if-ge v4, v5, :cond_10

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v1, v10

    move v10, v1

    goto :goto_4

    :cond_10
    array-length v4, v3

    if-lt v8, v4, :cond_11

    array-length v4, v3

    invoke-static {v3, v4}, Lc2/g;->m2([II)[I

    move-result-object v3

    iput-object v3, v0, Lc2/g;->m0:[I

    :cond_11
    add-int/lit8 v4, v8, 0x1

    aput v10, v3, v8

    move v10, v1

    move v8, v4

    move v4, v7

    :goto_4
    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    aget v11, v2, v1

    if-eqz v11, :cond_f

    iput v1, v0, Lc2/g;->q0:I

    if-lez v4, :cond_13

    array-length v1, v3

    if-lt v8, v1, :cond_12

    array-length v1, v3

    invoke-static {v3, v1}, Lc2/g;->m2([II)[I

    move-result-object v1

    iput-object v1, v0, Lc2/g;->m0:[I

    move-object v3, v1

    :cond_12
    add-int/lit8 v1, v8, 0x1

    aput v10, v3, v8

    move v8, v1

    :cond_13
    invoke-virtual {v9, v3, v8}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v8, v4, v3}, Lc2/g;->O2(II[I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    return-object v2

    :cond_14
    const-string v2, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, v1, v2}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lc2/g;->g2(I)I

    move-result v1

    int-to-char v1, v1

    const-string v2, "was expecting double-quote to start field name"

    invoke-virtual {p0, v1, v2}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3

    :cond_16
    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    aget v9, v3, v1

    if-nez v9, :cond_38

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    aget v9, v3, v2

    if-nez v9, :cond_36

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    aget v9, v3, v2

    const/4 v10, 0x2

    if-nez v9, :cond_34

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    aget v9, v3, v2

    const/4 v11, 0x3

    if-nez v9, :cond_32

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    aget v9, v3, v2

    if-nez v9, :cond_30

    iput v1, v0, Lc2/g;->o0:I

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    aget v9, v3, v1

    if-eqz v9, :cond_18

    iget v3, v0, Lc2/g;->o0:I

    if-ne v1, v8, :cond_17

    invoke-virtual {p0, v3, v2, v7}, Lc2/g;->Q2(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_17
    invoke-virtual {p0, v3, v2, v1, v7}, Lc2/g;->W2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_18
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    aget v9, v3, v2

    if-eqz v9, :cond_1a

    iget v3, v0, Lc2/g;->o0:I

    if-ne v2, v8, :cond_19

    invoke-virtual {p0, v3, v1, v10}, Lc2/g;->Q2(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_19
    invoke-virtual {p0, v3, v1, v2, v10}, Lc2/g;->W2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1a
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    aget v9, v3, v2

    if-eqz v9, :cond_1c

    iget v3, v0, Lc2/g;->o0:I

    if-ne v2, v8, :cond_1b

    invoke-virtual {p0, v3, v1, v11}, Lc2/g;->Q2(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1b
    invoke-virtual {p0, v3, v1, v2, v11}, Lc2/g;->W2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1c
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    aget v9, v3, v2

    if-eqz v9, :cond_1e

    if-ne v2, v8, :cond_1d

    iget v2, v0, Lc2/g;->o0:I

    invoke-virtual {p0, v2, v1, v5}, Lc2/g;->Q2(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1d
    iget v3, v0, Lc2/g;->o0:I

    invoke-virtual {p0, v3, v1, v2, v5}, Lc2/g;->W2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1e
    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    aget v12, v3, v9

    if-eqz v12, :cond_20

    iget v3, v0, Lc2/g;->o0:I

    if-ne v9, v8, :cond_1f

    invoke-virtual {p0, v3, v1, v2, v7}, Lc2/g;->R2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1f
    move v5, v3

    move v10, v7

    :goto_6
    move v3, v9

    goto :goto_8

    :cond_20
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v9

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    aget v12, v3, v9

    if-eqz v12, :cond_22

    iget v3, v0, Lc2/g;->o0:I

    if-ne v9, v8, :cond_21

    invoke-virtual {p0, v3, v1, v2, v10}, Lc2/g;->R2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_21
    :goto_7
    move v5, v3

    goto :goto_6

    :cond_22
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v9

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    aget v12, v3, v9

    if-eqz v12, :cond_24

    iget v3, v0, Lc2/g;->o0:I

    if-ne v9, v8, :cond_23

    invoke-virtual {p0, v3, v1, v2, v11}, Lc2/g;->R2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_23
    move v5, v3

    move v3, v9

    move v10, v11

    goto :goto_8

    :cond_24
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v9

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    aget v12, v3, v9

    if-eqz v12, :cond_26

    iget v3, v0, Lc2/g;->o0:I

    if-ne v9, v8, :cond_25

    invoke-virtual {p0, v3, v1, v2, v5}, Lc2/g;->R2(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_25
    move v10, v5

    goto :goto_7

    :goto_8
    iget-object v6, v0, Lc2/g;->m0:[I

    aput v5, v6, v4

    aput v1, v6, v7

    const/4 v1, 0x2

    move-object v0, p0

    move v4, v10

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lc2/g;->U2(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_26
    iget-object v12, v0, Lc2/g;->m0:[I

    iget v13, v0, Lc2/g;->o0:I

    aput v13, v12, v4

    aput v1, v12, v7

    aput v2, v12, v10

    move v2, v9

    move v1, v11

    :goto_9
    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    aget v9, v3, v4

    if-eqz v9, :cond_28

    if-ne v4, v8, :cond_27

    iget-object v3, v0, Lc2/g;->m0:[I

    invoke-virtual {p0, v1, v2, v3, v7}, Lc2/g;->S2(II[II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_27
    iget-object v5, v0, Lc2/g;->m0:[I

    const/4 v6, 0x1

    move-object v0, p0

    move v3, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lc2/g;->U2(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_28
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    aget v9, v3, v4

    if-eqz v9, :cond_2a

    if-ne v4, v8, :cond_29

    iget-object v3, v0, Lc2/g;->m0:[I

    invoke-virtual {p0, v1, v2, v3, v10}, Lc2/g;->S2(II[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_29
    iget-object v5, v0, Lc2/g;->m0:[I

    const/4 v6, 0x2

    move-object v0, p0

    move v3, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lc2/g;->U2(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2a
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    aget v9, v3, v4

    if-eqz v9, :cond_2c

    if-ne v4, v8, :cond_2b

    iget-object v3, v0, Lc2/g;->m0:[I

    invoke-virtual {p0, v1, v2, v3, v11}, Lc2/g;->S2(II[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2b
    iget-object v5, v0, Lc2/g;->m0:[I

    const/4 v6, 0x3

    move-object v0, p0

    move v3, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lc2/g;->U2(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2c
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    aget v9, v3, v4

    if-eqz v9, :cond_2e

    if-ne v4, v8, :cond_2d

    iget-object v3, v0, Lc2/g;->m0:[I

    invoke-virtual {p0, v1, v2, v3, v5}, Lc2/g;->S2(II[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2d
    iget-object v5, v0, Lc2/g;->m0:[I

    const/4 v6, 0x4

    move-object v0, p0

    move v3, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lc2/g;->U2(IIII[I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_2e
    iget-object v9, v0, Lc2/g;->m0:[I

    array-length v12, v9

    if-lt v1, v12, :cond_2f

    invoke-static {v9, v1}, Lc2/g;->m2([II)[I

    move-result-object v9

    iput-object v9, v0, Lc2/g;->m0:[I

    :cond_2f
    iget-object v9, v0, Lc2/g;->m0:[I

    add-int/lit8 v12, v1, 0x1

    aput v2, v9, v1

    move v2, v4

    move v1, v12

    goto/16 :goto_9

    :cond_30
    if-ne v2, v8, :cond_31

    invoke-virtual {p0, v1, v5}, Lc2/g;->P2(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    invoke-virtual {p0, v1, v2, v5}, Lc2/g;->V2(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    if-ne v2, v8, :cond_33

    invoke-virtual {p0, v1, v11}, Lc2/g;->P2(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    invoke-virtual {p0, v1, v2, v11}, Lc2/g;->V2(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    if-ne v2, v8, :cond_35

    invoke-virtual {p0, v1, v10}, Lc2/g;->P2(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    invoke-virtual {p0, v1, v2, v10}, Lc2/g;->V2(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    if-ne v2, v8, :cond_37

    invoke-virtual {p0, v1, v7}, Lc2/g;->P2(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    invoke-virtual {p0, v1, v2, v7}, Lc2/g;->V2(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    if-ne v1, v8, :cond_39

    return-object v2

    :cond_39
    invoke-virtual {p0, v4, v1, v4}, Lc2/g;->V2(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 14

    iget-object v1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/16 v6, 0x2d

    aput-char v6, v2, v5

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    iget-object v7, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v7}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    int-to-char v10, v8

    aput-char v10, v2, v6

    const/16 v6, 0x2e

    const/16 v10, 0x39

    const/16 v11, 0x30

    if-gt v8, v11, :cond_3

    if-ne v8, v11, :cond_1

    invoke-virtual {p0}, Lc2/g;->o2()I

    move-result v8

    goto :goto_1

    :cond_1
    if-ne v8, v6, :cond_2

    invoke-virtual {p0, p1}, Lc2/g;->u2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v8, p1, v3}, Lc2/g;->n2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_3
    if-le v8, v10, :cond_4

    invoke-virtual {p0, v8, p1, v3}, Lc2/g;->n2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-interface {v7}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    :goto_1
    move v13, v8

    move v8, v3

    move v3, v13

    :goto_2
    if-gt v3, v10, :cond_6

    if-lt v3, v11, :cond_6

    add-int/lit8 v8, v8, 0x1

    array-length v12, v2

    if-lt v9, v12, :cond_5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v2

    move v9, v5

    :cond_5
    add-int/lit8 v12, v9, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v9

    invoke-interface {v7}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    move v9, v12

    goto :goto_2

    :cond_6
    if-eq v3, v6, :cond_9

    const/16 v5, 0x65

    if-eq v3, v5, :cond_9

    const/16 v5, 0x45

    if-ne v3, v5, :cond_7

    goto :goto_3

    :cond_7
    iput v9, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v3, p0, Lc2/g;->q0:I

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lc2/g;->N2()V

    :cond_8
    invoke-virtual {p0, v8, p1}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    move-object v0, p0

    move-object v1, v2

    move v2, v9

    move v4, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lc2/g;->t2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public final x2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 13

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    const/16 v2, 0x39

    iget-object v3, p0, Lc2/g;->p0:Ljava/io/DataInput;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x30

    if-ne p1, v6, :cond_3

    invoke-virtual {p0}, Lc2/g;->o2()I

    move-result p1

    if-gt p1, v2, :cond_0

    if-lt p1, v6, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    const/16 v7, 0x78

    if-eq p1, v7, :cond_2

    const/16 v7, 0x58

    if-ne p1, v7, :cond_1

    goto :goto_0

    :cond_1
    aput-char v6, v1, v5

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v5, v5}, Lc2/g;->n2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    int-to-char p1, p1

    aput-char p1, v1, v5

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    :goto_1
    move v10, p1

    move-object v8, v1

    move v9, v4

    move v12, v9

    :goto_2
    if-gt v10, v2, :cond_5

    if-lt v10, v6, :cond_5

    add-int/lit8 v12, v12, 0x1

    array-length p1, v8

    if-lt v9, p1, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move-object v8, p1

    move v9, v5

    :cond_4
    add-int/lit8 p1, v9, 0x1

    int-to-char v1, v10

    aput-char v1, v8, v9

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    move v9, p1

    goto :goto_2

    :cond_5
    const/16 p1, 0x2e

    if-eq v10, p1, :cond_8

    const/16 p1, 0x65

    if-eq v10, p1, :cond_8

    const/16 p1, 0x45

    if-ne v10, p1, :cond_6

    goto :goto_4

    :cond_6
    iput v9, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lc2/g;->N2()V

    goto :goto_3

    :cond_7
    iput v10, p0, Lc2/g;->q0:I

    :goto_3
    invoke-virtual {p0, v12, v5}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_4
    const/4 v11, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lc2/g;->t2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final y2(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;[B)I
    .locals 12

    array-length v0, p3

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    iget-object v5, p0, Lc2/g;->p0:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_0

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v7

    const/16 v8, 0x22

    if-gez v7, :cond_2

    if-ne v6, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, p1, v6, v2}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v7

    if-gez v7, :cond_2

    goto :goto_0

    :cond_2
    if-le v3, v0, :cond_3

    add-int/2addr v4, v3

    invoke-virtual {p2, p3, v2, v3}, Lcom/fasterxml/jackson/core/io/c;->write([BII)V

    move v3, v2

    :cond_3
    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v9

    if-gez v9, :cond_4

    const/4 v9, 0x1

    invoke-virtual {p0, p1, v6, v9}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v9

    :cond_4
    shl-int/lit8 v6, v7, 0x6

    or-int/2addr v6, v9

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, -0x2

    if-gez v9, :cond_a

    if-eq v9, v11, :cond_7

    if-ne v7, v8, :cond_6

    shr-int/lit8 v0, v6, 0x4

    add-int/lit8 v1, v3, 0x1

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-virtual {p0, p1, v7, v10}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v7

    move v9, v7

    :cond_7
    if-ne v9, v11, :cond_a

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, 0x5c

    if-ne v5, v7, :cond_8

    invoke-virtual {p0, p1, v5, v1}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v7

    if-ne v7, v11, :cond_8

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "expected padding character \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v5, v1, p0}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_1
    shr-int/lit8 v5, v6, 0x4

    add-int/lit8 v6, v3, 0x1

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    goto :goto_3

    :cond_a
    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v9

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v7

    if-gez v7, :cond_f

    if-eq v7, v11, :cond_e

    if-ne v5, v8, :cond_d

    shr-int/lit8 v0, v6, 0x2

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, p3, v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_2
    iput-boolean v2, p0, Lc2/g;->n0:Z

    if-lez v3, :cond_b

    add-int/2addr v4, v3

    invoke-virtual {p2, p3, v2, v3}, Lcom/fasterxml/jackson/core/io/c;->write([BII)V

    :cond_b
    return v4

    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_d
    invoke-virtual {p0, p1, v5, v1}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v5

    move v7, v5

    :cond_e
    if-ne v7, v11, :cond_f

    shr-int/lit8 v5, v6, 0x2

    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v5, v5

    aput-byte v5, p3, v6

    goto/16 :goto_0

    :cond_f
    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    add-int/lit8 v3, v6, 0x1

    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    add-int/lit8 v6, v3, 0x1

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    :goto_3
    move v3, v6

    goto/16 :goto_0
.end method

.method public final z2(I)V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lx1/c;->A1(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lc2/g;->A2(I)V

    throw v1
.end method
