.class public Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;
.super Lorg/spongycastle/bcpg/ECPublicBCPGKey;
.source "SourceFile"


# instance fields
.field private hashFunctionId:B

.field private reserved:B

.field private symAlgorithmId:B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V

    const/4 p1, 0x1

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    int-to-byte p1, p4

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifyHashAlgorithm()V

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifySymmetricKeyAlgorithm()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    const/4 p1, 0x0

    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    const/4 p1, 0x1

    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    const/4 p1, 0x2

    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifyHashAlgorithm()V

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifySymmetricKeyAlgorithm()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "kdf parameters size of 3 expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyHashAlgorithm()V
    .locals 1

    iget-byte p0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Hash algorithm must be SHA-256 or stronger."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private verifySymmetricKeyAlgorithm()V
    .locals 1

    iget-byte p0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Symmetric key algorithm must be AES-128 or stronger."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-byte p0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-virtual {p1, p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    return-void
.end method

.method public getHashAlgorithm()B
    .locals 0

    iget-byte p0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    return p0
.end method

.method public getReserved()B
    .locals 0

    iget-byte p0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    return p0
.end method

.method public getSymmetricKeyAlgorithm()B
    .locals 0

    iget-byte p0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    return p0
.end method
