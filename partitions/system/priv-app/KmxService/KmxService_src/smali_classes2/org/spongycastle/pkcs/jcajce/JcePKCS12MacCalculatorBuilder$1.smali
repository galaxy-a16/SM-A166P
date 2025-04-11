.class Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->build([C)Lorg/spongycastle/operator/MacCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;

.field final synthetic val$key:Ljavax/crypto/SecretKey;

.field final synthetic val$mac:Ljavax/crypto/Mac;

.field final synthetic val$salt:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;[BLjavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->this$0:Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;

    iput-object p2, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->val$salt:[B

    iput-object p3, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->val$mac:Ljavax/crypto/Mac;

    iput-object p4, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->val$key:Ljavax/crypto/SecretKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->this$0:Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;

    invoke-static {v1}, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->access$000(Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    iget-object v3, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->val$salt:[B

    iget-object p0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->this$0:Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;

    invoke-static {p0}, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->access$100(Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;)I

    move-result p0

    invoke-direct {v2, v3, p0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public getKey()Lorg/spongycastle/operator/GenericKey;
    .locals 2

    new-instance v0, Lorg/spongycastle/operator/GenericKey;

    invoke-virtual {p0}, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object p0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->val$key:Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/operator/GenericKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getMac()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->val$mac:Ljavax/crypto/Mac;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/spongycastle/jcajce/io/MacOutputStream;

    iget-object p0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;->val$mac:Ljavax/crypto/Mac;

    invoke-direct {v0, p0}, Lorg/spongycastle/jcajce/io/MacOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
