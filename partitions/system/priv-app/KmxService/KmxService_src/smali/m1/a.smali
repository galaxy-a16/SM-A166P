.class public final Lm1/a;
.super Lm1/b;
.source "SourceFile"


# instance fields
.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ln1/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm1/a;->f:I

    const-string v0, "tracker"

    .line 1
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm1/b;-><init>(Ln1/f;)V

    return-void
.end method

.method public constructor <init>(Ln1/f;I)V
    .locals 2

    iput p2, p0, Lm1/a;->f:I

    const/4 v0, 0x2

    const-string v1, "tracker"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm1/b;-><init>(Ln1/f;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm1/b;-><init>(Ln1/f;)V

    return-void

    .line 4
    :cond_1
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm1/b;-><init>(Ln1/f;)V

    return-void

    .line 5
    :cond_2
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm1/b;-><init>(Ln1/f;)V

    return-void
.end method


# virtual methods
.method public final a(Lp1/q;)Z
    .locals 3

    iget p0, p0, Lm1/a;->f:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "workSpec"

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lp1/q;->j:Landroidx/work/d;

    iget-object p0, p0, Landroidx/work/d;->a:Landroidx/work/NetworkType;

    sget-object p1, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    if-eq p0, p1, :cond_1

    sget-object p1, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lp1/q;->j:Landroidx/work/d;

    iget-object p0, p0, Landroidx/work/d;->a:Landroidx/work/NetworkType;

    sget-object p1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :pswitch_2
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lp1/q;->j:Landroidx/work/d;

    iget-boolean p0, p0, Landroidx/work/d;->d:Z

    return p0

    :pswitch_3
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lp1/q;->j:Landroidx/work/d;

    iget-boolean p0, p0, Landroidx/work/d;->b:Z

    return p0

    :goto_2
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lp1/q;->j:Landroidx/work/d;

    iget-boolean p0, p0, Landroidx/work/d;->e:Z

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lm1/a;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ll1/a;

    invoke-virtual {p0, p1}, Lm1/a;->e(Ll1/a;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ll1/a;

    invoke-virtual {p0, p1}, Lm1/a;->e(Ll1/a;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lm1/a;->f(Z)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lm1/a;->f(Z)Z

    move-result p0

    return p0

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lm1/a;->f(Z)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ll1/a;)Z
    .locals 3

    iget p0, p0, Lm1/a;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "value"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Ll1/a;->a:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Ll1/a;->b:Z

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :goto_0
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Ll1/a;->a:Z

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Ll1/a;->c:Z

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Z)Z
    .locals 0

    iget p0, p0, Lm1/a;->f:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    xor-int/lit8 p0, p1, 0x1

    return p0

    :pswitch_1
    xor-int/lit8 p0, p1, 0x1

    return p0

    :goto_0
    xor-int/lit8 p0, p1, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
