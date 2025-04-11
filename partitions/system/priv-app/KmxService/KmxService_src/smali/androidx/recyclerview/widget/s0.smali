.class public final Landroidx/recyclerview/widget/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/y1;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/recyclerview/widget/s0;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll6/d;)V
    .locals 1

    .line 2
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/s0;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/s0;->a:I

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->J(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, p0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->u(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/s0;->a:I

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->C(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->L(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/s0;->a:I

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/u0;

    iget v0, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :goto_1
    check-cast p0, Landroidx/recyclerview/widget/u0;

    iget v0, p0, Landroidx/recyclerview/widget/u0;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
