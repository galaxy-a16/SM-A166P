.class public Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitString"
.end annotation


# instance fields
.field bytes:[B

.field lastByteBits:I

.field numBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    return-void
.end method


# virtual methods
.method public appendBits(B)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->access$000([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    const/16 v1, 0x8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    iput v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    aput-byte p1, v1, v0

    goto :goto_0

    :cond_2
    rsub-int/lit8 v1, v2, 0x8

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v3, v4

    and-int/lit16 p1, p1, 0xff

    shl-int v2, p1, v2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    shr-int p0, p1, v1

    int-to-byte p0, p0

    aput-byte p0, v3, v0

    :goto_0
    return-void
.end method

.method public appendBits([B)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->appendBits(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getLeadingAsInt(I)I
    .locals 3

    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    div-int/lit8 p1, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    ushr-int/2addr v1, v0

    rsub-int/lit8 v0, v0, 0x8

    :goto_0
    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTrailing(I)Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    .locals 5

    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    add-int/lit8 v1, p1, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    iput v1, v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v1, 0x0

    :goto_0
    iget v3, v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rem-int/2addr p1, v2

    iput p1, v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-nez p1, :cond_1

    iput v2, v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    goto :goto_1

    :cond_1
    rsub-int/lit8 p0, p1, 0x20

    iget-object p1, v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    add-int/lit8 v1, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, p1, v3

    shl-int/2addr v2, p0

    ushr-int p0, v2, p0

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    :goto_1
    return-object v0
.end method
