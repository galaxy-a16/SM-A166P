.class public Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final certReqId:Ljava/math/BigInteger;

.field private controls:Ljava/util/List;

.field private extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

.field private password:[C

.field private pkmacBuilder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

.field private popRaVerified:Lorg/spongycastle/asn1/ASN1Null;

.field private popSigner:Lorg/spongycastle/operator/ContentSigner;

.field private popoPrivKey:Lorg/spongycastle/asn1/crmf/POPOPrivKey;

.field private sender:Lorg/spongycastle/asn1/x509/GeneralName;

.field private templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->certReqId:Ljava/math/BigInteger;

    new-instance p1, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {p1}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    new-instance p1, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    invoke-direct {p1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    return-void
.end method

.method private createTime(Ljava/util/Date;)Lorg/spongycastle/asn1/x509/Time;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addControl(Lorg/spongycastle/cert/crmf/Control;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/spongycastle/cert/crmf/CRMFUtil;->addExtension(Lorg/spongycastle/asn1/x509/ExtensionsGenerator;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z[B)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object p0
.end method

.method public build()Lorg/spongycastle/cert/crmf/CertificateRequestMessage;
    .locals 6

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->certReqId:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/spongycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->build()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/cert/crmf/Control;

    new-instance v4, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    invoke-interface {v3}, Lorg/spongycastle/cert/crmf/Control;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-interface {v3}, Lorg/spongycastle/cert/crmf/Control;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/crmf/CertRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertRequest;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/spongycastle/operator/ContentSigner;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    invoke-direct {v2, v0}, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;-><init>(Lorg/spongycastle/asn1/crmf/CertRequest;)V

    new-instance v0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/spongycastle/operator/ContentSigner;

    invoke-virtual {v2, p0}, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/asn1/crmf/POPOSigningKey;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;-><init>(Lorg/spongycastle/asn1/crmf/POPOSigningKey;)V

    :goto_1
    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    new-instance v2, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    invoke-direct {v2, v0}, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->setSender(Lorg/spongycastle/asn1/x509/GeneralName;)Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/spongycastle/cert/crmf/PKMACValueGenerator;

    iget-object v3, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->pkmacBuilder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    invoke-direct {v0, v3}, Lorg/spongycastle/cert/crmf/PKMACValueGenerator;-><init>(Lorg/spongycastle/cert/crmf/PKMACBuilder;)V

    iget-object v3, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->password:[C

    invoke-virtual {v2, v0, v3}, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->setPublicKeyMac(Lorg/spongycastle/cert/crmf/PKMACValueGenerator;[C)Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    :goto_3
    new-instance v0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/spongycastle/operator/ContentSigner;

    invoke-virtual {v2, p0}, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/asn1/crmf/POPOSigningKey;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;-><init>(Lorg/spongycastle/asn1/crmf/POPOSigningKey;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    if-eqz v0, :cond_7

    new-instance p0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;-><init>(ILorg/spongycastle/asn1/crmf/POPOPrivKey;)V

    :goto_4
    invoke-virtual {v1, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/spongycastle/asn1/ASN1Null;

    if-eqz p0, :cond_8

    new-instance p0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;-><init>()V

    goto :goto_4

    :cond_8
    :goto_5
    new-instance p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;

    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V

    return-object p0
.end method

.method public setAuthInfoPKMAC(Lorg/spongycastle/cert/crmf/PKMACBuilder;[C)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->pkmacBuilder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    iput-object p2, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->password:[C

    return-object p0
.end method

.method public setAuthInfoSender(Lorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->setAuthInfoSender(Lorg/spongycastle/asn1/x509/GeneralName;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setAuthInfoSender(Lorg/spongycastle/asn1/x509/GeneralName;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object p0
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    :cond_0
    return-object p0
.end method

.method public setProofOfPossessionRaVerified()Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/spongycastle/operator/ContentSigner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    if-nez v0, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/spongycastle/asn1/ASN1Null;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "only one proof of possession allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProofOfPossessionSigningKeySigner(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/spongycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/spongycastle/operator/ContentSigner;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only one proof of possession allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProofOfPossessionSubsequentMessage(Lorg/spongycastle/asn1/crmf/SubsequentMessage;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/spongycastle/operator/ContentSigner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/spongycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/spongycastle/asn1/crmf/SubsequentMessage;)V

    iput-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only one proof of possession allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->setPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    :cond_0
    return-object p0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->setSerialNumber(Lorg/spongycastle/asn1/ASN1Integer;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    :cond_0
    return-object p0
.end method

.method public setSubject(Lorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->setSubject(Lorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    :cond_0
    return-object p0
.end method

.method public setValidity(Ljava/util/Date;Ljava/util/Date;)Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    new-instance v1, Lorg/spongycastle/asn1/crmf/OptionalValidity;

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->createTime(Ljava/util/Date;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/spongycastle/cert/crmf/CertificateRequestMessageBuilder;->createTime(Ljava/util/Date;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/spongycastle/asn1/crmf/OptionalValidity;-><init>(Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/Time;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->setValidity(Lorg/spongycastle/asn1/crmf/OptionalValidity;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    return-object p0
.end method
