.class public abstract Lcom/google/crypto/tink/shaded/protobuf/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/crypto/tink/shaded/protobuf/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/d0;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/d0;->e:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/e0;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/e0;-><init>(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/e0;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/e0;-><init>(I)V

    :goto_1
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    return-void
.end method

.method public static a(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static b(III)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
