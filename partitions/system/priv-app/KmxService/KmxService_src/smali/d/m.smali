.class public final Ld/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/y;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/m;->a:I

    new-array p1, p1, [I

    iput-object p1, p0, Ld/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[La0/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld/m;->a:I

    iput-object p2, p0, Ld/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/n;->l(Landroid/content/Context;I)I

    move-result v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ld/i;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, v0}, Ld/n;->l(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Ld/i;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, Ld/m;->b:Ljava/lang/Object;

    iput v0, p0, Ld/m;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Ld/m;->b:Ljava/lang/Object;

    iput p2, p0, Ld/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x10000004

    iput v0, p0, Ld/m;->a:I

    iput-object p1, p0, Ld/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ld/n;
    .locals 9

    new-instance v0, Ld/n;

    iget-object v1, p0, Ld/m;->b:Ljava/lang/Object;

    check-cast v1, Ld/i;

    iget-object v2, v1, Ld/i;->a:Landroid/content/Context;

    iget p0, p0, Ld/m;->a:I

    invoke-direct {v0, v2, p0}, Ld/n;-><init>(Landroid/content/Context;I)V

    iget-object p0, v1, Ld/i;->e:Landroid/view/View;

    iget-object v2, v0, Ld/n;->f:Ld/l;

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    iput-object p0, v2, Ld/l;->z:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p0, v1, Ld/i;->d:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    iput-object p0, v2, Ld/l;->e:Ljava/lang/CharSequence;

    iget-object v4, v2, Ld/l;->x:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, v1, Ld/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    iput-object p0, v2, Ld/l;->v:Landroid/graphics/drawable/Drawable;

    iput v3, v2, Ld/l;->u:I

    iget-object v4, v2, Ld/l;->w:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v2, Ld/l;->w:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object p0, v1, Ld/i;->f:Ljava/lang/CharSequence;

    if-eqz p0, :cond_3

    iput-object p0, v2, Ld/l;->f:Ljava/lang/CharSequence;

    iget-object v4, v2, Ld/l;->y:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p0, v1, Ld/i;->g:Ljava/lang/CharSequence;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    iget-object v5, v1, Ld/i;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, p0, v5}, Ld/l;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object p0, v1, Ld/i;->i:Ljava/lang/CharSequence;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, -0x2

    iget-object v5, v1, Ld/i;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, p0, v5}, Ld/l;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object p0, v1, Ld/i;->k:Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, -0x3

    iget-object v5, v1, Ld/i;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, p0, v5}, Ld/l;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_3
    iget-object p0, v1, Ld/i;->n:Landroid/widget/ListAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_b

    iget p0, v2, Ld/l;->D:I

    iget-object v6, v1, Ld/i;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v6, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v6, v1, Ld/i;->p:Z

    if-eqz v6, :cond_7

    iget v6, v2, Ld/l;->E:I

    goto :goto_4

    :cond_7
    iget v6, v2, Ld/l;->F:I

    :goto_4
    iget-object v7, v1, Ld/i;->n:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    new-instance v7, Ld/k;

    iget-object v8, v1, Ld/i;->a:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Ld/k;-><init>(Landroid/content/Context;I)V

    :goto_5
    iput-object v7, v2, Ld/l;->A:Landroid/widget/ListAdapter;

    iget v6, v1, Ld/i;->q:I

    iput v6, v2, Ld/l;->B:I

    iget-object v6, v1, Ld/i;->o:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_9

    new-instance v6, Ld/h;

    invoke-direct {v6, v3, v1, v2}, Ld/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_9
    iget-boolean v3, v1, Ld/i;->p:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_a
    iput-object p0, v2, Ld/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v1, Ld/i;->m:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_c

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_c
    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Ld/m;->a:I

    iget-object p0, p0, Ld/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()Lokhttp3/p0;
    .locals 3

    invoke-virtual {p0}, Ld/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget v1, p0, Ld/m;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld/m;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/p0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final d(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Ld/m;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, Ld/m;->a:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(I)V

    const/4 p0, 0x1

    return p0
.end method
