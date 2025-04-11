.class Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

.field final synthetic val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$keyID:J

.field final synthetic val$signature:Ljava/security/Signature;

.field final synthetic val$signatureType:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;IJLjava/security/Signature;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    iput p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    iput-wide p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    iput-object p5, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    iput-object p6, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    return-object p0
.end method

.method public getHashAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result p0

    return p0
.end method

.method public getKeyAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result p0

    return p0
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;-><init>(Ljava/security/Signature;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 3

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    return p0
.end method
