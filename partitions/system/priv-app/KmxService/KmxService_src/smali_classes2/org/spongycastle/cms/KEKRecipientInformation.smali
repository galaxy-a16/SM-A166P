.class public Lorg/spongycastle/cms/KEKRecipientInformation;
.super Lorg/spongycastle/cms/RecipientInformation;
.source "SourceFile"


# instance fields
.field private info:Lorg/spongycastle/asn1/cms/KEKRecipientInfo;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cms/KEKRecipientInfo;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSSecureReadable;Lorg/spongycastle/cms/AuthAttributesProvider;)V
    .locals 1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/spongycastle/cms/RecipientInformation;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSSecureReadable;Lorg/spongycastle/cms/AuthAttributesProvider;)V

    iput-object p1, p0, Lorg/spongycastle/cms/KEKRecipientInformation;->info:Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->getKekid()Lorg/spongycastle/asn1/cms/KEKIdentifier;

    move-result-object p1

    new-instance p2, Lorg/spongycastle/cms/KEKRecipientId;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/KEKIdentifier;->getKeyIdentifier()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/spongycastle/cms/KEKRecipientId;-><init>([B)V

    iput-object p2, p0, Lorg/spongycastle/cms/RecipientInformation;->rid:Lorg/spongycastle/cms/RecipientId;

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/spongycastle/cms/Recipient;)Lorg/spongycastle/cms/RecipientOperator;
    .locals 2

    check-cast p1, Lorg/spongycastle/cms/KEKRecipient;

    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->keyEncAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/spongycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p0, p0, Lorg/spongycastle/cms/KEKRecipientInformation;->info:Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->getEncryptedKey()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lorg/spongycastle/cms/KEKRecipient;->getRecipientOperator(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/cms/RecipientOperator;

    move-result-object p0

    return-object p0
.end method
