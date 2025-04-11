.class public Lorg/spongycastle/jcajce/provider/symmetric/DES$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "org.spongycastle.jcajce.provider.symmetric"

.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/spongycastle/jcajce/provider/symmetric/DES;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method

.method private addAlias(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Alg.Alias.KeyGenerator."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Alg.Alias.KeyFactory."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/spongycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    const-string v2, "$ECB"

    const-string v3, "Cipher.DES"

    invoke-static {v0, v1, v2, p1, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v0, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "$CBC"

    const-string v3, "Cipher"

    invoke-static {v1, v2, p1, v3, v0}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "DES"

    invoke-direct {p0, p1, v0, v2}, Lorg/spongycastle/jcajce/provider/symmetric/DES$Mappings;->addAlias(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$RFC3211"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Cipher.DESRFC3211WRAP"

    invoke-interface {p1, v3, p0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$KeyGenerator"

    const-string v4, "KeyGenerator.DES"

    invoke-static {p0, v3, p1, v4, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$KeyFactory"

    const-string v4, "SecretKeyFactory.DES"

    invoke-static {p0, v3, p1, v4, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$CMAC"

    const-string v4, "Mac.DESCMAC"

    invoke-static {p0, v3, p1, v4, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$CBCMAC"

    const-string v4, "Mac.DESMAC"

    invoke-static {p0, v3, p1, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DES"

    const-string v3, "DESMAC"

    const-string v4, "$DESCFB8"

    invoke-static {p1, p0, v3, v1, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Mac.DESMAC/CFB8"

    invoke-interface {p1, v3, p0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DES/CFB8"

    const-string v3, "DESMAC/CFB8"

    invoke-interface {p1, p0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$DES64"

    const-string v4, "Mac.DESMAC64"

    invoke-static {p0, v1, v3, p1, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DES64"

    const-string v3, "DESMAC64"

    const-string v4, "$DES64with7816d4"

    invoke-static {p1, p0, v3, v1, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Mac.DESMAC64WITHISO7816-4PADDING"

    invoke-interface {p1, v3, p0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DES64WITHISO7816-4PADDING"

    const-string v3, "DESMAC64WITHISO7816-4PADDING"

    invoke-interface {p1, p0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DESISO9797ALG1MACWITHISO7816-4PADDING"

    invoke-interface {p1, p0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DESISO9797ALG1WITHISO7816-4PADDING"

    invoke-interface {p1, p0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$DES9797Alg3"

    const-string v4, "Mac.DESWITHISO9797"

    invoke-static {p0, v1, v3, p1, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.DESISO9797MAC"

    const-string v4, "DESWITHISO9797"

    invoke-static {p1, p0, v4, v1, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Mac.ISO9797ALG3MAC"

    invoke-interface {p1, v3, p0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.ISO9797ALG3"

    const-string v3, "ISO9797ALG3MAC"

    invoke-interface {p1, p0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$DES9797Alg3with7816d4"

    const-string v4, "Mac.ISO9797ALG3WITHISO7816-4PADDING"

    invoke-static {p0, v1, v3, p1, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Mac.ISO9797ALG3MACWITHISO7816-4PADDING"

    const-string v3, "ISO9797ALG3WITHISO7816-4PADDING"

    invoke-interface {p1, p0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "AlgorithmParameters.DES"

    const-string v3, "org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters"

    invoke-interface {p1, p0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters"

    invoke-static {p1, p0, v0, v2, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "$AlgParamGen"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "AlgorithmParameterGenerator.DES"

    invoke-interface {p1, v3, p0}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Alg.Alias.AlgorithmParameterGenerator."

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, v2, v1}, Lorg/bouncycastle/cert/a;->t(Ljava/lang/StringBuilder;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "$PBEWithMD2"

    const-string v2, "Cipher.PBEWITHMD2ANDDES"

    invoke-static {p0, v0, p1, v2, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "$PBEWithMD5"

    const-string v2, "Cipher.PBEWITHMD5ANDDES"

    invoke-static {p0, v0, p1, v2, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "$PBEWithSHA1"

    const-string v2, "Cipher.PBEWITHSHA1ANDDES"

    invoke-static {p0, v0, p1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object p0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "Alg.Alias.Cipher"

    const-string v2, "PBEWITHMD2ANDDES"

    invoke-interface {p1, v0, p0, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "PBEWITHMD5ANDDES"

    invoke-interface {p1, v0, v3, v4}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v5, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "PBEWITHSHA1ANDDES"

    invoke-interface {p1, v0, v5, v6}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHMD2ANDDES-CBC"

    invoke-interface {p1, v0, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHMD5ANDDES-CBC"

    invoke-interface {p1, v0, v4}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDDES-CBC"

    invoke-interface {p1, v0, v6}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$PBEWithMD2KeyFactory"

    const-string v8, "SecretKeyFactory.PBEWITHMD2ANDDES"

    invoke-static {v0, v1, v7, p1, v8}, Lorg/bouncycastle/cert/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "$PBEWithMD5KeyFactory"

    const-string v8, "SecretKeyFactory.PBEWITHMD5ANDDES"

    invoke-static {v0, v1, v7, p1, v8}, Lorg/bouncycastle/cert/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "$PBEWithSHA1KeyFactory"

    const-string v8, "SecretKeyFactory.PBEWITHSHA1ANDDES"

    invoke-static {v0, v1, v7, p1, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDDES-CBC"

    invoke-interface {p1, v0, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC"

    invoke-interface {p1, v0, v4}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC"

    invoke-interface {p1, v0, v6}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1, v4, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->i(Ljava/lang/StringBuilder;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v5, p1, v6}, Lorg/spongycastle/jcajce/provider/digest/a;->q(Ljava/lang/StringBuilder;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    return-void
.end method
