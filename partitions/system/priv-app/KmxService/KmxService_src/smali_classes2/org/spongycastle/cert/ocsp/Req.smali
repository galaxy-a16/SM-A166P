.class public Lorg/spongycastle/cert/ocsp/Req;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private req:Lorg/spongycastle/asn1/ocsp/Request;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/Req;->req:Lorg/spongycastle/asn1/ocsp/Request;

    return-void
.end method


# virtual methods
.method public getCertID()Lorg/spongycastle/cert/ocsp/CertificateID;
    .locals 1

    new-instance v0, Lorg/spongycastle/cert/ocsp/CertificateID;

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/Req;->req:Lorg/spongycastle/asn1/ocsp/Request;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/Request;->getReqCert()Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cert/ocsp/CertificateID;-><init>(Lorg/spongycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public getSingleRequestExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/Req;->req:Lorg/spongycastle/asn1/ocsp/Request;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/Request;->getSingleRequestExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p0

    return-object p0
.end method
