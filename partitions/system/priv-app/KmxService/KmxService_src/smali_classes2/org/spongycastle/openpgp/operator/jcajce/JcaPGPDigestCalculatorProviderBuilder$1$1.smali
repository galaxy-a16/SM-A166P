.class Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1;

.field final synthetic val$algorithm:I

.field final synthetic val$dig:Ljava/security/MessageDigest;

.field final synthetic val$stream:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$DigestOutputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1;ILorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$DigestOutputStream;Ljava/security/MessageDigest;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->this$1:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1;

    iput p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->val$algorithm:I

    iput-object p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->val$stream:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$DigestOutputStream;

    iput-object p4, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->val$dig:Ljava/security/MessageDigest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->val$algorithm:I

    return p0
.end method

.method public getDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->val$stream:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$DigestOutputStream;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$DigestOutputStream;->getDigest()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->val$stream:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$DigestOutputStream;

    return-object p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$1$1;->val$dig:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method
