.class public Lorg/spongycastle/openpgp/PGPSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BINARY_DOCUMENT:I = 0x0

.field public static final CANONICAL_TEXT_DOCUMENT:I = 0x1

.field public static final CASUAL_CERTIFICATION:I = 0x12

.field public static final CERTIFICATION_REVOCATION:I = 0x30

.field public static final DEFAULT_CERTIFICATION:I = 0x10

.field public static final DIRECT_KEY:I = 0x1f

.field public static final KEY_REVOCATION:I = 0x20

.field public static final NO_CERTIFICATION:I = 0x11

.field public static final POSITIVE_CERTIFICATION:I = 0x13

.field public static final PRIMARYKEY_BINDING:I = 0x19

.field public static final STAND_ALONE:I = 0x2

.field public static final SUBKEY_BINDING:I = 0x18

.field public static final SUBKEY_REVOCATION:I = 0x28

.field public static final TIMESTAMP:I = 0x40


# instance fields
.field private lastb:B

.field private sigOut:Ljava/io/OutputStream;

.field private sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

.field private signatureType:I

.field private trustPck:Lorg/spongycastle/bcpg/TrustPacket;

.field private verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/SignaturePacket;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->signatureType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->trustPck:Lorg/spongycastle/bcpg/TrustPacket;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/SignaturePacket;Lorg/spongycastle/bcpg/TrustPacket;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;)V

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPSignature;->trustPck:Lorg/spongycastle/bcpg/TrustPacket;

    return-void
.end method

.method private addTrailer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SignaturePacket;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blockUpdate([BII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private byteUpdate(B)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private createSubpacketVector([Lorg/spongycastle/bcpg/SignatureSubpacket;)Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;-><init>([Lorg/spongycastle/bcpg/SignatureSubpacket;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEncodedPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)[B
    .locals 1

    :try_start_0
    iget-object p0, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "exception preparing key."

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static isCertification(I)Z
    .locals 1

    .line 2
    const/16 v0, 0x10

    if-eq v0, p0, :cond_1

    const/16 v0, 0x11

    if-eq v0, p0, :cond_1

    const/16 v0, 0x12

    if-eq v0, p0, :cond_1

    const/16 v0, 0x13

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateWithIdData(I[B)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/PGPSignature;->update([B)V

    return-void
.end method

.method private updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->getEncodedPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)[B

    move-result-object p1

    const/16 v0, -0x67

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->update([B)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 1

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
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->trustPck:Lorg/spongycastle/bcpg/TrustPacket;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    :cond_1
    return-void
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getCreationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getEncoded(Z)[B
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getHashAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result p0

    return p0
.end method

.method public getHashedSubPackets()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->createSubpacketVector([Lorg/spongycastle/bcpg/SignatureSubpacket;)Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p0

    return-object p0
.end method

.method public getKeyAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result p0

    return p0
.end method

.method public getKeyID()J
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignature()[B
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignaturePacket;->getSignature()[Lorg/spongycastle/bcpg/MPInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    aget-object p0, v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "exception encoding DSA sig."

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getSignatureBytes()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSignatureTrailer()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getSignatureTrailer()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignatureType()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result p0

    return p0
.end method

.method public getUnhashedSubPackets()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignaturePacket;->getUnhashedSubPackets()[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->createSubpacketVector([Lorg/spongycastle/bcpg/SignatureSubpacket;)Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getVersion()I

    move-result p0

    return p0
.end method

.method public hasSubpackets()Z
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getUnhashedSubPackets()[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public init(Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigPck:Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider;->get(II)Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;->build(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    const/4 p2, 0x0

    iput-byte p2, p0, Lorg/spongycastle/openpgp/PGPSignature;->lastb:B

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    return-void
.end method

.method public isCertification()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result p0

    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPSignature;->isCertification(I)Z

    move-result p0

    return p0
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lorg/spongycastle/openpgp/PGPSignature;->byteUpdate(B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->byteUpdate(B)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iget-byte v2, p0, Lorg/spongycastle/openpgp/PGPSignature;->lastb:B

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->byteUpdate(B)V

    :cond_2
    :goto_1
    iput-byte p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->lastb:B

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->byteUpdate(B)V

    :goto_2
    return-void
.end method

.method public update([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 3
    iget v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignature;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/PGPSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public verify()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public verifyCertification(Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    const/16 p2, 0xb4

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "PGPSignature not initialised - call init()."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyCertification(Lorg/spongycastle/openpgp/PGPPublicKey;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "signature is not a key signature"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "PGPSignature not initialised - call init()."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPPublicKey;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "PGPSignature not initialised - call init()."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyCertification(Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/spongycastle/openpgp/PGPPublicKey;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/16 p2, 0xd1

    invoke-direct {p0, p2, p1}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "cannot encode subpacket array"

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "PGPSignature not initialised - call init()."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyCertification([BLorg/spongycastle/openpgp/PGPPublicKey;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    const/16 p2, 0xb4

    invoke-direct {p0, p2, p1}, Lorg/spongycastle/openpgp/PGPSignature;->updateWithIdData(I[B)V

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPSignature;->addTrailer()V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "PGPSignature not initialised - call init()."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
