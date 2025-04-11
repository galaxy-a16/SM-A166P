.class public Lorg/bouncycastle/crypto/signers/Ed448Signer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

.field private final context:[B

.field private forSigning:Z

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;-><init>(Lorg/bouncycastle/crypto/signers/Ed448Signer$1;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    iget-object p0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    invoke-virtual {v1, v0, p0}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->generateSignature(Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Ed448Signer not initialised for signature generation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed448Signer;->reset()V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    iget-object p0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    invoke-virtual {v1, v0, p0, p1}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->verifySignature(Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;[B[B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ed448Signer not initialised for verification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
