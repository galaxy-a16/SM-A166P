.class public abstract Le6/e;
.super Le6/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le6/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic B(Lu6/b;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    check-cast p1, Lu6/e;

    invoke-virtual/range {p0 .. p5}, Le6/e;->M(Lu6/e;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public E(Lu6/b;)I
    .locals 2

    check-cast p1, Lu6/e;

    iget-object v0, p1, Lu6/g;->c:Lf6/j;

    invoke-static {v0}, Lh3/a;->E(Lf6/j;)I

    move-result v0

    iget-object v1, p1, Lu6/h;->b:Lf6/h;

    invoke-virtual {v1}, Lf6/h;->c()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Le6/e;->K(Lu6/e;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public bridge synthetic F(Lu6/b;II)I
    .locals 0

    check-cast p1, Lu6/e;

    invoke-static {p1, p2, p3}, Le6/f;->J(Lu6/g;II)I

    move-result p0

    return p0
.end method

.method public G(Lu6/b;I)I
    .locals 0

    check-cast p1, Lu6/e;

    if-nez p2, :cond_1

    iget-object p1, p1, Lu6/e;->d:Lh8/b;

    invoke-virtual {p0}, Le6/e;->P()Lh8/b;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ll9/b;->W(I)I

    move-result p0

    add-int/2addr p0, p2

    :goto_0
    return p0
.end method

.method public I(Lu6/b;)I
    .locals 0

    check-cast p1, Lu6/e;

    invoke-virtual {p0, p1}, Le6/e;->L(Lu6/e;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public K(Lu6/e;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public L(Lu6/e;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final M(Lu6/e;Lio/netty/buffer/ByteBuf;III)V
    .locals 1

    invoke-virtual {p0}, Le6/e;->D()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, p1, p2}, Le6/e;->O(Lu6/e;Lio/netty/buffer/ByteBuf;)V

    iget-object p3, p1, Lu6/e;->d:Lh8/b;

    if-nez p4, :cond_0

    invoke-virtual {p0}, Le6/e;->P()Lh8/b;

    move-result-object p0

    if-eq p3, p0, :cond_2

    invoke-interface {p3}, Lh8/b;->getCode()I

    move-result p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lh8/b;->getCode()I

    move-result p3

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p4, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, p1, p2}, Le6/e;->N(Lu6/e;Lio/netty/buffer/ByteBuf;)V

    if-nez p5, :cond_1

    iget-object p0, p1, Lu6/g;->c:Lf6/j;

    if-eqz p0, :cond_1

    const/16 p3, 0x1f

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :cond_1
    const/4 p0, 0x1

    if-gt p5, p0, :cond_2

    iget-object p0, p1, Lu6/h;->b:Lf6/h;

    invoke-virtual {p0, p2}, Lf6/h;->b(Lio/netty/buffer/ByteBuf;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public N(Lu6/e;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    return-void
.end method

.method public O(Lu6/e;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    return-void
.end method

.method public abstract P()Lh8/b;
.end method

.method public bridge synthetic h(Lu6/c;Ld/m;)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p1, Lu6/e;

    invoke-virtual {p0, p1, p2}, Ld6/e;->y(Lu6/b;Ld/m;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method
