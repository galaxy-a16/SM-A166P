.class public final Lkotlinx/coroutines/channels/w;
.super Lkotlinx/coroutines/channels/j;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lvb/b;I)V
    .locals 0

    iput p2, p0, Lkotlinx/coroutines/channels/w;->d:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/j;-><init>(Lvb/b;)V

    return-void
.end method


# virtual methods
.method public final o()Z
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/channels/w;->d:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p()Z
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/channels/w;->d:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lkotlinx/coroutines/channels/w;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/l;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/l;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/t;->b:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/t;->c:Lkotlinx/coroutines/internal/z;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    new-instance v3, Lkotlinx/coroutines/channels/k;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/channels/k;-><init>(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    instance-of v4, v0, Lkotlinx/coroutines/channels/b0;

    if-eqz v4, :cond_3

    check-cast v0, Lkotlinx/coroutines/channels/b0;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3, v2}, Lkotlinx/coroutines/internal/n;->f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_4
    instance-of v1, v0, Lkotlinx/coroutines/channels/u;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_5
    instance-of p0, v0, Lkotlinx/coroutines/channels/u;

    if-eqz p0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid offerInternal result "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final w()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final z(Ljava/lang/Object;Lkotlinx/coroutines/channels/u;)V
    .locals 6

    iget v0, p0, Lkotlinx/coroutines/channels/w;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/channels/j;->z(Ljava/lang/Object;Lkotlinx/coroutines/channels/u;)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-nez v1, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/c0;

    instance-of v1, p1, Lkotlinx/coroutines/channels/k;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_5

    check-cast p1, Lkotlinx/coroutines/channels/k;

    iget-object p1, p1, Lkotlinx/coroutines/channels/k;->d:Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/t;->b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/c0;->t(Lkotlinx/coroutines/channels/u;)V

    goto :goto_2

    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    move-object v3, v0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/channels/c0;

    instance-of v5, v4, Lkotlinx/coroutines/channels/k;

    if-eqz v5, :cond_3

    if-eqz p0, :cond_2

    check-cast v4, Lkotlinx/coroutines/channels/k;

    iget-object v4, v4, Lkotlinx/coroutines/channels/k;->d:Ljava/lang/Object;

    invoke-static {p0, v4, v3}, Lkotlinx/coroutines/internal/t;->b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p2}, Lkotlinx/coroutines/channels/c0;->t(Lkotlinx/coroutines/channels/u;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    move-object v0, v3

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    return-void

    :cond_6
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
