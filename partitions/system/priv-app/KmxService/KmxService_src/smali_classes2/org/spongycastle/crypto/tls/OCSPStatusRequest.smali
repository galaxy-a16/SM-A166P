.class public Lorg/spongycastle/crypto/tls/OCSPStatusRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

.field protected responderIDList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/OCSPStatusRequest;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_1
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;-><init>(Ljava/util/Vector;Lorg/spongycastle/asn1/x509/Extensions;)V

    return-object v1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    const-string v1, "DER"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/spongycastle/util/io/Streams;->writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    :goto_2
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-nez p0, :cond_3

    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-void
.end method

.method public getRequestExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public getResponderIDList()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    return-object p0
.end method
