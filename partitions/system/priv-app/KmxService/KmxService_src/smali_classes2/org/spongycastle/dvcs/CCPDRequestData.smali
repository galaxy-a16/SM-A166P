.class public Lorg/spongycastle/dvcs/CCPDRequestData;
.super Lorg/spongycastle/dvcs/DVCSRequestData;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/Data;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/dvcs/DVCSRequestData;-><init>(Lorg/spongycastle/asn1/dvcs/Data;)V

    invoke-direct {p0}, Lorg/spongycastle/dvcs/CCPDRequestData;->initDigest()V

    return-void
.end method

.method private initDigest()V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/dvcs/DVCSRequestData;->data:Lorg/spongycastle/asn1/dvcs/Data;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/dvcs/Data;->getMessageImprint()Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/spongycastle/dvcs/DVCSConstructionException;

    const-string v0, "DVCSRequest.data.messageImprint should be specified for CCPD service"

    invoke-direct {p0, v0}, Lorg/spongycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMessageImprint()Lorg/spongycastle/dvcs/MessageImprint;
    .locals 1

    new-instance v0, Lorg/spongycastle/dvcs/MessageImprint;

    iget-object p0, p0, Lorg/spongycastle/dvcs/DVCSRequestData;->data:Lorg/spongycastle/asn1/dvcs/Data;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/dvcs/Data;->getMessageImprint()Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/dvcs/MessageImprint;-><init>(Lorg/spongycastle/asn1/x509/DigestInfo;)V

    return-object v0
.end method
