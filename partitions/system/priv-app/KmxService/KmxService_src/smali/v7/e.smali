.class public final Lv7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/s;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Lv7/t;


# direct methods
.method public synthetic constructor <init>(Lv7/t;II)V
    .locals 0

    iput p3, p0, Lv7/e;->a:I

    iput-object p1, p0, Lv7/e;->c:Lv7/t;

    iput p2, p0, Lv7/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2

    iget v0, p0, Lv7/e;->a:I

    const-string v1, "Consumer"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v1}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lv7/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv7/e;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :goto_1
    invoke-static {p1, v1}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv7/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lv7/e;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lv7/e;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lv7/e;->b:I

    iget-object p0, p0, Lv7/e;->c:Lv7/t;

    check-cast p0, Lv7/g;

    invoke-virtual {p0}, Lv7/g;->c()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget p0, p0, Lv7/e;->b:I

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 3

    iget v0, p0, Lv7/e;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lv7/e;->b:I

    iget-object p0, p0, Lv7/e;->c:Lv7/t;

    check-cast p0, Lv7/g;

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget p0, p0, Lv7/e;->b:I

    if-ne p0, v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lv7/e;->a:I

    iget-object v1, p0, Lv7/e;->c:Lv7/t;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lv7/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lv7/g;

    iget-object v0, v1, Lv7/g;->a:[Ljava/lang/Object;

    iget v1, p0, Lv7/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv7/e;->b:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    invoke-virtual {p0}, Lv7/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lv7/e;->b:I

    check-cast v1, Lv7/i;

    iget-object p0, v1, Lv7/i;->a:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lv7/e;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lv7/e;->b:I

    iget-object p0, p0, Lv7/e;->c:Lv7/t;

    check-cast p0, Lv7/g;

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :goto_0
    iget p0, p0, Lv7/e;->b:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lv7/e;->a:I

    iget-object v1, p0, Lv7/e;->c:Lv7/t;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lv7/e;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lv7/g;

    iget-object v0, v1, Lv7/g;->a:[Ljava/lang/Object;

    iget v1, p0, Lv7/e;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lv7/e;->b:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    invoke-virtual {p0}, Lv7/e;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lv7/e;->b:I

    check-cast v1, Lv7/i;

    iget-object p0, v1, Lv7/i;->a:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lv7/e;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lv7/e;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lv7/e;->c:Lv7/t;

    check-cast p0, Lv7/g;

    invoke-virtual {p0}, Lv7/g;->b()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :goto_0
    iget p0, p0, Lv7/e;->b:I

    add-int/lit8 p0, p0, -0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
