.class public Lorg/spongycastle/cert/crmf/EncryptedValueParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private padder:Lorg/spongycastle/cert/crmf/EncryptedValuePadder;

.field private value:Lorg/spongycastle/asn1/crmf/EncryptedValue;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/crmf/EncryptedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/EncryptedValue;Lorg/spongycastle/cert/crmf/EncryptedValuePadder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    iput-object p2, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/spongycastle/cert/crmf/EncryptedValuePadder;

    return-void
.end method

.method private decryptValue(Lorg/spongycastle/cert/crmf/ValueDecryptorGenerator;)[B
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getIntendedAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getValueHint()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getKeyAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getSymmAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getEncSymmKey()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/cert/crmf/ValueDecryptorGenerator;->getValueDecryptor(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/operator/InputDecryptor;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->value:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getEncValue()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v0}, Lorg/spongycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/spongycastle/cert/crmf/EncryptedValuePadder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValuePadder;->getUnpaddedData([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot parse decrypted data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public readCertificateHolder(Lorg/spongycastle/cert/crmf/ValueDecryptorGenerator;)Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 1

    new-instance v0, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/spongycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cert/X509CertificateHolder;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0
.end method

.method public readPassphrase(Lorg/spongycastle/cert/crmf/ValueDecryptorGenerator;)[C
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/spongycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method
