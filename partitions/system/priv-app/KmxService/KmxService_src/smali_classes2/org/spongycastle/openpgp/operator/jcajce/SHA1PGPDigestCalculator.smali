.class Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;
    }
.end annotation


# instance fields
.field private digest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find SHA-1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;->digest:Ljava/security/MessageDigest;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method
