.class public Lorg/spongycastle/cert/ocsp/RespID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HASH_SHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field id:Lorg/spongycastle/asn1/ocsp/ResponderID;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/cert/ocsp/RespID;->HASH_SHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/ResponderID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/operator/DigestCalculator;)V
    .locals 3

    const-string v0, "only SHA-1 can be used with RespID - found: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/cert/ocsp/RespID;->HASH_SHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance p1, Lorg/spongycastle/asn1/ocsp/ResponderID;

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p1, v0}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;)V

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/ocsp/OCSPException;

    const-string p2, "problem creating ID: "

    .line 3
    invoke-static {p2, p0}, Lcom/google/protobuf/n;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/cert/ocsp/RespID;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/spongycastle/cert/ocsp/RespID;

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    iget-object p1, p1, Lorg/spongycastle/cert/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ocsp/ResponderID;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    return-object p0
.end method
