.class public abstract Lcom/google/protobuf/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Lcom/google/protobuf/kb;

.field public static final c:Lcom/google/protobuf/kb;

.field public static final d:Lcom/google/protobuf/qb;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-class v0, Lcom/google/protobuf/GeneratedMessageV3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/protobuf/aa;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/protobuf/aa;->z(Z)Lcom/google/protobuf/kb;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/aa;->b:Lcom/google/protobuf/kb;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/aa;->z(Z)Lcom/google/protobuf/kb;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/aa;->c:Lcom/google/protobuf/kb;

    new-instance v0, Lcom/google/protobuf/qb;

    invoke-direct {v0}, Lcom/google/protobuf/qb;-><init>()V

    sput-object v0, Lcom/google/protobuf/aa;->d:Lcom/google/protobuf/qb;

    return-void
.end method

.method public static A(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/kb;)V
    .locals 2

    if-eqz p3, :cond_0

    int-to-long v0, p2

    check-cast p4, Lcom/google/protobuf/qb;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lcom/google/protobuf/pb;

    shl-int/lit8 p0, p1, 0x3

    or-int/lit8 p0, p0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lcom/google/protobuf/pb;->a(ILjava/lang/Object;)V

    return-void

    :cond_0
    check-cast p4, Lcom/google/protobuf/qb;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(ILjava/util/List;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/n0;->c(I)I

    return-void
.end method

.method public static b(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/List;I)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/n0;->r(I)I

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/n0;->e(Lcom/google/protobuf/ByteString;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(ILjava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/aa;->e(Ljava/util/List;)I

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    return-void
.end method

.method public static e(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/w6;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/protobuf/w6;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w6;->f(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n0;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n0;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static f(ILjava/util/List;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/n0;->h(I)I

    return-void
.end method

.method public static g(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static h(ILjava/util/List;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/n0;->i(I)I

    return-void
.end method

.method public static i(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static j(ILjava/util/List;Lcom/google/protobuf/z9;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r8;

    invoke-static {p0, v2, p2}, Lcom/google/protobuf/n0;->k(ILcom/google/protobuf/r8;Lcom/google/protobuf/z9;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static k(ILjava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/aa;->l(Ljava/util/List;)I

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    return-void
.end method

.method public static l(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/w6;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/protobuf/w6;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w6;->f(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n0;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n0;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static m(ILjava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/aa;->n(Ljava/util/List;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    return-void
.end method

.method public static n(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/t7;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/protobuf/t7;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t7;->e(I)V

    iget-object v3, p0, Lcom/google/protobuf/t7;->b:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/google/protobuf/n0;->v(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/n0;->v(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static o(ILjava/lang/Object;Lcom/google/protobuf/z9;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/r8;

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    check-cast p1, Lcom/google/protobuf/f;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/f;->getSerializedSize(Lcom/google/protobuf/z9;)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    return-void
.end method

.method public static p(ILjava/util/List;Lcom/google/protobuf/z9;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/r8;

    check-cast v1, Lcom/google/protobuf/f;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/f;->getSerializedSize(Lcom/google/protobuf/z9;)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/n0;->t(I)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static q(ILjava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/aa;->r(Ljava/util/List;)I

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    return-void
.end method

.method public static r(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/w6;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/protobuf/w6;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w6;->f(I)I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/protobuf/n0;->t(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/protobuf/n0;->t(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static s(ILjava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/aa;->t(Ljava/util/List;)I

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    return-void
.end method

.method public static t(Ljava/util/List;)I
    .locals 9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/t7;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/protobuf/t7;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t7;->e(I)V

    iget-object v5, p0, Lcom/google/protobuf/t7;->b:[J

    aget-wide v5, v5, v1

    shl-long v7, v5, v4

    shr-long/2addr v5, v3

    xor-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/google/protobuf/n0;->v(J)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    shl-long v7, v5, v4

    shr-long/2addr v5, v3

    xor-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/google/protobuf/n0;->v(J)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static u(Ljava/util/List;I)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/n0;->r(I)I

    instance-of p1, p0, Lcom/google/protobuf/m7;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    check-cast p0, Lcom/google/protobuf/m7;

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Lcom/google/protobuf/m7;->b0(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/protobuf/ByteString;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/n0;->e(Lcom/google/protobuf/ByteString;)I

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/n0;->q(Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/protobuf/ByteString;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/n0;->e(Lcom/google/protobuf/ByteString;)I

    goto :goto_3

    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/n0;->q(Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static v(ILjava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/aa;->w(Ljava/util/List;)I

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    return-void
.end method

.method public static w(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/w6;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/protobuf/w6;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w6;->f(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n0;->t(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n0;->t(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static x(ILjava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/aa;->y(Ljava/util/List;)I

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    return-void
.end method

.method public static y(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/t7;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/protobuf/t7;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t7;->e(I)V

    iget-object v3, p0, Lcom/google/protobuf/t7;->b:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/google/protobuf/n0;->v(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/n0;->v(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static z(Z)Lcom/google/protobuf/kb;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/protobuf/rb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/kb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    return-object v0
.end method
