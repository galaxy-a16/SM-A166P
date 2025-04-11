.class public Lorg/bouncycastle/dvcs/MessageImprint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/dvcs/MessageImprint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    check-cast p1, Lorg/bouncycastle/dvcs/MessageImprint;

    iget-object p1, p1, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/x509/DigestInfo;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-object p0
.end method
