.class public abstract Lorg/spongycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canBePrintable(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public convertHexEncoded(Ljava/lang/String;I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_2

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x30

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-byte v3, v0, v1

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_1
    aget-byte v3, v0, v1

    add-int/lit8 v2, v2, -0x61

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public abstract getConvertedValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
.end method
