.class public abstract Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "SourceFile"


# instance fields
.field private final helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    new-instance v0, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->strength:I

    return-void
.end method


# virtual methods
.method public final createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->strength:I

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
