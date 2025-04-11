.class public abstract Le6/d;
.super Le6/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le6/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic B(Lu6/b;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    check-cast p1, Lu6/d;

    invoke-virtual/range {p0 .. p5}, Le6/e;->M(Lu6/e;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public final E(Lu6/b;)I
    .locals 0

    check-cast p1, Lu6/d;

    iget-object p0, p1, Lu6/g;->c:Lf6/j;

    invoke-static {p0}, Lh3/a;->E(Lf6/j;)I

    move-result p0

    iget-object p1, p1, Lu6/h;->b:Lf6/h;

    invoke-virtual {p1}, Lf6/h;->c()I

    move-result p1

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x0

    return p1
.end method

.method public final bridge synthetic F(Lu6/b;II)I
    .locals 0

    check-cast p1, Lu6/d;

    invoke-static {p1, p2, p3}, Le6/f;->J(Lu6/g;II)I

    move-result p0

    return p0
.end method

.method public final G(Lu6/b;I)I
    .locals 0

    check-cast p1, Lu6/d;

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

.method public final I(Lu6/b;)I
    .locals 0

    check-cast p1, Lu6/d;

    invoke-virtual {p0, p1}, Le6/d;->L(Lu6/e;)I

    const/4 p0, 0x3

    return p0
.end method

.method public final bridge synthetic L(Lu6/e;)I
    .locals 0

    check-cast p1, Lu6/d;

    const/4 p0, 0x2

    return p0
.end method

.method public final O(Lu6/e;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    check-cast p1, Lu6/d;

    iget p0, p1, Lu6/d;->e:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public final bridge synthetic h(Lu6/c;Ld/m;)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p1, Lu6/d;

    invoke-virtual {p0, p1, p2}, Ld6/e;->y(Lu6/b;Ld/m;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method
