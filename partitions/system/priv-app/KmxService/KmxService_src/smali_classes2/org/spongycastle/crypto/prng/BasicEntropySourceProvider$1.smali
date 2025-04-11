.class Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;I)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    iput p2, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->val$bitsRequired:I

    return p0
.end method

.method public getEntropy()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    invoke-static {v0}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->access$100(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    invoke-static {v0}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->access$100(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/crypto/prng/X931SecureRandom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    invoke-static {v0}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->access$100(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v0

    iget p0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    invoke-static {p0}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->access$100(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider$1;->this$0:Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    invoke-static {p0}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;->access$000(Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;)Z

    move-result p0

    return p0
.end method
