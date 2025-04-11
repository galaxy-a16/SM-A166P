.class Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;I)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    iput p2, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    return p0
.end method

.method public getEntropy()[B
    .locals 1

    iget v0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {p0}, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->access$100(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {p0}, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->access$000(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;)Z

    move-result p0

    return p0
.end method
