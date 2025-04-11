.class public Lorg/spongycastle/est/CACertsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crlHolderStore:Lorg/spongycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final requestToRetry:Lorg/spongycastle/est/ESTRequest;

.field private final session:Lorg/spongycastle/est/Source;

.field private final store:Lorg/spongycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final trusted:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;Lorg/spongycastle/est/ESTRequest;Lorg/spongycastle/est/Source;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CertificateHolder;",
            ">;",
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CRLHolder;",
            ">;",
            "Lorg/spongycastle/est/ESTRequest;",
            "Lorg/spongycastle/est/Source;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/est/CACertsResponse;->store:Lorg/spongycastle/util/Store;

    iput-object p3, p0, Lorg/spongycastle/est/CACertsResponse;->requestToRetry:Lorg/spongycastle/est/ESTRequest;

    iput-object p4, p0, Lorg/spongycastle/est/CACertsResponse;->session:Lorg/spongycastle/est/Source;

    iput-boolean p5, p0, Lorg/spongycastle/est/CACertsResponse;->trusted:Z

    iput-object p2, p0, Lorg/spongycastle/est/CACertsResponse;->crlHolderStore:Lorg/spongycastle/util/Store;

    return-void
.end method


# virtual methods
.method public getCertificateStore()Lorg/spongycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/spongycastle/est/CACertsResponse;->store:Lorg/spongycastle/util/Store;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Response has no certificates."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCrlStore()Lorg/spongycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/spongycastle/est/CACertsResponse;->crlHolderStore:Lorg/spongycastle/util/Store;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Response has no CRLs."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRequestToRetry()Lorg/spongycastle/est/ESTRequest;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CACertsResponse;->requestToRetry:Lorg/spongycastle/est/ESTRequest;

    return-object p0
.end method

.method public getSession()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CACertsResponse;->session:Lorg/spongycastle/est/Source;

    invoke-interface {p0}, Lorg/spongycastle/est/Source;->getSession()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasCRLs()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CACertsResponse;->crlHolderStore:Lorg/spongycastle/util/Store;

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

    iget-object p0, p0, Lorg/spongycastle/est/CACertsResponse;->store:Lorg/spongycastle/util/Store;

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

    iget-boolean p0, p0, Lorg/spongycastle/est/CACertsResponse;->trusted:Z

    return p0
.end method
