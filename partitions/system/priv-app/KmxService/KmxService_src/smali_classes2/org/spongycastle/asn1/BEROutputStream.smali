.class public Lorg/spongycastle/asn1/BEROutputStream;
.super Lorg/spongycastle/asn1/DEROutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeNull()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Primitive;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/spongycastle/asn1/ASN1Primitive;->encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "object not BEREncodable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
