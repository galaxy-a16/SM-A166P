.class public Lorg/spongycastle/dvcs/CPDRequestData;
.super Lorg/spongycastle/dvcs/DVCSRequestData;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/Data;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/dvcs/DVCSRequestData;-><init>(Lorg/spongycastle/asn1/dvcs/Data;)V

    invoke-direct {p0}, Lorg/spongycastle/dvcs/CPDRequestData;->initMessage()V

    return-void
.end method

.method private initMessage()V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/dvcs/DVCSRequestData;->data:Lorg/spongycastle/asn1/dvcs/Data;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/dvcs/Data;->getMessage()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/spongycastle/dvcs/DVCSConstructionException;

    const-string v0, "DVCSRequest.data.message should be specified for CPD service"

    invoke-direct {p0, v0}, Lorg/spongycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMessage()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/dvcs/DVCSRequestData;->data:Lorg/spongycastle/asn1/dvcs/Data;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/dvcs/Data;->getMessage()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method
