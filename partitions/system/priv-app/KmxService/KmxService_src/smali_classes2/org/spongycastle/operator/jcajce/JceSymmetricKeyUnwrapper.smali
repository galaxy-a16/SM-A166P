.class public Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;
.super Lorg/spongycastle/operator/SymmetricKeyUnwrapper;
.source "SourceFile"


# instance fields
.field private helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/spongycastle/operator/SymmetricKeyUnwrapper;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance p1, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    iput-object p2, p0, Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->secretKey:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public generateUnwrappedKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/operator/GenericKey;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, Lorg/spongycastle/operator/SymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;->createSymmetricWrapper(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->secretKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v1, Lorg/spongycastle/operator/jcajce/JceGenericKey;

    iget-object p0, p0, Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/spongycastle/operator/jcajce/OperatorHelper;->getKeyAlgorithmName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    invoke-virtual {v0, p2, p0, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lorg/spongycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/operator/OperatorException;

    const-string p2, "can\'t find algorithm."

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/operator/OperatorException;

    const-string p2, "key invalid in message."

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
