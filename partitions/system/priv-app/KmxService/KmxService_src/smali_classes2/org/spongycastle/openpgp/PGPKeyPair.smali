.class public Lorg/spongycastle/openpgp/PGPKeyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

.field protected pub:Lorg/spongycastle/openpgp/PGPPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPPrivateKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method


# virtual methods
.method public getKeyID()J
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-object p0
.end method

.method public getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    return-object p0
.end method
