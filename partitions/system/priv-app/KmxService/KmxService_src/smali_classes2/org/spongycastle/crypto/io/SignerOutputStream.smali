.class public Lorg/spongycastle/crypto/io/SignerOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected signer:Lorg/spongycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Signer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    return-void
.end method


# virtual methods
.method public getSigner()Lorg/spongycastle/crypto/Signer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    return-object p0
.end method

.method public write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Signer;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    return-void
.end method
