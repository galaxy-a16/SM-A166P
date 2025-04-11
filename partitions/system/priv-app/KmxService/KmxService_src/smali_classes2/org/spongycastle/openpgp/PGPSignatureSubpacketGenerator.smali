.class public Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field list:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generate()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 2

    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;-><init>([Lorg/spongycastle/bcpg/SignatureSubpacket;)V

    return-object v0
.end method

.method public setEmbeddedSignature(ZLorg/spongycastle/openpgp/PGPSignature;)V
    .locals 4

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPSignature;->getEncoded()[B

    move-result-object p2

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    :goto_0
    new-array v0, v0, [B

    array-length v1, p2

    array-length v2, v0

    sub-int/2addr v1, v2

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {p2, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance p2, Lorg/spongycastle/bcpg/sig/EmbeddedSignature;

    invoke-direct {p2, p1, v3, v0}, Lorg/spongycastle/bcpg/sig/EmbeddedSignature;-><init>(ZZ[B)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExportable(ZZ)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/Exportable;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/sig/Exportable;-><init>(ZZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFeature(ZB)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/Features;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/sig/Features;-><init>(ZB)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIssuerKeyID(ZJ)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    invoke-direct {v0, p1, p2, p3}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;-><init>(ZJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setKeyExpirationTime(ZJ)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;

    invoke-direct {v0, p1, p2, p3}, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;-><init>(ZJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setKeyFlags(ZI)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/KeyFlags;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/sig/KeyFlags;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNotationData(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/NotationData;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/spongycastle/bcpg/sig/NotationData;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPreferredCompressionAlgorithms(Z[I)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p1, p2}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;-><init>(IZ[I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPreferredHashAlgorithms(Z[I)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p1, p2}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;-><init>(IZ[I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPreferredSymmetricAlgorithms(Z[I)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1, p2}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;-><init>(IZ[I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPrimaryUserID(ZZ)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/PrimaryUserID;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/sig/PrimaryUserID;-><init>(ZZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRevocable(ZZ)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/Revocable;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/sig/Revocable;-><init>(ZZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRevocationKey(ZI[B)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/RevocationKey;

    const/16 v1, -0x80

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/spongycastle/bcpg/sig/RevocationKey;-><init>(ZBI[B)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRevocationReason(ZBLjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/RevocationReason;

    invoke-direct {v0, p1, p2, p3}, Lorg/spongycastle/bcpg/sig/RevocationReason;-><init>(ZBLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSignatureCreationTime(ZLjava/util/Date;)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;-><init>(ZLjava/util/Date;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSignatureExpirationTime(ZJ)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;

    invoke-direct {v0, p1, p2, p3}, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;-><init>(ZJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSignatureTarget(ZII[B)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/SignatureTarget;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/spongycastle/bcpg/sig/SignatureTarget;-><init>(ZII[B)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSignerUserID(ZLjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/SignerUserID;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/sig/SignerUserID;-><init>(ZLjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attempt to set null SignerUserID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSignerUserID(Z[B)V
    .locals 2

    .line 2
    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/SignerUserID;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/spongycastle/bcpg/sig/SignerUserID;-><init>(ZZ[B)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attempt to set null SignerUserID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTrust(ZII)V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/sig/TrustSignature;

    invoke-direct {v0, p1, p2, p3}, Lorg/spongycastle/bcpg/sig/TrustSignature;-><init>(ZII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
