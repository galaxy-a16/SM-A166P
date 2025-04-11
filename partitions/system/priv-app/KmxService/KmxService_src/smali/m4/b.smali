.class public final Lm4/b;
.super Lp1/f;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lm4/b;->k:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-direct {p0}, Lp1/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Lm4/b;->k:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final H(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lm4/b;->k:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u(I)V

    :cond_0
    return-void
.end method

.method public final I(Landroid/view/View;II)V
    .locals 5

    iget-object p0, p0, Lm4/b;->k:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget v4, v2, Lm4/a;->p:I

    iget-object v2, v2, Lm4/a;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v2, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    if-gt v3, v2, :cond_1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :goto_1
    iget p1, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    if-gt v3, p1, :cond_1

    sub-int/2addr p1, v3

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_1
    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {p0, p2}, Lm4/a;->z(I)F

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Landroid/view/View;FF)V
    .locals 2

    iget-object p0, p0, Lm4/b;->k:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v0, p2}, Lm4/a;->F(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v0, p1, p2}, Lm4/a;->I(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v0, p2, p3}, Lm4/a;->H(FF)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {p2, p1}, Lm4/a;->G(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {p3}, Lm4/a;->A()I

    move-result p3

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    invoke-virtual {v0}, Lm4/a;->B()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_5

    :cond_4
    :goto_1
    const/4 p2, 0x3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x5

    :goto_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v(Landroid/view/View;IZ)V

    return-void
.end method

.method public final O(Landroid/view/View;I)Z
    .locals 2

    iget-object p0, p0, Lm4/b;->k:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final u(Landroid/view/View;I)I
    .locals 1

    iget-object p0, p0, Lm4/b;->k:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    iget v0, p1, Lm4/a;->p:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lm4/a;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    neg-int p1, p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Lm4/a;->A()I

    move-result p1

    :goto_1
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lm4/a;

    iget v0, p0, Lm4/a;->p:I

    iget-object p0, p0, Lm4/a;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    goto :goto_3

    :goto_2
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    :goto_3
    invoke-static {p2, p1, p0}, Lv9/a;->k(III)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final v(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method
