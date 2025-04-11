.class public Lorg/spongycastle/openpgp/PGPPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private keyID:J

.field private privateKeyDataPacket:Lorg/spongycastle/bcpg/BCPGKey;

.field private publicKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;


# direct methods
.method public constructor <init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->keyID:J

    iput-object p3, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->publicKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput-object p4, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->privateKeyDataPacket:Lorg/spongycastle/bcpg/BCPGKey;

    return-void
.end method


# virtual methods
.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->keyID:J

    return-wide v0
.end method

.method public getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->privateKeyDataPacket:Lorg/spongycastle/bcpg/BCPGKey;

    return-object p0
.end method

.method public getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->publicKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    return-object p0
.end method
