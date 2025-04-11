.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field private engine:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;

.field private initialised:Z

.field private param:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

.field private random:Ljava/security/SecureRandom;

.field private treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "XMSSMT"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->engine:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v3, 0xa

    const/16 v4, 0x14

    invoke-direct {v1, v3, v4, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->param:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->engine:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->initialised:Z

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->engine:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPublicKey;

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPublicKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;)V

    new-instance v1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "use AlgorithmParameterSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5

    .line 2
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getTreeDigest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getLayers()I

    move-result p1

    new-instance v3, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;Ljava/security/SecureRandom;)V

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->param:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getTreeDigest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getLayers()I

    move-result p1

    new-instance v3, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getTreeDigest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getLayers()I

    move-result p1

    new-instance v3, Lorg/spongycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v1, v2, p1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getTreeDigest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->getLayers()I

    move-result p1

    new-instance v3, Lorg/spongycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v1, v2, p1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->engine:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;

    iget-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->param:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyGenerationParameters;

    invoke-virtual {p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a XMSSMTParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
