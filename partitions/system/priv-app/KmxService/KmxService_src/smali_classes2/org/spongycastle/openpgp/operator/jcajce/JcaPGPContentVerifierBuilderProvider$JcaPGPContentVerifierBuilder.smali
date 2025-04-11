.class Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JcaPGPContentVerifierBuilder"
.end annotation


# instance fields
.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;II)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->keyAlgorithm:I

    iput p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->hashAlgorithm:I

    return-void
.end method

.method public static synthetic access$200(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->hashAlgorithm:I

    return p0
.end method

.method public static synthetic access$300(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->keyAlgorithm:I

    return p0
.end method


# virtual methods
.method public build(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/operator/PGPContentVerifier;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->keyAlgorithm:I

    iget v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->hashAlgorithm:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createSignature(II)Ljava/security/Signature;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/Signature;)V

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "invalid key."

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
