.class public abstract Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    }
.end annotation


# instance fields
.field private final keyAndMask:I

.field private final layerAddress:I

.field private final treeAddress:J

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    return-void
.end method


# virtual methods
.method public final getKeyAndMask()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    return p0
.end method

.method public final getLayerAddress()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    return p0
.end method

.method public final getTreeAddress()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    return-wide v0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    return p0
.end method

.method public toByteArray()[B
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    const/16 v1, 0x1c

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    return-object v0
.end method
