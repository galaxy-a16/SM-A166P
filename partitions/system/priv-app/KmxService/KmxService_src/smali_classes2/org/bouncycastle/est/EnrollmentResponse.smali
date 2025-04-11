.class public Lorg/bouncycastle/est/EnrollmentResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final notBefore:J

.field private final requestToRetry:Lorg/bouncycastle/est/ESTRequest;

.field private final source:Lorg/bouncycastle/est/Source;

.field private final store:Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;J",
            "Lorg/bouncycastle/est/ESTRequest;",
            "Lorg/bouncycastle/est/Source;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/EnrollmentResponse;->store:Lorg/bouncycastle/util/Store;

    iput-wide p2, p0, Lorg/bouncycastle/est/EnrollmentResponse;->notBefore:J

    iput-object p4, p0, Lorg/bouncycastle/est/EnrollmentResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    iput-object p5, p0, Lorg/bouncycastle/est/EnrollmentResponse;->source:Lorg/bouncycastle/est/Source;

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->notBefore:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNotBefore()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->notBefore:J

    return-wide v0
.end method

.method public getRequestToRetry()Lorg/bouncycastle/est/ESTRequest;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    return-object p0
.end method

.method public getSession()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->source:Lorg/bouncycastle/est/Source;

    invoke-interface {p0}, Lorg/bouncycastle/est/Source;->getSession()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Lorg/bouncycastle/est/Source;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->source:Lorg/bouncycastle/est/Source;

    return-object p0
.end method

.method public getStore()Lorg/bouncycastle/util/Store;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->store:Lorg/bouncycastle/util/Store;

    return-object p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/EnrollmentResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
