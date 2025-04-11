.class Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->build(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/operator/PGPContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;

.field final synthetic val$publicKey:Lorg/spongycastle/openpgp/PGPPublicKey;

.field final synthetic val$signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/Signature;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->this$1:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$publicKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    iput-object p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->this$1:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->access$200(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;)I

    move-result p0

    return p0
.end method

.method public getKeyAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->this$1:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->access$300(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;)I

    move-result p0

    return p0
.end method

.method public getKeyID()J
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$publicKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method

.method public verify([B)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {p0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to verify signature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
