.class public abstract Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDataDecryptorFactory;


# instance fields
.field private calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

.field private passPhrase:[C


# direct methods
.method public constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->passPhrase:[C

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->passPhrase:[C

    invoke-static {v0, p1, p2, p0}, Lorg/spongycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/spongycastle/bcpg/S2K;[C)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract recoverSessionData(I[B[B)[B
.end method
