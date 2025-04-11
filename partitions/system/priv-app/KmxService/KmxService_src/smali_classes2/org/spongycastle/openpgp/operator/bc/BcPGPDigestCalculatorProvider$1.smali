.class Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

.field final synthetic val$algorithm:I

.field final synthetic val$dig:Lorg/spongycastle/crypto/Digest;

.field final synthetic val$stream:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;ILorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    iput p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->val$algorithm:I

    iput-object p3, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->val$stream:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;

    iput-object p4, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->val$dig:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->val$algorithm:I

    return p0
.end method

.method public getDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->val$stream:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->getDigest()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->val$stream:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;

    return-object p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;->val$dig:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->reset()V

    return-void
.end method
