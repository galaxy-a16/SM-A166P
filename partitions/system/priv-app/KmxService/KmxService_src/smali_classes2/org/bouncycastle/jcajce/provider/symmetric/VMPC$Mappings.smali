.class public Lorg/bouncycastle/jcajce/provider/symmetric/VMPC$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/VMPC;
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

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/VMPC;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/VMPC$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/VMPC$Mappings;->PREFIX:Ljava/lang/String;

    const-string v1, "$Base"

    const-string v2, "Cipher.VMPC"

    invoke-static {p0, v0, v1, p1, v2}, Lorg/bouncycastle/cert/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$KeyGen"

    const-string v2, "KeyGenerator.VMPC"

    invoke-static {p0, v0, v1, p1, v2}, Lorg/bouncycastle/cert/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "$Mac"

    const-string v2, "Mac.VMPCMAC"

    invoke-static {p0, v0, v1, p1, v2}, Lorg/bouncycastle/cert/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.VMPC"

    const-string v0, "VMPCMAC"

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.VMPC-MAC"

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
