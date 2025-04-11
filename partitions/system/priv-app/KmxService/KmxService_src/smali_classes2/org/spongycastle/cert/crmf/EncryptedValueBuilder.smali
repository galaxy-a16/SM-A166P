.class public Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private encryptor:Lorg/spongycastle/operator/OutputEncryptor;

.field private padder:Lorg/spongycastle/cert/crmf/EncryptedValuePadder;

.field private wrapper:Lorg/spongycastle/operator/KeyWrapper;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/KeyWrapper;Lorg/spongycastle/operator/OutputEncryptor;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;-><init>(Lorg/spongycastle/operator/KeyWrapper;Lorg/spongycastle/operator/OutputEncryptor;Lorg/spongycastle/cert/crmf/EncryptedValuePadder;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/operator/KeyWrapper;Lorg/spongycastle/operator/OutputEncryptor;Lorg/spongycastle/cert/crmf/EncryptedValuePadder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/spongycastle/operator/KeyWrapper;

    iput-object p2, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/spongycastle/operator/OutputEncryptor;

    iput-object p3, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->padder:Lorg/spongycastle/cert/crmf/EncryptedValuePadder;

    return-void
.end method

.method private encryptData([B)Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .locals 9

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/spongycastle/operator/OutputEncryptor;

    invoke-interface {v1, v0}, Lorg/spongycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    iget-object p1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/spongycastle/operator/OutputEncryptor;

    invoke-interface {p1}, Lorg/spongycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    :try_start_1
    iget-object p1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/spongycastle/operator/KeyWrapper;

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/spongycastle/operator/OutputEncryptor;

    invoke-interface {v1}, Lorg/spongycastle/operator/OutputEncryptor;->getKey()Lorg/spongycastle/operator/GenericKey;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/spongycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/spongycastle/operator/GenericKey;)[B

    new-instance v5, Lorg/spongycastle/asn1/DERBitString;

    iget-object p1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/spongycastle/operator/KeyWrapper;

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/spongycastle/operator/OutputEncryptor;

    invoke-interface {v1}, Lorg/spongycastle/operator/OutputEncryptor;->getKey()Lorg/spongycastle/operator/GenericKey;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/spongycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/spongycastle/operator/GenericKey;)[B

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V
    :try_end_1
    .catch Lorg/spongycastle/operator/OperatorException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/spongycastle/operator/KeyWrapper;

    invoke-interface {p0}, Lorg/spongycastle/operator/KeyWrapper;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v8, p0}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    new-instance p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERBitString;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot wrap key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot process data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private padData([B)[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->padder:Lorg/spongycastle/cert/crmf/EncryptedValuePadder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValuePadder;->getPaddedData([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public build(Lorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->padData([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->encryptData([B)Lorg/spongycastle/asn1/crmf/EncryptedValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot encode certificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public build([C)Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .locals 0

    .line 6
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->padData([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/EncryptedValueBuilder;->encryptData([B)Lorg/spongycastle/asn1/crmf/EncryptedValue;

    move-result-object p0

    return-object p0
.end method
