.class public Lorg/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private set00Check(Z)V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public readImplicit(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v1, 0x11

    const/16 v2, 0x10

    const/4 v3, 0x4

    if-eqz p1, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/DLSetParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DLSetParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/DLSequenceParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DLSequenceParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_4
    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_7

    if-eq p2, v1, :cond_6

    :cond_5
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p1, "implicit tagging not implemented"

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/bouncycastle/asn1/DEROctetStringParser;

    check-cast v0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object p0
.end method

.method public readIndef(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/BERSetParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BERSetParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown BER object encountered: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BERSequenceParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/DERExternalParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DERExternalParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/16 v7, 0x8

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/4 v10, 0x4

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_2

    if-eq v2, v8, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    invoke-static {v5, v6, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v1

    if-gez v1, :cond_7

    if-eqz v3, :cond_6

    new-instance v1, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v5, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v1, v3, v5}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget p0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v3, v1, p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p0, v0, 0x40

    if-eqz p0, :cond_4

    new-instance p0, Lorg/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_4
    and-int/lit16 p0, v0, 0x80

    if-eqz p0, :cond_5

    new-instance p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {p0, v4, v2, v3}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_5
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v4, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v5, v1, v6}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_8

    new-instance p0, Lorg/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v3, v2, v0}, Lorg/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object p0

    :cond_8
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    new-instance p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3, v2, v0}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_9
    if-eqz v3, :cond_e

    if-eq v2, v10, :cond_d

    if-eq v2, v7, :cond_c

    if-eq v2, v9, :cond_b

    if-ne v2, v8, :cond_a

    new-instance p0, Lorg/bouncycastle/asn1/DLSetParser;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DLSetParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown tag "

    const-string v1, " encountered"

    invoke-static {v0, v2, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lorg/bouncycastle/asn1/DLSequenceParser;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DLSequenceParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_c
    new-instance p0, Lorg/bouncycastle/asn1/DERExternalParser;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERExternalParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_d
    new-instance p0, Lorg/bouncycastle/asn1/BEROctetStringParser;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_e
    if-eq v2, v10, :cond_f

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-static {v2, v4, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v1, "corrupted stream detected"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    new-instance p0, Lorg/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/DEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object p0
.end method

.method public readTaggedObject(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    new-instance p1, Lorg/bouncycastle/asn1/DLTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p1, v0, p2, v1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of p0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p0

    if-ne p0, v1, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-static {p1}, Lorg/bouncycastle/asn1/BERFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/BERSequence;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p0

    if-ne p0, v1, :cond_3

    new-instance p0, Lorg/bouncycastle/asn1/DLTaggedObject;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/bouncycastle/asn1/DLTaggedObject;

    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    return-object p0
.end method

.method public readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :cond_1
    instance-of v2, v0, Lorg/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1
.end method
