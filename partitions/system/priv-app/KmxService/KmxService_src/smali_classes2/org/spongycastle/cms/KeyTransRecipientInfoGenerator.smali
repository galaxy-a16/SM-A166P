.class public abstract Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/cms/RecipientInfoGenerator;


# instance fields
.field private issuerAndSerial:Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

.field private subjectKeyIdentifier:[B

.field protected final wrapper:Lorg/spongycastle/operator/AsymmetricKeyWrapper;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;Lorg/spongycastle/operator/AsymmetricKeyWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->issuerAndSerial:Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    iput-object p2, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/spongycastle/operator/AsymmetricKeyWrapper;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/operator/AsymmetricKeyWrapper;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->subjectKeyIdentifier:[B

    iput-object p2, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/spongycastle/operator/AsymmetricKeyWrapper;

    return-void
.end method


# virtual methods
.method public final generate(Lorg/spongycastle/operator/GenericKey;)Lorg/spongycastle/asn1/cms/RecipientInfo;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/spongycastle/operator/AsymmetricKeyWrapper;

    invoke-interface {v0, p1}, Lorg/spongycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/spongycastle/operator/GenericKey;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->issuerAndSerial:Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v1, Lorg/spongycastle/asn1/cms/RecipientIdentifier;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->subjectKeyIdentifier:[B

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;)V

    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/cms/RecipientInfo;

    new-instance v2, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;

    iget-object p0, p0, Lorg/spongycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/spongycastle/operator/AsymmetricKeyWrapper;

    invoke-virtual {p0}, Lorg/spongycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v1, p0, v3}, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/spongycastle/asn1/cms/RecipientIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/cms/RecipientInfo;-><init>(Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception wrapping content key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
