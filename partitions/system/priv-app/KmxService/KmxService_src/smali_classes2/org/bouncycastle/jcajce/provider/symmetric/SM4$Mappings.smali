.class public Lorg/bouncycastle/jcajce/provider/symmetric/SM4$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/SM4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/SM4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/SM4$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/SM4$Mappings;->PREFIX:Ljava/lang/String;

    const-string v2, "$AlgParams"

    const-string v3, "AlgorithmParameters.SM4"

    invoke-static {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cert/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$AlgParamGen"

    const-string v3, "AlgorithmParameterGenerator.SM4"

    invoke-static {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cert/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$ECB"

    const-string v3, "Cipher.SM4"

    invoke-static {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cert/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$KeyGen"

    const-string v3, "KeyGenerator.SM4"

    invoke-static {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cert/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "$CMAC"

    invoke-static {v0, v1, v3}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SM4"

    invoke-virtual {p0, p1, v4, v0, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addCMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "$GMAC"

    invoke-static {v1, v0}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addGMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "$Poly1305"

    invoke-static {v1, v0}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$Poly1305KeyGen"

    invoke-static {v1, v2}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addPoly1305Algorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
