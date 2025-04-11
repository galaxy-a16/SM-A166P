.class public Lorg/spongycastle/crypto/EphemeralKeyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private keyPair:Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

.field private publicKeyEncoder:Lorg/spongycastle/crypto/KeyEncoder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;Lorg/spongycastle/crypto/KeyEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/EphemeralKeyPair;->keyPair:Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    iput-object p2, p0, Lorg/spongycastle/crypto/EphemeralKeyPair;->publicKeyEncoder:Lorg/spongycastle/crypto/KeyEncoder;

    return-void
.end method


# virtual methods
.method public getEncodedPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/EphemeralKeyPair;->publicKeyEncoder:Lorg/spongycastle/crypto/KeyEncoder;

    iget-object p0, p0, Lorg/spongycastle/crypto/EphemeralKeyPair;->keyPair:Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/spongycastle/crypto/KeyEncoder;->getEncoded(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p0

    return-object p0
.end method

.method public getKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/EphemeralKeyPair;->keyPair:Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    return-object p0
.end method
