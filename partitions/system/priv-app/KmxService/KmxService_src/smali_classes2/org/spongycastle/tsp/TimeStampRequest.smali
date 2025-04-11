.class public Lorg/spongycastle/tsp/TimeStampRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMPTY_SET:Ljava/util/Set;


# instance fields
.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private req:Lorg/spongycastle/asn1/tsp/TimeStampReq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->loadRequest(Ljava/io/InputStream;)Lorg/spongycastle/asn1/tsp/TimeStampReq;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TimeStampRequest;-><init>(Lorg/spongycastle/asn1/tsp/TimeStampReq;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/tsp/TimeStampReq;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/tsp/TimeStampRequest;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private convert(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static loadRequest(Ljava/io/InputStream;)Lorg/spongycastle/asn1/tsp/TimeStampReq;
    .locals 3

    const-string v0, "malformed request: "

    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/TimeStampReq;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCertReq()Z
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getCertReq()Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getCertReq()Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-nez v0, :cond_0

    sget-object p0, Lorg/spongycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Extensions;->getCriticalExtensionOIDs()[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/x509/Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lorg/spongycastle/tsp/TSPUtil;->getExtensionOIDs(Lorg/spongycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public getMessageImprintAlgOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getMessageImprintDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-nez v0, :cond_0

    sget-object p0, Lorg/spongycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Extensions;->getNonCriticalExtensionOIDs()[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getNonce()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getNonce()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->req:Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TimeStampReq;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public hasExtensions()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampRequest;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public validate(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/spongycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/spongycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "request contains unknown policy"

    const/16 p2, 0x100

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampRequest;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampRequest;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "request contains unknown extension"

    const/high16 p2, 0x800000

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/tsp/TSPUtil;->getDigestLength(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampRequest;->getMessageImprintDigest()[B

    move-result-object p0

    array-length p0, p0

    if-ne p1, p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "imprint digest the wrong length"

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "request contains unknown algorithm"

    const/16 p2, 0x80

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
