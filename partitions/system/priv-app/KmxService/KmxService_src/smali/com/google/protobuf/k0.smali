.class public final Lcom/google/protobuf/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t9;


# instance fields
.field public final a:Lcom/google/protobuf/i0;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/i0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    iput-object p0, p1, Lcom/google/protobuf/i0;->d:Lcom/google/protobuf/k0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->u()I

    move-result p0

    return p0
.end method

.method public final B()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->A()I

    move-result p0

    return p0
.end method

.method public final C(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->x()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final D(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/v3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/v3;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->T(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->o()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/v3;->c(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->o()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/v3;->c(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->T(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->o()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, p0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->o()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final E(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/t7;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t7;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->v()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->v()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->v()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final F(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/t7;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t7;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->T(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->T(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, p0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final G()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final I(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/t7;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t7;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->T(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->T(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, p0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final J(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/w6;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/w6;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final K(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/w6;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/w6;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final L(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/k0;->c:I

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/k0;->c:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/z9;->c(Ljava/lang/Object;Lcom/google/protobuf/t9;Lcom/google/protobuf/t4;)V

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    iget p2, p0, Lcom/google/protobuf/k0;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/protobuf/k0;->c:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/protobuf/k0;->c:I

    throw p1
.end method

.method public final M(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->H()I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/i0;->a:I

    iget v3, v0, Lcom/google/protobuf/i0;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/i0;->l(I)I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/z9;->c(Ljava/lang/Object;Lcom/google/protobuf/t9;Lcom/google/protobuf/t4;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i0;->a(I)V

    iget p0, v0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lcom/google/protobuf/i0;->a:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/i0;->k(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final N(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/protobuf/j0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->c()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->z()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->j()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->g()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->s()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->B()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->Q(I)V

    sget-object p1, Lcom/google/protobuf/q9;->c:Lcom/google/protobuf/q9;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/q9;->a(Ljava/lang/Class;)Lcom/google/protobuf/z9;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/protobuf/k0;->M(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    invoke-interface {p1, p2}, Lcom/google/protobuf/z9;->b(Ljava/lang/Object;)V

    return-object p2

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->G()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->A()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->e()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->x()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->o()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final O(Ljava/util/List;Z)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/protobuf/m7;

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/m7;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->x()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/m7;->y(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget p2, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/k0;->H()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->Q(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->E()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v3, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v3, :cond_2

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final P(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final Q(I)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final R()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    iget p0, p0, Lcom/google/protobuf/k0;->c:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/i0;->J(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final S(I)V
    .locals 0

    and-int/lit8 p0, p1, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final T(I)V
    .locals 0

    and-int/lit8 p0, p1, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/w6;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/w6;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->C()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->C()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->p()I

    move-result p0

    return p0
.end method

.method public final c()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/w6;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/w6;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->S(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int v4, p0, p1

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->q()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->S(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, v0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, p0, :cond_a

    :goto_0
    return-void
.end method

.method public final e()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/w6;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/w6;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->S(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int v4, p0, p1

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->A()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->S(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, v0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, p0, :cond_a

    :goto_0
    return-void
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->C()I

    move-result p0

    return p0
.end method

.method public final h(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/t7;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t7;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->D()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->D()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->D()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final i(Ljava/util/List;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/protobuf/k0;->L(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    invoke-interface {p2, v1}, Lcom/google/protobuf/z9;->b(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {v1}, Lcom/google/protobuf/i0;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/k0;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/k0;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final j()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/w6;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/w6;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/w6;->c(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/t;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->m()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t;->c(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->m()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t;->c(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final m(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/k0;->L(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->q()I

    move-result p0

    return p0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->m()Z

    move-result p0

    return p0
.end method

.method public final p(Ljava/util/List;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcom/google/protobuf/z9;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/protobuf/k0;->M(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    invoke-interface {p2, v1}, Lcom/google/protobuf/z9;->b(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {v1}, Lcom/google/protobuf/i0;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/k0;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/k0;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k0;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/protobuf/k0;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/k0;->b:I

    :goto_0
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/google/protobuf/k0;->c:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final r(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k0;->O(Ljava/util/List;Z)V

    return-void
.end method

.method public final readDouble()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->o()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->s()F

    move-result p0

    return p0
.end method

.method public final s()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/k0;->M(Ljava/lang/Object;Lcom/google/protobuf/z9;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public final u(Ljava/util/Map;Lcom/google/protobuf/b8;Lcom/google/protobuf/t4;)V
    .locals 9

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object v1, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {v1}, Lcom/google/protobuf/i0;->H()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/i0;->l(I)I

    move-result v2

    iget-object v3, p2, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    move-object v5, v4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->q()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_5

    invoke-virtual {v1}, Lcom/google/protobuf/i0;->g()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    const-string v8, "Unable to parse map entry."

    if-eq v6, v7, :cond_3

    if-eq v6, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->R()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iget-object v6, p2, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p3}, Lcom/google/protobuf/k0;->N(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget-object v6, p2, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v7}, Lcom/google/protobuf/k0;->N(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/k0;->R()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/i0;->k(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/i0;->k(I)V

    throw p0
.end method

.method public final v(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/t7;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t7;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->I()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->I()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/t7;->c(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->I()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k0;->P(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void
.end method

.method public final w(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k0;->O(Ljava/util/List;Z)V

    return-void
.end method

.method public final x()Lcom/google/protobuf/ByteString;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final y(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/l5;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/l5;

    iget p1, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->s()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/l5;->c(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k0;->S(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int v4, p0, p1

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->s()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l5;->c(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/k0;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->s()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/k0;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/k0;->d:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->H()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->S(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result p0

    add-int/2addr p0, v0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/i0;->s()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/i0;->f()I

    move-result v0

    if-lt v0, p0, :cond_a

    :goto_0
    return-void
.end method

.method public final z()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/k0;->Q(I)V

    iget-object p0, p0, Lcom/google/protobuf/k0;->a:Lcom/google/protobuf/i0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->H()I

    move-result p0

    return p0
.end method
