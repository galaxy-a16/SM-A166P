.class Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANONYMOUS_SENDER:[B


# instance fields
.field private final digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

.field private final keyAlgorithm:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "416E6F6E796D6F75732053656E64657220202020"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->ANONYMOUS_SENDER:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iput p2, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->keyAlgorithm:I

    return-void
.end method

.method private static KDF(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/math/ec/ECPoint;I[B)[B
    .locals 3

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object p1

    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    new-array p1, p2, [B

    invoke-static {p0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static getKeyLen(I)I
    .locals 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "unknown symmetric algorithm ID: "

    invoke-static {v1, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x18

    return p0

    :cond_2
    const/16 p0, 0x10

    return p0
.end method


# virtual methods
.method public createKey(Lorg/spongycastle/math/ec/ECPoint;[B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget p0, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->keyAlgorithm:I

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->getKeyLen(I)I

    move-result p0

    invoke-static {v0, p1, p0, p2}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->KDF(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/math/ec/ECPoint;I[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception performing KDF: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
