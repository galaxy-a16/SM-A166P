.class public Lorg/spongycastle/cert/crmf/PKIArchiveControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/cert/crmf/Control;


# static fields
.field public static final archiveRemGenPrivKey:I = 0x2

.field public static final encryptedPrivKey:I = 0x0

.field public static final keyGenParameters:I = 0x1

.field private static final type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private final pkiArchiveOptions:Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;->type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;

    return-void
.end method


# virtual methods
.method public getArchiveType()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;->getType()I

    move-result p0

    return p0
.end method

.method public getEnvelopedData()Lorg/spongycastle/cms/CMSEnvelopedData;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncryptedKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/EncryptedKey;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EnvelopedData;

    move-result-object p0

    new-instance v0, Lorg/spongycastle/cms/CMSEnvelopedData;

    new-instance v1, Lorg/spongycastle/asn1/cms/ContentInfo;

    sget-object v2, Lorg/spongycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lorg/spongycastle/asn1/cms/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/CMSEnvelopedData;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Lorg/spongycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRMF parsing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CMS parsing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    sget-object p0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;->type:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public getValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;

    return-object p0
.end method

.method public isEnvelopedData()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncryptedKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/EncryptedKey;->isEncryptedValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
