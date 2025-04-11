.class public abstract Lcom/google/protobuf/xa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/protobuf/xa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    sget-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    sget v0, Lcom/google/protobuf/fb;->b:I

    sget-object v0, Lcom/google/protobuf/eb;->a:Lcom/google/protobuf/fb;

    return-void
.end method

.method public static a(B)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    :goto_0
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x41

    goto :goto_0
.end method

.method public static b(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;ZZ)J
    .locals 7

    const-string v0, "-"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number must be positive: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    move v0, v1

    const-string v2, "0x"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x2

    move v2, v3

    goto :goto_1

    :cond_2
    const-string v2, "0"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    const/16 v2, 0xa

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v4, v3, :cond_8

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    if-eqz v0, :cond_4

    neg-long v1, v1

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v1, p1

    if-gtz p1, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long p1, v1, p1

    if-ltz p1, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long p1, v1, p1

    if-gez p1, :cond_7

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-ltz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    :cond_10
    :goto_3
    return-wide v1

    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_1e

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x5c

    if-ne v5, v7, :cond_1d

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_1c

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    const/16 v8, 0x37

    const/16 v9, 0x30

    if-gt v9, v5, :cond_0

    if-gt v5, v8, :cond_0

    move v10, v6

    goto :goto_1

    :cond_0
    move v10, v2

    :goto_1
    if-eqz v10, :cond_5

    invoke-static {v5}, Lcom/google/protobuf/xa;->a(B)I

    move-result v5

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v10

    if-gt v9, v10, :cond_1

    if-gt v10, v8, :cond_1

    move v10, v6

    goto :goto_2

    :cond_1
    move v10, v2

    :goto_2
    if-eqz v10, :cond_2

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/xa;->a(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v7

    :cond_2
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v10

    if-ge v7, v10, :cond_4

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v10

    if-gt v9, v10, :cond_3

    if-gt v10, v8, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    if-eqz v8, :cond_4

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/xa;->a(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v7

    :cond_4
    add-int/lit8 v7, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto/16 :goto_9

    :cond_5
    const/16 v8, 0x22

    if-eq v5, v8, :cond_1b

    const/16 v8, 0x27

    if-eq v5, v8, :cond_1a

    const/16 v9, 0x3f

    if-eq v5, v9, :cond_19

    const/16 v9, 0x55

    if-eq v5, v9, :cond_12

    if-eq v5, v7, :cond_11

    const/16 v7, 0x66

    const/16 v9, 0xc

    if-eq v5, v7, :cond_10

    const/16 v7, 0x6e

    if-eq v5, v7, :cond_f

    const/16 v7, 0x72

    if-eq v5, v7, :cond_e

    const/16 v7, 0x78

    if-eq v5, v7, :cond_b

    const/16 v7, 0x61

    if-eq v5, v7, :cond_a

    const/16 v7, 0x62

    const/16 v10, 0x8

    if-eq v5, v7, :cond_9

    packed-switch v5, :pswitch_data_0

    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v5, v4, 0x1

    const/16 v7, 0xb

    aput-byte v7, v1, v4

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v3, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/xa;->b(B)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/xa;->b(B)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p0, v8}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v11

    invoke-static {v11}, Lcom/google/protobuf/xa;->b(B)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v11

    invoke-static {v11}, Lcom/google/protobuf/xa;->b(B)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/xa;->a(B)I

    move-result v3

    shl-int/2addr v3, v9

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/xa;->a(B)I

    move-result v7

    shl-int/2addr v7, v10

    or-int/2addr v3, v7

    invoke-virtual {p0, v8}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/xa;->a(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v3, v7

    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/xa;->a(B)I

    move-result v7

    or-int/2addr v3, v7

    int-to-char v3, v3

    const v7, 0xd800

    if-lt v3, v7, :cond_7

    const v7, 0xdfff

    if-le v3, v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\u\' refers to a surrogate"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v3, v2, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    goto/16 :goto_7

    :cond_8
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\u\' with too few hex chars"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    const/16 v7, 0x9

    aput-byte v7, v1, v4

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v5, v4, 0x1

    aput-byte v10, v1, v4

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v5, v4, 0x1

    const/4 v7, 0x7

    aput-byte v7, v1, v4

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_d

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/xa;->b(B)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/xa;->a(B)I

    move-result v5

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/xa;->b(B)Z

    move-result v8

    if-eqz v8, :cond_c

    mul-int/lit8 v5, v5, 0x10

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/xa;->a(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v7

    :cond_c
    add-int/lit8 v7, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto/16 :goto_9

    :cond_d
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    add-int/lit8 v5, v4, 0x1

    const/16 v7, 0xd

    aput-byte v7, v1, v4

    goto/16 :goto_8

    :cond_f
    add-int/lit8 v5, v4, 0x1

    const/16 v7, 0xa

    aput-byte v7, v1, v4

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v5, v4, 0x1

    aput-byte v9, v1, v4

    goto/16 :goto_8

    :cond_11
    add-int/lit8 v5, v4, 0x1

    aput-byte v7, v1, v4

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v3, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    const-string v8, "Invalid escape sequence: \'\\U\' with too few hex chars"

    if-ge v5, v7, :cond_18

    move v9, v2

    move v7, v3

    :goto_5
    add-int/lit8 v10, v3, 0x8

    if-ge v7, v10, :cond_14

    invoke-virtual {p0, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v10

    invoke-static {v10}, Lcom/google/protobuf/xa;->b(B)Z

    move-result v11

    if-eqz v11, :cond_13

    shl-int/lit8 v9, v9, 0x4

    invoke-static {v10}, Lcom/google/protobuf/xa;->a(B)I

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_13
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    invoke-direct {p0, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    invoke-static {v9}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v7

    const-string v8, "Invalid escape sequence: \'\\U"

    if-eqz v7, :cond_17

    invoke-static {v9}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v7

    if-eqz v7, :cond_16

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HIGH_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HIGH_PRIVATE_USE_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_6

    :cond_15
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v10}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' refers to a surrogate code unit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_6
    new-array v3, v6, [I

    aput v9, v3, v2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v2, v6}, Ljava/lang/String;-><init>([III)V

    sget-object v3, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v3, v2, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    :goto_7
    add-int/2addr v4, v3

    move v3, v5

    goto :goto_a

    :cond_17
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v10}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a valid code point value"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    invoke-direct {p0, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    add-int/lit8 v5, v4, 0x1

    aput-byte v9, v1, v4

    goto :goto_8

    :cond_1a
    add-int/lit8 v5, v4, 0x1

    aput-byte v8, v1, v4

    goto :goto_8

    :cond_1b
    add-int/lit8 v5, v4, 0x1

    aput-byte v8, v1, v4

    :goto_8
    move v4, v5

    goto :goto_a

    :cond_1c
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    add-int/lit8 v7, v4, 0x1

    aput-byte v5, v1, v4

    :goto_9
    move v4, v7

    :goto_a
    add-int/2addr v3, v6

    goto/16 :goto_0

    :cond_1e
    if-ne v0, v4, :cond_1f

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_b

    :cond_1f
    invoke-static {v1, v2, v4}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    :goto_b
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
