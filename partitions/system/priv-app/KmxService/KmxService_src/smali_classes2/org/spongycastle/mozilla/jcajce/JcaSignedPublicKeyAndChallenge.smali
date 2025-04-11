.class public Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
.super Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;
.source "SourceFile"


# instance fields
.field helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;-><init>(Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;)V

    new-instance p1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;-><init>([B)V

    new-instance p1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->getPublicKeyAndChallenge()Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "error encoding public key"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;

    iget-object p0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;-><init>(Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;

    iget-object p0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;-><init>(Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method
