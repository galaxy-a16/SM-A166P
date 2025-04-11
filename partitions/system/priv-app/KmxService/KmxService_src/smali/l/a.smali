.class public final Ll/a;
.super Lh/e;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ll/a;->d:I

    iput-object p1, p0, Ll/a;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lh/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget v0, p0, Ll/a;->d:I

    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ll/b;

    invoke-virtual {p0}, Ll/j;->clear()V

    return-void

    :goto_0
    check-cast p0, Ll/c;

    invoke-virtual {p0}, Ll/c;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(II)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ll/a;->d:I

    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ll/b;

    iget-object p0, p0, Ll/j;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0

    :goto_0
    check-cast p0, Ll/c;

    iget-object p0, p0, Ll/c;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Ll/b;
    .locals 1

    iget v0, p0, Ll/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    check-cast p0, Ll/b;

    return-object p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Ll/a;->d:I

    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ll/b;

    iget p0, p0, Ll/j;->c:I

    return p0

    :goto_0
    check-cast p0, Ll/c;

    iget p0, p0, Ll/c;->c:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Ll/a;->d:I

    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ll/b;

    invoke-virtual {p0, p1}, Ll/j;->f(Ljava/lang/Object;)I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Ll/c;

    invoke-virtual {p0, p1}, Ll/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Ll/a;->d:I

    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ll/b;

    invoke-virtual {p0, p1}, Ll/j;->h(Ljava/lang/Object;)I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Ll/c;

    invoke-virtual {p0, p1}, Ll/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ll/a;->d:I

    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ll/b;

    invoke-virtual {p0, p1, p2}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast p0, Ll/c;

    invoke-virtual {p0, p1}, Ll/c;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(I)V
    .locals 1

    iget v0, p0, Ll/a;->d:I

    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ll/b;

    invoke-virtual {p0, p1}, Ll/j;->j(I)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast p0, Ll/c;

    invoke-virtual {p0, p1}, Ll/c;->g(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ll/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Ll/a;->e:Ljava/lang/Object;

    check-cast p0, Ll/b;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Ll/j;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
