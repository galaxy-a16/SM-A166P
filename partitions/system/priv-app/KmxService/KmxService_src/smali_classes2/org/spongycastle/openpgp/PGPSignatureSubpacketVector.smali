.class public Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>([Lorg/spongycastle/bcpg/SignatureSubpacket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-void
.end method


# virtual methods
.method public getCriticalTags()[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v1, v4, :cond_1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v2, [I

    move v2, v0

    :goto_1
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v0, v4, :cond_3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public getEmbeddedSignatures()Lorg/spongycastle/openpgp/PGPSignatureList;
    .locals 4

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpackets(I)[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/spongycastle/openpgp/PGPSignature;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/bcpg/SignaturePacket;->fromByteArray([B)Lorg/spongycastle/bcpg/SignaturePacket;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse signature packet: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPSignatureList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureList;-><init>([Lorg/spongycastle/openpgp/PGPSignature;)V

    return-object p0
.end method

.method public getFeatures()Lorg/spongycastle/bcpg/sig/Features;
    .locals 3

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/sig/Features;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isLongLength()Z

    move-result v2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/spongycastle/bcpg/sig/Features;-><init>(ZZ[B)V

    return-object v0
.end method

.method public getIssuerKeyID()J
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyExpirationTime()J
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyFlags()I
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/KeyFlags;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/KeyFlags;->getFlags()I

    move-result p0

    return p0
.end method

.method public getNotationDataOccurences()[Lorg/spongycastle/bcpg/sig/NotationData;
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getNotationDataOccurrences()[Lorg/spongycastle/bcpg/sig/NotationData;

    move-result-object p0

    return-object p0
.end method

.method public getNotationDataOccurrences()[Lorg/spongycastle/bcpg/sig/NotationData;
    .locals 3

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpackets(I)[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Lorg/spongycastle/bcpg/sig/NotationData;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    check-cast v2, Lorg/spongycastle/bcpg/sig/NotationData;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPreferredCompressionAlgorithms()[I
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object p0

    return-object p0
.end method

.method public getPreferredHashAlgorithms()[I
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSymmetricAlgorithms()[I
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object p0

    return-object p0
.end method

.method public getSignatureCreationTime()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureExpirationTime()J
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignatureTarget()Lorg/spongycastle/bcpg/sig/SignatureTarget;
    .locals 3

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/sig/SignatureTarget;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isLongLength()Z

    move-result v2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/spongycastle/bcpg/sig/SignatureTarget;-><init>(ZZ[B)V

    return-object v0
.end method

.method public getSignerUserID()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/spongycastle/bcpg/sig/SignerUserID;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/SignerUserID;->getID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubpackets(I)[Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-object p0
.end method

.method public hasSubpacket(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrimaryUserID()Z
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/sig/PrimaryUserID;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/PrimaryUserID;->isPrimaryUserID()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length p0, p0

    return p0
.end method

.method public toSubpacketArray()[Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-object p0
.end method
