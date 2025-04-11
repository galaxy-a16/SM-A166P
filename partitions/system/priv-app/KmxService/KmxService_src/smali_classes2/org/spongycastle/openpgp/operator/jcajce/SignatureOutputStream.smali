.class Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private sig:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;->sig:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;->sig:Ljava/security/Signature;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signature update caused exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signature update caused exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "signature update caused exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p2}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
