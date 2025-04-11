.class public Lorg/spongycastle/bcpg/RSASecretBCPGKey;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/BCPGKey;


# instance fields
.field crt:Ljava/math/BigInteger;

.field d:Lorg/spongycastle/bcpg/MPInteger;

.field expP:Ljava/math/BigInteger;

.field expQ:Ljava/math/BigInteger;

.field p:Lorg/spongycastle/bcpg/MPInteger;

.field q:Lorg/spongycastle/bcpg/MPInteger;

.field u:Lorg/spongycastle/bcpg/MPInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "p and q cannot be equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p2}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p3}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->u:Lorg/spongycastle/bcpg/MPInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expP:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expQ:Ljava/math/BigInteger;

    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->crt:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->u:Lorg/spongycastle/bcpg/MPInteger;

    iget-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expP:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expQ:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->crt:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->u:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->crt:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    :try_start_0
    invoke-super {p0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PGP"

    return-object p0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expP:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expQ:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
