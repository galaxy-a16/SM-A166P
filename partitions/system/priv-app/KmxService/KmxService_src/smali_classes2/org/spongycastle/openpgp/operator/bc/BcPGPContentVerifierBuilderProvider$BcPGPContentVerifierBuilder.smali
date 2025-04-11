.class Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BcPGPContentVerifierBuilder"
.end annotation


# instance fields
.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;II)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->keyAlgorithm:I

    iput p3, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->hashAlgorithm:I

    return-void
.end method

.method public static synthetic access$100(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->hashAlgorithm:I

    return p0
.end method

.method public static synthetic access$200(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->keyAlgorithm:I

    return p0
.end method


# virtual methods
.method public build(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/operator/PGPContentVerifier;
    .locals 3

    iget v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->keyAlgorithm:I

    iget v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->hashAlgorithm:I

    invoke-static {v0, v1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createSigner(II)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;->access$000(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;)Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    new-instance v1, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/crypto/Signer;)V

    return-object v1
.end method
