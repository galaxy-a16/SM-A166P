.class public final Landroidx/recyclerview/widget/c0;
.super Landroidx/recyclerview/widget/d0;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/u0;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/c0;->d:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/d0;-><init>(Landroidx/recyclerview/widget/u0;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

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

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

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

.method public final c(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, p0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

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

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

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

.method public final e()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    iget p0, p0, Landroidx/recyclerview/widget/u0;->n:I

    return p0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    iget p0, p0, Landroidx/recyclerview/widget/u0;->o:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    iget v0, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

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

.method public final g()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    iget p0, p0, Landroidx/recyclerview/widget/u0;->l:I

    return p0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    iget p0, p0, Landroidx/recyclerview/widget/u0;->m:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result p0

    return p0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/u0;

    iget v1, v0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p0

    :goto_0
    sub-int/2addr v1, p0

    return v1

    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/u0;

    iget v1, v0, Landroidx/recyclerview/widget/u0;->o:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->M(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, v1, Landroid/graphics/Rect;->right:I

    return p0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->M(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->M(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, v1, Landroid/graphics/Rect;->left:I

    return p0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->M(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, v1, Landroid/graphics/Rect;->top:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->Q(I)V

    return-void

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->R(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, p0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p0

    return p0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
