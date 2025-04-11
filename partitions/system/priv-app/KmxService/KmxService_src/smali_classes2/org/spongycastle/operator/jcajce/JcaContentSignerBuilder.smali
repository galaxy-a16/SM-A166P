.class public Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;
    }
.end annotation


# instance fields
.field private helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

.field private random:Ljava/security/SecureRandom;

.field private sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    new-instance v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/spongycastle/operator/ContentSigner;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    iget-object v1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;->createSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_0
    new-instance p1, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;

    invoke-direct {p1, p0, v0, v1}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;-><init>(Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot create signer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->e(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/spongycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
