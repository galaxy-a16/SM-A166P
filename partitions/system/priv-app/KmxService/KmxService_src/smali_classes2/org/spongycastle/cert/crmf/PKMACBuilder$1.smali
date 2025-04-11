.class Lorg/spongycastle/cert/crmf/PKMACBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/cert/crmf/PKMACBuilder;->genCalculator(Lorg/spongycastle/asn1/cmp/PBMParameter;[C)Lorg/spongycastle/operator/MacCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field bOut:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lorg/spongycastle/cert/crmf/PKMACBuilder;

.field final synthetic val$key:[B

.field final synthetic val$params:Lorg/spongycastle/asn1/cmp/PBMParameter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/crmf/PKMACBuilder;Lorg/spongycastle/asn1/cmp/PBMParameter;[B)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->this$0:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    iput-object p2, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->val$params:Lorg/spongycastle/asn1/cmp/PBMParameter;

    iput-object p3, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->val$key:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->val$params:Lorg/spongycastle/asn1/cmp/PBMParameter;

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public getKey()Lorg/spongycastle/operator/GenericKey;
    .locals 2

    new-instance v0, Lorg/spongycastle/operator/GenericKey;

    invoke-virtual {p0}, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->val$key:[B

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/operator/GenericKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getMac()[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->this$0:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    invoke-static {v0}, Lorg/spongycastle/cert/crmf/PKMACBuilder;->access$000(Lorg/spongycastle/cert/crmf/PKMACBuilder;)Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->val$key:[B

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;->calculateMac([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Lorg/spongycastle/cert/crmf/CRMFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception calculating mac: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method
