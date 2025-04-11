.class public Lorg/spongycastle/asn1/smime/SMIMECapabilities;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field public static final aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final canNotDecryptAny:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final cast5_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final idea_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferSignedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final rC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final sMIMECapabilitesVersions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private capabilities:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->preferSignedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->canNotDecryptAny:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->sMIMECapabilitesVersions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->idea_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.10"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->cast5_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->dES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->dES_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/spongycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/smime/SMIMECapabilities;
    .locals 2

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    check-cast p0, Lorg/spongycastle/asn1/cms/Attribute;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory: "

    invoke-static {p0, v1}, Landroidx/activity/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    return-object p0
.end method


# virtual methods
.method public getCapabilities(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;
    .locals 3

    iget-object p0, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/smime/SMIMECapability;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/smime/SMIMECapability;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/smime/SMIMECapability;->getCapabilityID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object p0
.end method
