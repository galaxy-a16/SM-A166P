.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final height:I

.field private final value:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->height:I

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->value:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->clone()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    return-object v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->height:I

    return p0
.end method

.method public getValue()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->value:[B

    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object p0

    return-object p0
.end method
