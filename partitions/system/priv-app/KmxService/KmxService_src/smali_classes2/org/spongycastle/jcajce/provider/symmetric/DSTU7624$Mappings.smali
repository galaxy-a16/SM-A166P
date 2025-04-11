.class public Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$Mappings;
.super Lorg/spongycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624;
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

    const-class v0, Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 28

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    const-string v3, "$AlgParams128"

    const-string v4, "AlgorithmParameters.DSTU7624"

    invoke-static {v1, v2, v3, v0, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v1, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "$AlgParams"

    const-string v4, "AlgorithmParameters"

    invoke-static {v2, v3, v0, v4, v1}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v5, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v2, v3, v0, v4, v5}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v6, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v6, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$AlgParamGen128"

    const-string v7, "AlgorithmParameterGenerator.DSTU7624"

    invoke-static {v3, v2, v4, v0, v7}, Lorg/bouncycastle/cert/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v2, v4}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlgorithmParameterGenerator"

    invoke-static {v0, v4, v1, v3, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$AlgParamGen256"

    invoke-static {v3, v7, v0, v4, v5}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$AlgParamGen512"

    invoke-static {v3, v2, v7}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v6, v3, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_128"

    const-string v7, "Cipher.DSTU7624"

    invoke-static {v3, v4, v0, v7, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "Cipher.DSTU7624-128"

    invoke-static {v3, v4, v0, v7, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_256"

    const-string v7, "Cipher.DSTU7624-256"

    invoke-static {v3, v4, v0, v7, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_512"

    const-string v7, "Cipher.DSTU7624-512"

    invoke-static {v3, v4, v0, v7}, Lorg/spongycastle/jcajce/provider/digest/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v3, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "$ECB128"

    const-string v7, "Cipher"

    invoke-static {v2, v4, v0, v7, v3}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v4, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "$ECB256"

    invoke-static {v2, v8, v0, v7, v4}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$ECB512"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$CBC128"

    invoke-static {v9, v2, v10}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v1, v9, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$CBC256"

    invoke-static {v9, v10, v0, v7, v5}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$CBC512"

    invoke-static {v9, v2, v10}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v6, v9}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v9, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "$OFB128"

    invoke-static {v2, v10, v0, v7, v9}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v10, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "$OFB256"

    invoke-static {v2, v11, v0, v7, v10}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "$OFB512"

    invoke-static {v2, v12, v0, v7, v11}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "$CFB128"

    invoke-static {v2, v13, v0, v7, v12}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "$CFB256"

    invoke-static {v2, v14, v0, v7, v13}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v14, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "$CFB512"

    invoke-static {v2, v15, v0, v7, v14}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v15, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 p0, v14

    const-string v14, "$CTR128"

    invoke-static {v2, v14, v0, v7, v15}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v14, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v15

    const-string v15, "$CTR256"

    invoke-static {v2, v15, v0, v7, v14}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v15, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v14

    const-string v14, "$CTR512"

    invoke-static {v2, v14, v0, v7, v15}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v14, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v15

    const-string v15, "$CCM128"

    invoke-static {v2, v15, v0, v7, v14}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v15, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v14

    const-string v14, "$CCM256"

    invoke-static {v2, v14, v0, v7, v15}, Lorg/bouncycastle/cert/a;->z(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v14, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v13

    const-string v13, "$CCM512"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v7, v14, v13}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "$Wrap"

    const-string v15, "Cipher.DSTU7624KW"

    invoke-static {v7, v2, v13, v0, v15}, Lorg/spongycastle/jcajce/provider/digest/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624WRAP"

    const-string v13, "DSTU7624KW"

    const-string v15, "$Wrap128"

    invoke-static {v0, v7, v13, v2, v15}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Cipher.DSTU7624-128KW"

    invoke-interface {v0, v13, v7}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Alg.Alias.Cipher."

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v14

    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-128KW"

    invoke-interface {v0, v7, v14}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624-128WRAP"

    move-object/from16 v23, v12

    const-string v12, "$Wrap256"

    invoke-static {v0, v7, v14, v2, v12}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "Cipher.DSTU7624-256KW"

    invoke-interface {v0, v12, v7}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-256KW"

    invoke-interface {v0, v7, v14}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624-256WRAP"

    move-object/from16 v24, v11

    const-string v11, "$Wrap512"

    invoke-static {v0, v7, v14, v2, v11}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "Cipher.DSTU7624-512KW"

    invoke-interface {v0, v11, v7}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "DSTU7624-512KW"

    invoke-interface {v0, v7, v13}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624-512WRAP"

    const-string v14, "$GMAC"

    invoke-static {v0, v7, v13, v2, v14}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Mac.DSTU7624GMAC"

    const-string v14, "$GMAC128"

    invoke-static {v0, v13, v7, v2, v14}, Lorg/spongycastle/jcajce/provider/digest/a;->f(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Mac.DSTU7624-128GMAC"

    invoke-interface {v0, v13, v7}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Alg.Alias.Mac."

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v10

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "DSTU7624-128GMAC"

    invoke-interface {v0, v7, v10}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$GMAC256"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Mac.DSTU7624-256GMAC"

    invoke-interface {v0, v10, v7}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v14

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-256GMAC"

    invoke-interface {v0, v7, v14}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "$GMAC512"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "Mac.DSTU7624-512GMAC"

    invoke-interface {v0, v14, v7}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-512GMAC"

    invoke-interface {v0, v7, v14}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "$KeyGen"

    move-object/from16 v27, v13

    const-string v13, "KeyGenerator.DSTU7624"

    invoke-static {v7, v14, v0, v13, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "$KeyGen128"

    const-string v14, "KeyGenerator"

    invoke-static {v7, v13, v0, v14, v15}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "$KeyGen256"

    invoke-static {v7, v2, v15}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v14, v12, v7, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "$KeyGen512"

    invoke-static {v7, v12, v0, v14, v11}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v7, v2, v13}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v14, v3, v7, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v15, v0, v14, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v2, v12}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v14, v8, v3, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v13, v0, v14, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v15}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v14, v5, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v12, v0, v14, v6}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v13}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v14, v9, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v25

    invoke-static {v1, v15, v0, v14, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v12}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-static {v0, v14, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v23

    invoke-static {v1, v13, v0, v14, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v15}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-static {v0, v14, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-static {v1, v12, v0, v14, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v13}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-static {v0, v14, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-static {v1, v15, v0, v14, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v12}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-static {v0, v14, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-static {v1, v13, v0, v14, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v15}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-static {v0, v14, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-static {v1, v12, v0, v14, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v13}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v26

    invoke-static {v0, v14, v3, v1, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->j(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v15, v0, v14, v10}, Lorg/spongycastle/jcajce/provider/digest/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v12}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-interface {v0, v14, v2, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method
