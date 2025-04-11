.class public final Lcom/google/protobuf/tb;
.super Lcom/google/protobuf/vb;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Lcom/google/protobuf/tb;->b:I

    invoke-direct {p0, p1}, Lcom/google/protobuf/vb;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(J[BJJ)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/tb;->b:I

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

.method public final d(JLjava/lang/Object;)Z
    .locals 2

    iget p0, p0, Lcom/google/protobuf/tb;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->i(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->j(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_0

    :goto_0
    return v0

    :goto_1
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_3

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->i(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->j(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_2

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(J)B
    .locals 0

    iget p0, p0, Lcom/google/protobuf/tb;->b:I

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

.method public final f(JLjava/lang/Object;)B
    .locals 0

    iget p0, p0, Lcom/google/protobuf/tb;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->i(JLjava/lang/Object;)B

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->j(JLjava/lang/Object;)B

    move-result p0

    :goto_0
    return p0

    :goto_1
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->i(JLjava/lang/Object;)B

    move-result p0

    goto :goto_2

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/wb;->j(JLjava/lang/Object;)B

    move-result p0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(JLjava/lang/Object;)D
    .locals 1

    iget v0, p0, Lcom/google/protobuf/tb;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/protobuf/vb;->k(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :goto_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/protobuf/vb;->k(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(JLjava/lang/Object;)F
    .locals 1

    iget v0, p0, Lcom/google/protobuf/tb;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/protobuf/vb;->i(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/protobuf/vb;->i(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(J)J
    .locals 0

    iget p0, p0, Lcom/google/protobuf/tb;->b:I

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

.method public final n(Ljava/lang/Object;JZ)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/tb;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_0

    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/wb;->q(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/wb;->r(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :goto_1
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_1

    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/wb;->q(Ljava/lang/Object;JB)V

    goto :goto_2

    :cond_1
    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/wb;->r(Ljava/lang/Object;JB)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ljava/lang/Object;JB)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/tb;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/wb;->q(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/wb;->r(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :goto_1
    sget-boolean p0, Lcom/google/protobuf/wb;->h:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/wb;->q(Ljava/lang/Object;JB)V

    goto :goto_2

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/wb;->r(Ljava/lang/Object;JB)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Ljava/lang/Object;JD)V
    .locals 6

    iget v1, p0, Lcom/google/protobuf/tb;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/vb;->s(Ljava/lang/Object;JJ)V

    return-void

    :goto_0
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/vb;->s(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;JF)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/tb;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/google/protobuf/vb;->r(IJLjava/lang/Object;)V

    return-void

    :goto_0
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/google/protobuf/vb;->r(IJLjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
