.class public final Landroidx/appcompat/widget/i;
.super Lh/z;
.source "SourceFile"


# instance fields
.field public final synthetic q:I

.field public final synthetic r:Lh/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/p;Landroid/content/Context;Lh/h0;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/i;->q:I

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/i;->r:Lh/d;

    const/4 v5, 0x0

    const v6, 0x7f030021

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lh/z;-><init>(Landroid/content/Context;Lh/n;Landroid/view/View;ZI)V

    .line 5
    iget-object p2, p3, Lh/h0;->E:Lh/p;

    .line 6
    invoke-virtual {p2}, Lh/p;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Landroidx/appcompat/widget/p;->j:Landroidx/appcompat/widget/m;

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p1, Lh/d;->h:Lh/d0;

    .line 8
    check-cast p2, Landroid/view/View;

    .line 9
    :cond_0
    iput-object p2, p0, Lh/z;->f:Landroid/view/View;

    .line 10
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/p;->A:Lp5/c;

    invoke-virtual {p0, p1}, Lh/z;->d(Lh/a0;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/p;Landroid/content/Context;Lh/n;Landroidx/appcompat/widget/m;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/i;->q:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/i;->r:Lh/d;

    const v5, 0x7f030021

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lh/z;-><init>(Landroid/content/Context;Lh/n;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 2
    iput p2, p0, Lh/z;->g:I

    .line 3
    iget-object p1, p1, Landroidx/appcompat/widget/p;->A:Lp5/c;

    invoke-virtual {p0, p1}, Lh/z;->d(Lh/a0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lg4/i;Landroid/content/Context;Lh/n;Lg4/c;)V
    .locals 7

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/i;->q:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/i;-><init>(Lg4/i;Landroid/content/Context;Lh/n;Lg4/c;I)V

    return-void
.end method

.method public constructor <init>(Lg4/i;Landroid/content/Context;Lh/n;Lg4/c;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 p5, 0x2

    iput p5, p0, Landroidx/appcompat/widget/i;->q:I

    .line 12
    iput-object p1, p0, Landroidx/appcompat/widget/i;->r:Lh/d;

    const v5, 0x7f03001f

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lh/z;-><init>(Landroid/content/Context;Lh/n;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 13
    iput p2, p0, Lh/z;->g:I

    .line 14
    iget-object p1, p1, Lg4/i;->q:Lp5/c;

    .line 15
    invoke-virtual {p0, p1}, Lh/z;->d(Lh/a0;)V

    .line 16
    iput-object p4, p0, Lh/z;->f:Landroid/view/View;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lh/z;->m:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lh/z;->l:Z

    .line 18
    iput-boolean p1, p0, Lh/z;->n:Z

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/i;->q:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/i;->r:Lh/d;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/appcompat/widget/p;

    iget-object v0, v3, Lh/d;->c:Lh/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lh/n;->c(Z)V

    :cond_0
    iput-object v2, v3, Landroidx/appcompat/widget/p;->w:Landroidx/appcompat/widget/i;

    invoke-super {p0}, Lh/z;->c()V

    return-void

    :pswitch_1
    check-cast v3, Landroidx/appcompat/widget/p;

    iput-object v2, v3, Landroidx/appcompat/widget/p;->x:Landroidx/appcompat/widget/i;

    const/4 v0, 0x0

    iput v0, v3, Landroidx/appcompat/widget/p;->B:I

    invoke-super {p0}, Lh/z;->c()V

    return-void

    :goto_0
    check-cast v3, Lg4/i;

    iget-object v0, v3, Lg4/i;->j:Lh/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lh/n;->c(Z)V

    :cond_1
    iput-object v2, v3, Lg4/i;->t:Landroidx/appcompat/widget/i;

    invoke-super {p0}, Lh/z;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
