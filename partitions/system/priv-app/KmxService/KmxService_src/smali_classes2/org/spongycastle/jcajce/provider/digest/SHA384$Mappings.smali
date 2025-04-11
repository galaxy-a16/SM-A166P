.class public Lorg/spongycastle/jcajce/provider/digest/SHA384$Mappings;
.super Lorg/spongycastle/jcajce/provider/digest/DigestAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA384;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/spongycastle/jcajce/provider/digest/SHA384;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/digest/SHA384$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/digest/DigestAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/spongycastle/jcajce/provider/digest/SHA384$Mappings;->PREFIX:Ljava/lang/String;

    const-string v2, "$Digest"

    const-string v3, "MessageDigest.SHA-384"

    invoke-static {v0, v1, v2, p1, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.MessageDigest.SHA384"

    const-string v2, "SHA-384"

    invoke-interface {p1, v0, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Alg.Alias.MessageDigest."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v3, p1, v2, v1}, Lorg/bouncycastle/cert/a;->t(Ljava/lang/StringBuilder;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$OldSHA384"

    const-string v3, "Mac.OLDHMACSHA384"

    invoke-static {v0, v2, p1, v3, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$HashMac"

    const-string v3, "Mac.PBEWITHHMACSHA384"

    invoke-static {v0, v2, p1, v3, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$KeyGenerator"

    invoke-static {v1, v2}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA384"

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/spongycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v0}, Lorg/spongycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlias(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method
