.class public Lorg/bouncycastle/cms/RecipientOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final operator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/InputDecryptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/MacCalculator;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/operator/InputAEADDecryptor;

    invoke-interface {p0}, Lorg/bouncycastle/operator/AADProcessor;->getAADStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v1, v0, Lorg/bouncycastle/operator/InputDecryptor;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/operator/InputDecryptor;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/util/io/TeeInputStream;

    iget-object p0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/operator/MacCalculator;

    invoke-interface {p0}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getMac()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/operator/MacCalculator;

    invoke-interface {p0}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object p0

    return-object p0
.end method

.method public isAEADBased()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of p0, p0, Lorg/bouncycastle/operator/InputAEADDecryptor;

    return p0
.end method

.method public isMacBased()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of p0, p0, Lorg/bouncycastle/operator/MacCalculator;

    return p0
.end method
