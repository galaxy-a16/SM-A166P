.class Lorg/spongycastle/cert/path/CertPathValidationResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addException(Lorg/spongycastle/cert/path/CertPathValidationException;)V
    .locals 0

    return-void
.end method

.method public build()Lorg/spongycastle/cert/path/CertPathValidationResult;
    .locals 2

    new-instance p0, Lorg/spongycastle/cert/path/CertPathValidationResult;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v0}, Lorg/spongycastle/cert/path/CertPathValidationResult;-><init>(Lorg/spongycastle/cert/path/CertPathValidationContext;IILorg/spongycastle/cert/path/CertPathValidationException;)V

    return-object p0
.end method
