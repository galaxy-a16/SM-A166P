.class public Lorg/spongycastle/crypto/io/MacOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected mac:Lorg/spongycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method public getMac()[B
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    return-object v0
.end method

.method public write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    return-void
.end method
