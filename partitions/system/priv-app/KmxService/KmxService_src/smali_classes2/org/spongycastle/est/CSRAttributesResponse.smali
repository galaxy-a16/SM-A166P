.class public Lorg/spongycastle/est/CSRAttributesResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Encodable;


# instance fields
.field private final csrAttrs:Lorg/spongycastle/asn1/est/CsrAttrs;

.field private final index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/spongycastle/asn1/ASN1ObjectIdentifier;",
            "Lorg/spongycastle/asn1/est/AttrOrOID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/est/CsrAttrs;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/est/CSRAttributesResponse;->csrAttrs:Lorg/spongycastle/asn1/est/CsrAttrs;

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/est/CsrAttrs;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/est/CsrAttrs;->getAttrOrOIDs()[Lorg/spongycastle/asn1/est/AttrOrOID;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/spongycastle/asn1/est/AttrOrOID;->isOid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/est/AttrOrOID;->getOid()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/spongycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/est/AttrOrOID;->getAttribute()Lorg/spongycastle/asn1/pkcs/Attribute;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/spongycastle/est/CSRAttributesResponse;->parseBytes([B)Lorg/spongycastle/asn1/est/CsrAttrs;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/est/CSRAttributesResponse;-><init>(Lorg/spongycastle/asn1/est/CsrAttrs;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/spongycastle/asn1/est/CsrAttrs;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/est/CsrAttrs;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CSRAttributesResponse;->csrAttrs:Lorg/spongycastle/asn1/est/CsrAttrs;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getRequirements()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/spongycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/spongycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public hasRequirement(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/est/AttrOrOID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/est/AttrOrOID;->isOid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CSRAttributesResponse;->csrAttrs:Lorg/spongycastle/asn1/est/CsrAttrs;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/est/CsrAttrs;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
