.class public abstract Lorg/spongycastle/asn1/ASN1OctetString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1OctetStringParser;


# instance fields
.field string:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "string cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct OCTET STRING from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 3
    invoke-static {p0, v1}, Landroidx/activity/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/BEROctetString;->fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)Lorg/spongycastle/asn1/BEROctetString;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1OctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public abstract encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
.end method

.method public getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getOctets()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public parser()Lorg/spongycastle/asn1/ASN1OctetStringParser;
    .locals 0

    return-object p0
.end method

.method public toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
