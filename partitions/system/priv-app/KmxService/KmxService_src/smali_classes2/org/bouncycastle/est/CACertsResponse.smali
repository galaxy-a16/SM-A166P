.class public Lorg/bouncycastle/est/CACertsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crlHolderStore:Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final requestToRetry:Lorg/bouncycastle/est/ESTRequest;

.field private final session:Lorg/bouncycastle/est/Source;

.field private final store:Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final trusted:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;",
            "Lorg/bouncycastle/est/ESTRequest;",
            "Lorg/bouncycastle/est/Source;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/CACertsResponse;->store:Lorg/bouncycastle/util/Store;

    iput-object p3, p0, Lorg/bouncycastle/est/CACertsResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    iput-object p4, p0, Lorg/bouncycastle/est/CACertsResponse;->session:Lorg/bouncycastle/est/Source;

    iput-boolean p5, p0, Lorg/bouncycastle/est/CACertsResponse;->trusted:Z

    iput-object p2, p0, Lorg/bouncycastle/est/CACertsResponse;->crlHolderStore:Lorg/bouncycastle/util/Store;

    return-void
.end method


# virtual methods
.method public getCertificateStore()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/est/CACertsResponse;->store:Lorg/bouncycastle/util/Store;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Response has no certificates."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCrlStore()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/est/CACertsResponse;->crlHolderStore:Lorg/bouncycastle/util/Store;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Response has no CRLs."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRequestToRetry()Lorg/bouncycastle/est/ESTRequest;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CACertsResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    return-object p0
.end method

.method public getSession()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CACertsResponse;->session:Lorg/bouncycastle/est/Source;

    invoke-interface {p0}, Lorg/bouncycastle/est/Source;->getSession()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasCRLs()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CACertsResponse;->crlHolderStore:Lorg/bouncycastle/util/Store;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCertificates()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/CACertsResponse;->store:Lorg/bouncycastle/util/Store;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTrusted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/est/CACertsResponse;->trusted:Z

    return p0
.end method
