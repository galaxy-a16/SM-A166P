.class public Lorg/bouncycastle/asn1/DERSequenceGenerator;
.super Lorg/bouncycastle/asn1/DERGenerator;
.source "SourceFile"


# instance fields
.field private final _bOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERGenerator;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/DERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public addObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    const-string v0, "DER"

    invoke-virtual {p1, p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(I[B)V

    return-void
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method
