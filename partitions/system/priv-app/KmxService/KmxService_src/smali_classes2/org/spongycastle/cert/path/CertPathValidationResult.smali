.class public Lorg/spongycastle/cert/path/CertPathValidationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cause:Lorg/spongycastle/cert/path/CertPathValidationException;

.field private certIndexes:[I

.field private final isValid:Z

.field private final unhandledCriticalExtensionOIDs:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/path/CertPathValidationContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cert/path/CertPathValidationContext;IILorg/spongycastle/cert/path/CertPathValidationException;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    iput-object p4, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cert/path/CertPathValidationContext;[I[I[Lorg/spongycastle/cert/path/CertPathValidationException;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    aget-object p1, p4, p1

    iput-object p1, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    iput-object p2, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->cause:Lorg/spongycastle/cert/path/CertPathValidationException;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lorg/spongycastle/cert/path/CertPathValidationException;

    const-string v0, "Unhandled Critical Extensions"

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnhandledCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    return-object p0
.end method

.method public isDetailed()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lorg/spongycastle/cert/path/CertPathValidationResult;->isValid:Z

    return p0
.end method
