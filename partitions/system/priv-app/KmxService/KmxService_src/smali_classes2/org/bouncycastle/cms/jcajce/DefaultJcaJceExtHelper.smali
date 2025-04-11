.class Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;
.super Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)V

    return-object p2
.end method

.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;

    invoke-direct {p2, p1, p0, p3, p4}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)V

    return-object p2
.end method

.method public createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
    .locals 0

    new-instance p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)V

    return-object p0
.end method
