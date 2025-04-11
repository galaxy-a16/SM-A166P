.class public Lorg/spongycastle/cms/RecipientOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final operator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/InputDecryptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/spongycastle/operator/InputDecryptor;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p1, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/operator/MacCalculator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p1, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v1, v0, Lorg/spongycastle/operator/InputDecryptor;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/spongycastle/operator/InputDecryptor;

    invoke-interface {v0, p1}, Lorg/spongycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/spongycastle/util/io/TeeInputStream;

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast p0, Lorg/spongycastle/operator/MacCalculator;

    invoke-interface {p0}, Lorg/spongycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getMac()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast p0, Lorg/spongycastle/operator/MacCalculator;

    invoke-interface {p0}, Lorg/spongycastle/operator/MacCalculator;->getMac()[B

    move-result-object p0

    return-object p0
.end method

.method public isMacBased()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of p0, p0, Lorg/spongycastle/operator/MacCalculator;

    return p0
.end method
