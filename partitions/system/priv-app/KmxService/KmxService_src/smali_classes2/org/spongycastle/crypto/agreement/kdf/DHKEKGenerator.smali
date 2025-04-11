.class public Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 12

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_4

    int-to-long v0, p3

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    const-wide v3, 0x1ffffffffL

    cmp-long v3, v0, v3

    if-gtz v3, :cond_3

    int-to-long v3, v2

    add-long v5, v0, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    div-long/2addr v5, v3

    long-to-int v3, v5

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v6

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_2

    iget-object v8, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v9, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    array-length v10, v9

    invoke-interface {v8, v9, v6, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v10, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/spongycastle/asn1/DEROctetString;

    invoke-static {v7}, Lorg/spongycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v10, v9}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v9, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    if-eqz v9, :cond_0

    new-instance v10, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v11, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v11, v9}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v9, 0x1

    invoke-direct {v10, v9, v6, v11}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_0
    const/4 v9, 0x1

    :goto_1
    new-instance v6, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v10, Lorg/spongycastle/asn1/DEROctetString;

    iget v11, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    invoke-static {v11}, Lorg/spongycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v11, 0x2

    invoke-direct {v6, v9, v11, v10}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance v6, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v6, v8}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v8, "DER"

    invoke-virtual {v6, v8}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v8, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v9, v6

    const/4 v10, 0x0

    invoke-interface {v8, v6, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v4, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    if-le p3, v2, :cond_1

    invoke-static {v4, v10, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    goto :goto_2

    :cond_1
    invoke-static {v4, v10, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v10

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unable to encode parameter info: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->reset()V

    long-to-int p0, v0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Output length too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too small"

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-object p0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 1

    check-cast p1, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    return-void
.end method
