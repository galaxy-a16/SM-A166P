.class public Lorg/spongycastle/openpgp/PGPKeyRingGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private checksumCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

.field private hashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

.field private keyEncryptor:Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;

.field private keySignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

.field keys:Ljava/util/List;

.field private masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

.field private unhashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;


# direct methods
.method public constructor <init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    move-object v4, p2

    iput-object v4, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

    move-object/from16 v10, p8

    iput-object v10, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keyEncryptor:Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-object v6, p4

    iput-object v6, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->checksumCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-object/from16 v9, p7

    iput-object v9, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keySignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    move-object/from16 v7, p5

    iput-object v7, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->hashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-object/from16 v8, p6

    iput-object v8, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->unhashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKey;

    move-object v2, v0

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v10}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addSubKey(Lorg/spongycastle/openpgp/PGPKeyPair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->hashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->unhashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->addSubKey(Lorg/spongycastle/openpgp/PGPKeyPair;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    return-void
.end method

.method public addSubKey(Lorg/spongycastle/openpgp/PGPKeyPair;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keySignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->init(ILorg/spongycastle/openpgp/PGPPrivateKey;)V

    invoke-virtual {v0, p2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    invoke-virtual {v0, p3}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setUnhashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

    invoke-virtual {p3}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p3

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;)V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->checksumCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keyEncryptor:Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;

    invoke-direct {v0, v1, v2, p1, p0}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "exception adding subkey: "

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public generatePublicKeyRing()Lorg/spongycastle/openpgp/PGPPublicKeyRing;
    .locals 6

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    new-instance v2, Lorg/spongycastle/bcpg/PublicSubkeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v3

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    iget-object v5, v1, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v5}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/bcpg/PublicSubkeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    iput-object v2, v1, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public generateSecretKeyRing()Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 1

    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;)V

    return-object v0
.end method
