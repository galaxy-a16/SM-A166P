.class Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/operator/ContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;->build(Lorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/operator/ContentVerifierProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;

.field final synthetic val$certHolder:Lorg/spongycastle/cert/X509CertificateHolder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/spongycastle/cert/X509CertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;

    iput-object p2, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;->val$certHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/ContentVerifier;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;

    iget-object v1, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;->val$certHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v1}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;->extractKeyParameters(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;

    invoke-static {v1, p1, v0}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;->access$000(Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/operator/bc/BcSignerOutputStream;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$SigVerifier;

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;

    invoke-direct {v1, p0, p1, v0}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$SigVerifier;-><init>(Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/operator/bc/BcSignerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/operator/OperatorCreationException;

    const-string v0, "exception on setup: "

    invoke-static {v0, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAssociatedCertificate()Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder$1;->val$certHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method public hasAssociatedCertificate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
