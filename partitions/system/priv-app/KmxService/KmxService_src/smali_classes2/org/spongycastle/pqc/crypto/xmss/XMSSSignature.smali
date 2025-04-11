.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    }
.end annotation


# instance fields
.field private final index:I

.field private final random:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)V

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of random needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    return p0
.end method

.method public getRandom()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object p0

    return-object p0
.end method

.method public toByteArray()[B
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v2

    mul-int/2addr v2, v0

    const/4 v3, 0x4

    invoke-static {v0, v3, v1, v2}, Landroidx/activity/b;->a(IIII)I

    move-result v1

    new-array v1, v1, [B

    iget v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->getWOTSPlusSignature()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;->toByteArray()[[B

    move-result-object v2

    move v5, v3

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget-object v6, v2, v5

    invoke-static {v1, v6, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v4, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->getAuthPath()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->getAuthPath()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v2

    invoke-static {v1, v2, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
