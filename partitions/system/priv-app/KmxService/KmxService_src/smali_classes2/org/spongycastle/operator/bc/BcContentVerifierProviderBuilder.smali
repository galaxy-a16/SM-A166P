.class public abstract Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$SigVerifier;
    }
.end annotation


# instance fields
.field protected digestProvider:Lorg/spongycastle/operator/bc/BcDigestProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/spongycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/spongycastle/operator/bc/BcDigestProvider;

    iput-object v0, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;->digestProvider:Lorg/spongycastle/operator/bc/BcDigestProvider;

    return-void
.end method

.method public static synthetic access$000(Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/operator/bc/BcSignerOutputStream;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;->createSignatureStream(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/operator/bc/BcSignerOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private createSignatureStream(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/operator/bc/BcSignerOutputStream;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;->createSigner(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/crypto/Signer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Lorg/spongycastle/crypto/Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    new-instance p1, Lorg/spongycastle/operator/bc/BcSignerOutputStream;

    invoke-direct {p1, p0}, Lorg/spongycastle/operator/bc/BcSignerOutputStream;-><init>(Lorg/spongycastle/crypto/Signer;)V

    return-object p1
.end method


# virtual methods
.method public build(Lorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/operator/ContentVerifierProvider;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;-><init>(Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/spongycastle/cert/X509CertificateHolder;)V

    return-object v0
.end method

.method public build(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/operator/ContentVerifierProvider;
    .locals 1

    .line 2
    new-instance v0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$2;-><init>(Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public abstract createSigner(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/crypto/Signer;
.end method

.method public abstract extractKeyParameters(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.end method
