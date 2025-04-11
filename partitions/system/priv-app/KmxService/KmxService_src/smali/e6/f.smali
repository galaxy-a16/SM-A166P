.class public abstract Le6/f;
.super Ld6/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ld6/e;-><init>(I)V

    return-void
.end method

.method public static J(Lu6/g;II)I
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lu6/h;->b:Lf6/h;

    invoke-virtual {p0}, Lf6/h;->c()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_1
    iget-object p0, p0, Lu6/g;->c:Lf6/j;

    invoke-static {p0}, Lh3/a;->E(Lf6/j;)I

    move-result p0

    sub-int/2addr p1, p0

    :cond_2
    return p1
.end method


# virtual methods
.method public bridge synthetic F(Lu6/b;II)I
    .locals 0

    check-cast p1, Lu6/g;

    invoke-static {p1, p2, p3}, Le6/f;->J(Lu6/g;II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic h(Lu6/c;Ld/m;)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p1, Lu6/g;

    invoke-virtual {p0, p1, p2}, Ld6/e;->y(Lu6/b;Ld/m;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method
