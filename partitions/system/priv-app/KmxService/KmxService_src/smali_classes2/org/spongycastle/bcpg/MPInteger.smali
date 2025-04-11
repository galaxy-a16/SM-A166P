.class public Lorg/spongycastle/bcpg/MPInteger;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "SourceFile"


# instance fields
.field value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    iput-object p1, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value must not be null, or negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p1, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    invoke-virtual {p1, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-object p0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p0, v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    array-length v1, p0

    invoke-virtual {p1, p0, v0, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    return-object p0
.end method
