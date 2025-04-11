.class public Lorg/spongycastle/pkcs/PKCS12SafeBag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final friendlyNameAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final localKeyIdAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->friendlyNameAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->localKeyIdAttribute:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/SafeBag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    return-void
.end method


# virtual methods
.method public getAttributes()[Lorg/spongycastle/asn1/pkcs/Attribute;
    .locals 3

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/pkcs/Attribute;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Attribute;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBagValue()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS12SafeBag;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS12SafeBag;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/CertBag;

    move-result-object p0

    new-instance v0, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cert/X509CertificateHolder;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS12SafeBag;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->keyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS12SafeBag;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->crlBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/spongycastle/asn1/pkcs/CRLBag;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/CRLBag;

    move-result-object p0

    new-instance v0, Lorg/spongycastle/cert/X509CRLHolder;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CRLBag;->getCrlValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cert/X509CRLHolder;-><init>(Lorg/spongycastle/asn1/x509/CertificateList;)V

    return-object v0

    :cond_3
    return-object p0
.end method

.method public getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/pkcs/SafeBag;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS12SafeBag;->safeBag:Lorg/spongycastle/asn1/pkcs/SafeBag;

    return-object p0
.end method
