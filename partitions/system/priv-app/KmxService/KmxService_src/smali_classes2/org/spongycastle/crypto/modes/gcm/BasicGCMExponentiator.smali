.class public Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private x:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .locals 5

    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->oneAsInts()[I

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    iget-object p0, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[I

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object p0

    :cond_0
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    invoke-static {v0, p0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    :cond_1
    invoke-static {p0, p0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    const/4 v3, 0x1

    ushr-long/2addr p1, v3

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    :cond_2
    invoke-static {v0, p3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asBytes([I[B)V

    return-void
.end method

.method public init([B)V
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[I

    return-void
.end method
