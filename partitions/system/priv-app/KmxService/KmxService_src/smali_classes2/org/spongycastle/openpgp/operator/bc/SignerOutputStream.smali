.class Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private sig:Lorg/spongycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Signer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Signer;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/spongycastle/crypto/Signer;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    return-void
.end method
