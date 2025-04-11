.class public Lorg/spongycastle/openpgp/PGPPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/PublicKeyAlgorithmTags;


# static fields
.field private static final MASTER_KEY_CERTIFICATION_TYPES:[I


# instance fields
.field private fingerprint:[B

.field idSigs:Ljava/util/List;

.field idTrusts:Ljava/util/List;

.field ids:Ljava/util/List;

.field private keyID:J

.field keySigs:Ljava/util/List;

.field private keyStrength:I

.field publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

.field subSigs:Ljava/util/List;

.field trustPk:Lorg/spongycastle/bcpg/TrustPacket;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/openpgp/PGPPublicKey;->MASTER_KEY_CERTIFICATION_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x13
        0x12
        0x11
        0x10
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->trustPk:Lorg/spongycastle/bcpg/TrustPacket;

    iput-object p3, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    iput-object p4, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    iput-object p5, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    iput-object p6, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-direct {p0, p7}, Lorg/spongycastle/openpgp/PGPPublicKey;->init(Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->trustPk:Lorg/spongycastle/bcpg/TrustPacket;

    iput-object p3, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-direct {p0, p4}, Lorg/spongycastle/openpgp/PGPPublicKey;->init(Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->init(Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    iget-object v0, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    :goto_1
    iget-object v1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    iget-object v2, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-wide v0, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->keyID:J

    iput-wide v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyID:J

    iget p1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->keyStrength:I

    iput p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyStrength:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    iget-object v0, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->trustPk:Lorg/spongycastle/bcpg/TrustPacket;

    iput-object p3, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    iget-object p2, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-wide p2, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->keyID:J

    iput-wide p2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyID:J

    iget p1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->keyStrength:I

    iput p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyStrength:I

    return-void
.end method

.method private static addCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 4

    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    iget-object v3, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    iget-object v3, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public static addCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->addCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static addCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signature type incorrect for master key revocation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    :goto_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    iget-object p0, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signature type incorrect for sub-key revocation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->addCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static addCertification(Lorg/spongycastle/openpgp/PGPPublicKey;[BLorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 4
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-static {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->addCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method private getExpirationTimeFromSig(ZI)J
    .locals 11

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignaturesOfType(I)Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, -0x1

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/openpgp/PGPSignature;

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v5

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    :cond_1
    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getKeyExpirationTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v7

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_0

    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-eqz v4, :cond_4

    cmp-long v4, v5, v0

    if-lez v4, :cond_0

    :cond_4
    :goto_1
    move-wide v0, v5

    goto :goto_0

    :cond_5
    return-wide v0
.end method

.method private getSignaturesForID(Lorg/spongycastle/bcpg/UserIDPacket;)Ljava/util/Iterator;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/spongycastle/bcpg/UserIDPacket;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-interface {p1, v1}, Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;->calculateFingerprint(Lorg/spongycastle/bcpg/PublicKeyPacket;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result p1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    check-cast v0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyID:J

    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    :goto_2
    iput p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyStrength:I

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, p1

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    const/16 v2, 0x38

    shl-long/2addr v4, v2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x30

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    array-length v2, p1

    add-int/lit8 v2, v2, -0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x28

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    array-length v2, p1

    add-int/lit8 v2, v2, -0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    const/16 v6, 0x10

    shl-long/2addr v1, v6

    or-long/2addr v1, v4

    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyID:J

    instance-of p1, v0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    if-eqz p1, :cond_1

    check-cast v0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    goto :goto_0

    :cond_1
    instance-of p1, v0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    if-eqz p1, :cond_2

    check-cast v0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    :cond_2
    instance-of p1, v0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    if-eqz p1, :cond_3

    check-cast v0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object p1

    goto/16 :goto_1

    :cond_3
    instance-of p1, v0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;

    if-eqz p1, :cond_4

    check-cast v0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p1

    goto/16 :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private static removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 3

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    iget-object v2, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    iget-object v2, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 3

    .line 2
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    iget-object v2, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    iget-object v2, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/String;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 2
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 6

    .line 3
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getRawUserIDs()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p0, v3}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignaturesForID([B)Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_2

    invoke-static {v0, v3, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;[BLorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {p0, v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignaturesForUserAttribute(Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;)Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_5

    invoke-static {v0, v2, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v0

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public static removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;[B)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 6
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/spongycastle/openpgp/PGPPublicKey;[BLorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 7
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-static {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->removeCert(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 5

    .line 2
    instance-of v0, p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->trustPk:Lorg/spongycastle/bcpg/TrustPacket;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v2, p1}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-virtual {p1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    new-instance v3, Lorg/spongycastle/bcpg/UserAttributePacket;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/spongycastle/bcpg/UserAttributePacket;-><init>([Lorg/spongycastle/bcpg/UserAttributeSubpacket;)V

    invoke-virtual {p1, v3}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    :goto_3
    if-nez p2, :cond_4

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/ContainedPacket;

    invoke-virtual {p1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    :cond_4
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v4, p1, p2}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public getAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result p0

    return p0
.end method

.method public getBitStrength()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyStrength:I

    return p0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getEncoded(Z)[B
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()[B
    .locals 3

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keyID:J

    return-wide v0
.end method

.method public getKeySignatures()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    return-object p0
.end method

.method public getRawUserIDs()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/UserIDPacket;->getRawID()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSignatures()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSignaturesForID(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPSignature;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignaturesForID(Lorg/spongycastle/bcpg/UserIDPacket;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSignaturesForID([B)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPSignature;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignaturesForID(Lorg/spongycastle/bcpg/UserIDPacket;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSignaturesForKeyID(J)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPSignature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSignaturesForUserAttribute(Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;)Ljava/util/Iterator;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignaturesOfType(I)Ljava/util/Iterator;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getTrustData()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->trustPk:Lorg/spongycastle/bcpg/TrustPacket;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/TrustPacket;->getLevelAndTrustAmount()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getUserAttributes()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getUserIDs()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/UserIDPacket;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getValidDays()I
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    rem-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getValidSeconds()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getValidDays()I

    move-result p0

    return p0
.end method

.method public getValidSeconds()J
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    :goto_0
    sget-object v0, Lorg/spongycastle/openpgp/PGPPublicKey;->MASTER_KEY_CERTIFICATION_TYPES:[I

    array-length v4, v0

    if-eq v1, v4, :cond_2

    aget v0, v0, v1

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getExpirationTimeFromSig(ZI)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getExpirationTimeFromSig(ZI)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    return-wide v0

    :cond_2
    return-wide v2

    :cond_3
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getValidDays()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result p0

    return p0
.end method

.method public hasRevocation()Z
    .locals 5

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-nez v2, :cond_3

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v3, 0x28

    if-ne v0, v3, :cond_2

    move v2, v1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    return v2
.end method

.method public isEncryptionKey()Z
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/16 v1, 0x14

    if-eq p0, v1, :cond_1

    const/16 v1, 0x12

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isMasterKey()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRevoked()Z
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->hasRevocation()Z

    move-result p0

    return p0
.end method
