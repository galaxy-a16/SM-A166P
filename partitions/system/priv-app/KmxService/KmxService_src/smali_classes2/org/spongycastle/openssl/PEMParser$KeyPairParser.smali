.class Lorg/spongycastle/openssl/PEMParser$KeyPairParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyPairParser"
.end annotation


# instance fields
.field private final pemKeyPairParser:Lorg/spongycastle/openssl/PEMKeyPairParser;

.field final synthetic this$0:Lorg/spongycastle/openssl/PEMParser;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMParser;Lorg/spongycastle/openssl/PEMKeyPairParser;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openssl/PEMParser$KeyPairParser;->this$0:Lorg/spongycastle/openssl/PEMParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/openssl/PEMParser$KeyPairParser;->pemKeyPairParser:Lorg/spongycastle/openssl/PEMKeyPairParser;

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/util/io/pem/PemHeader;

    invoke-virtual {v3}, Lorg/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Proc-Type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "4,ENCRYPTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEK-Info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object p1

    const-string v0, "exception decoding - please check password and data."

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;

    iget-object p0, p0, Lorg/spongycastle/openssl/PEMParser$KeyPairParser;->pemKeyPairParser:Lorg/spongycastle/openssl/PEMKeyPairParser;

    invoke-direct {v4, v2, v3, p1, p0}, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;-><init>(Ljava/lang/String;[B[BLorg/spongycastle/openssl/PEMKeyPairParser;)V

    return-object v4

    :cond_3
    iget-object p0, p0, Lorg/spongycastle/openssl/PEMParser$KeyPairParser;->pemKeyPairParser:Lorg/spongycastle/openssl/PEMKeyPairParser;

    invoke-interface {p0, p1}, Lorg/spongycastle/openssl/PEMKeyPairParser;->parse([B)Lorg/spongycastle/openssl/PEMKeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openssl/PEMException;

    if-eqz v1, :cond_4

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openssl/PEMException;

    if-eqz v1, :cond_5

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
