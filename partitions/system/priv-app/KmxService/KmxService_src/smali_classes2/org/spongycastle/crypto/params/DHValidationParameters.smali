.class public Lorg/spongycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->seed:[B

    iput p2, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->counter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/crypto/params/DHValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/DHValidationParameters;

    iget v0, p1, Lorg/spongycastle/crypto/params/DHValidationParameters;->counter:I

    iget v2, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->counter:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object p1, p1, Lorg/spongycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public getCounter()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->counter:I

    return p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->seed:[B

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object p0, p0, Lorg/spongycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
