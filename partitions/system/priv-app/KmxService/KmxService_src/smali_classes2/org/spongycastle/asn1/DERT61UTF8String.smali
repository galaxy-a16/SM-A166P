.class public Lorg/spongycastle/asn1/DERT61UTF8String;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERT61UTF8String;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERT61UTF8String;
    .locals 3

    instance-of v0, p0, Lorg/spongycastle/asn1/DERT61String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/DERT61UTF8String;

    check-cast p0, Lorg/spongycastle/asn1/DERT61String;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERT61String;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DERT61UTF8String;-><init>([B)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/DERT61UTF8String;

    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/DERT61String;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERT61String;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DERT61UTF8String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v1}, Lcom/google/protobuf/n;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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
    check-cast p0, Lorg/spongycastle/asn1/DERT61UTF8String;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERT61UTF8String;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/spongycastle/asn1/DERT61String;

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/spongycastle/asn1/DERT61UTF8String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/spongycastle/asn1/DERT61UTF8String;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/DERT61UTF8String;-><init>([B)V

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/asn1/DERT61UTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERT61UTF8String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/asn1/DERT61UTF8String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    check-cast p1, Lorg/spongycastle/asn1/DERT61UTF8String;

    iget-object p1, p1, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 1

    const/16 v0, 0x14

    iget-object p0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    invoke-virtual {p1, v0, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public encodedLength()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getOctets()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/DERT61UTF8String;->string:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public isConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERT61UTF8String;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
