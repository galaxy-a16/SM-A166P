.class Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/eac/operator/EACSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->build(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/security/PrivateKey;)Lorg/spongycastle/eac/operator/EACSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;

.field final synthetic val$sigStream:Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

.field final synthetic val$usageOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->this$0:Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;

    iput-object p2, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$usageOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object p3, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$sigStream:Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$sigStream:Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

    return-object p0
.end method

.method public getSignature()[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$sigStream:Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->getSignature()[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$usageOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder;->access$000([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception obtaining signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUsageIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$usageOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method
