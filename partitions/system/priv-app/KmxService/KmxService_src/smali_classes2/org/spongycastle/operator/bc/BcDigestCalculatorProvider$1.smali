.class Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/operator/DigestCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;

.field final synthetic val$algorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$stream:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;->this$0:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;

    iput-object p2, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;->val$algorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;->val$stream:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;->val$algorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;->val$stream:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    invoke-virtual {p0}, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->getDigest()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$1;->val$stream:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    return-object p0
.end method
