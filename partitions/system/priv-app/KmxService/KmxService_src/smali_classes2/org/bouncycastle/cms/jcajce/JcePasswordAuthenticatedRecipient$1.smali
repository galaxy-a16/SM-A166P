.class Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;

.field final synthetic val$contentMacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$dataMac:Ljavax/crypto/Mac;

.field final synthetic val$secretKey:Ljava/security/Key;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljavax/crypto/Mac;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->this$0:Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$contentMacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$secretKey:Ljava/security/Key;

    iput-object p4, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$dataMac:Ljavax/crypto/Mac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$contentMacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$contentMacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$secretKey:Ljava/security/Key;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getMac()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$dataMac:Ljavax/crypto/Mac;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/io/MacOutputStream;

    iget-object p0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;->val$dataMac:Ljavax/crypto/Mac;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/io/MacOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
