.class public Lorg/bouncycastle/cert/ocsp/Req;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private req:Lorg/bouncycastle/asn1/ocsp/Request;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/Req;->req:Lorg/bouncycastle/asn1/ocsp/Request;

    return-void
.end method


# virtual methods
.method public getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    iget-object p0, p0, Lorg/bouncycastle/cert/ocsp/Req;->req:Lorg/bouncycastle/asn1/ocsp/Request;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/Request;->getReqCert()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public getSingleRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/ocsp/Req;->req:Lorg/bouncycastle/asn1/ocsp/Request;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/Request;->getSingleRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    return-object p0
.end method
