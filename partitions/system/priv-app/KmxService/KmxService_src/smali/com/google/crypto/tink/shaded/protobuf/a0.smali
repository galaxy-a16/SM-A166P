.class public final Lcom/google/crypto/tink/shaded/protobuf/a0;
.super Lcom/google/crypto/tink/shaded/protobuf/c0;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/a0;->b:I

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/c0;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(J[BJ)V
    .locals 0

    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/a0;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(J)B
    .locals 0

    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/a0;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(JLjava/lang/Object;)B
    .locals 5

    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/a0;->b:I

    const/4 v0, 0x3

    const-wide/16 v1, 0x3

    const-wide/16 v3, -0x4

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-boolean p0, Lcom/google/crypto/tink/shaded/protobuf/d0;->i:Z

    if-eqz p0, :cond_0

    and-long/2addr v3, p1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    invoke-virtual {p0, p3, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/c0;->f(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    :goto_0
    and-long/2addr p1, v1

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    goto :goto_1

    :cond_0
    and-long/2addr v3, p1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    invoke-virtual {p0, p3, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/c0;->f(Ljava/lang/Object;J)I

    move-result p0

    goto :goto_0

    :goto_1
    return p0

    :goto_2
    sget-boolean p0, Lcom/google/crypto/tink/shaded/protobuf/d0;->i:Z

    if-eqz p0, :cond_1

    and-long/2addr v3, p1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    invoke-virtual {p0, p3, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/c0;->f(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    :goto_3
    and-long/2addr p1, v1

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    goto :goto_4

    :cond_1
    and-long/2addr v3, p1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    invoke-virtual {p0, p3, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/c0;->f(Ljava/lang/Object;J)I

    move-result p0

    goto :goto_3

    :goto_4
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(J)J
    .locals 0

    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/a0;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
