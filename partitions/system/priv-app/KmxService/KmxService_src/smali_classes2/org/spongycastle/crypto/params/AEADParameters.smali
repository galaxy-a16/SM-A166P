.class public Lorg/spongycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private associatedText:[B

.field private key:Lorg/spongycastle/crypto/params/KeyParameter;

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/params/AEADParameters;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object p3, p0, Lorg/spongycastle/crypto/params/AEADParameters;->nonce:[B

    iput p2, p0, Lorg/spongycastle/crypto/params/AEADParameters;->macSize:I

    iput-object p4, p0, Lorg/spongycastle/crypto/params/AEADParameters;->associatedText:[B

    return-void
.end method


# virtual methods
.method public getAssociatedText()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/AEADParameters;->associatedText:[B

    return-object p0
.end method

.method public getKey()Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/AEADParameters;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    return-object p0
.end method

.method public getMacSize()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/params/AEADParameters;->macSize:I

    return p0
.end method

.method public getNonce()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/AEADParameters;->nonce:[B

    return-object p0
.end method
