.class public Lorg/bouncycastle/est/HttpAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTAuth;


# static fields
.field private static final digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private static final validParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private final nonceGenerator:Ljava/security/SecureRandom;

.field private final password:[C

.field private final realm:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "realm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "nonce"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "opaque"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "algorithm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "qop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    iput-object p4, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    iput-object p5, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 6

    .line 3
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 6

    .line 4
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/est/HttpAuth;Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/HttpAuth;->doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bouncycastle/est/HttpAuth;)[C
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    return-object p0
.end method

.method private doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "WWW-Authenticate"

    const-string v3, "Digest"

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v4

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "\'"

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognised entry in WWW-Authenticate header: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "realm"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "nonce"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "opaque"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "algorithm"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "qop"

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p1, v11

    iget-object v11, v0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Supplied realm \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not match server realm \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x191

    invoke-direct {v1, v0, v12, v2, v12}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_3
    :goto_1
    if-nez v14, :cond_4

    const-string v14, "MD5"

    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {v14}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_13

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    :goto_2
    array-length v14, v1

    move-object/from16 v18, v13

    const-string v13, "auth"

    move-object/from16 v19, v15

    const-string v15, "auth-int"

    if-eq v12, v14, :cond_8

    aget-object v14, v1, v12

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    aget-object v13, v1, v12

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    const-string v1, "QoP value unknown: \'"

    invoke-static {v1, v12, v7}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    aget-object v13, v1, v12

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, v18

    move-object/from16 v15, v19

    goto :goto_2

    :cond_8
    invoke-direct {v0, v11}, Lorg/bouncycastle/est/HttpAuth;->lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v7

    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    const/16 v14, 0xa

    invoke-direct {v0, v14}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v9

    iget-object v9, v0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v9, ":"

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v21, v6

    iget-object v6, v0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    invoke-direct {v0, v12, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;[C)V

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v6

    const-string v7, "-SESS"

    invoke-virtual {v11, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v7

    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-static {v6}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v12, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v10}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v6

    :cond_9
    invoke-static {v6}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v7

    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v8

    move-object/from16 v23, v15

    invoke-interface {v8}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/bouncycastle/est/ESTRequest;->writeData(Ljava/io/OutputStream;)V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    invoke-interface {v8}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v8

    invoke-direct {v0, v12, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v2}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v12, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object/from16 v23, v15

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct {v0, v12, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v12, v2}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_b
    :goto_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "missing"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v12, "00000001"

    invoke-direct {v0, v7, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7, v10}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    if-eqz v8, :cond_c

    invoke-direct {v0, v7, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v8, v23

    goto :goto_7

    :cond_c
    invoke-direct {v0, v7, v12}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v8, v23

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_6
    invoke-direct {v0, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "username"

    iget-object v7, v0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v20

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "uri"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "response"

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "cnonce"

    const-string v7, "nc"

    if-eqz v2, :cond_e

    move-object/from16 v2, v19

    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    move-object/from16 v2, v19

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v5, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-virtual {v5, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object/from16 v1, v18

    invoke-virtual {v5, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    new-instance v0, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {v0, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v0

    const-string v1, "Authorization"

    move-object/from16 v2, v16

    invoke-static {v2, v5}, Lorg/bouncycastle/est/HttpUtil;->mergeCSL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "auth digest algorithm unknown: "

    invoke-static {v1, v11}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    const-string v1, "QoP value is empty."

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    const-string v1, "Qop is not defined in WWW-Authenticate header."

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    const-string v1, "WWW-Authenticate no algorithm defined."

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to process URL in request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    new-instance v3, Lorg/bouncycastle/est/ESTException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parsing WWW-Authentication header: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v0, v5, v6}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v3
.end method

.method private getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {p0, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/io/IOException;

    const-string v0, "cannot create digest calculator for "

    const-string v1, ": "

    invoke-static {v0, p1, v1}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    const-string p0, "-SESS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x5

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p0, "SHA-512-256"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p0, p1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method private makeNonce(I)Ljava/lang/String;
    .locals 0

    new-array p1, p1, [B

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private update(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private update(Ljava/io/OutputStream;[C)V
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/est/HttpAuth$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/HttpAuth$1;-><init>(Lorg/bouncycastle/est/HttpAuth;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    return-void
.end method
