.class Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMSMacCalculator"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private encKey:Ljavax/crypto/SecretKey;

.field private mac:Ljavax/crypto/Mac;

.field final synthetic this$0:Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1

    iput-object p1, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->this$0:Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;->createKeyGenerator(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    if-nez p5, :cond_0

    new-instance p5, Ljava/security/SecureRandom;

    invoke-direct {p5}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    if-gez p3, :cond_1

    invoke-virtual {v0, p5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3, p5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    iput-object p3, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->encKey:Ljavax/crypto/SecretKey;

    if-nez p4, :cond_2

    invoke-static {p1}, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p3

    iget-object p4, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->encKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p3, p2, p4, p5}, Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;->generateParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_2
    invoke-static {p1}, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p3

    invoke-virtual {p3, p2, p4}, Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p1}, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->encKey:Ljavax/crypto/SecretKey;

    iget-object p3, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, p2, p3}, Lorg/spongycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->mac:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getKey()Lorg/spongycastle/operator/GenericKey;
    .locals 2

    new-instance v0, Lorg/spongycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p0, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->encKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getMac()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/spongycastle/jcajce/io/MacOutputStream;

    iget-object p0, p0, Lorg/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->mac:Ljavax/crypto/Mac;

    invoke-direct {v0, p0}, Lorg/spongycastle/jcajce/io/MacOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
