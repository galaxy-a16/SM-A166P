.class public final Landroidx/appcompat/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/y;->a:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/appcompat/widget/y;->d:Z

    iput-boolean p2, p0, Landroidx/appcompat/widget/y;->e:Z

    iput-object p1, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/y;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p4, 0x0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass true for \'explName\' if name is null/empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iput-boolean p4, p0, Landroidx/appcompat/widget/y;->d:Z

    iput-boolean p5, p0, Landroidx/appcompat/widget/y;->e:Z

    iput-boolean p6, p0, Landroidx/appcompat/widget/y;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/y;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast v0, Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->a(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {v1}, Le0/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->e:Z

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->e:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, p0}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v0

    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->e:Z

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/y;->e:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, p0}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v0

    check-cast p0, Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 12

    iget v0, p0, Landroidx/appcompat/widget/y;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object v5, p0

    check-cast v5, Landroid/widget/CheckedTextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Lb/a;->l:[I

    invoke-static {v0, p1, v7, p2}, Landroidx/appcompat/widget/b3;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/b3;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v9, v0, Landroidx/appcompat/widget/b3;->b:Landroid/content/res/TypedArray;

    const/4 v11, 0x0

    sget-object v8, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    move-object v8, p1

    move v10, p2

    invoke-static/range {v5 .. v11}, Landroidx/core/view/u0;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p1, 0x4

    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    move-object p2, p0

    check-cast p2, Landroid/widget/CheckedTextView;

    move-object v5, p0

    check-cast v5, Landroid/widget/CheckedTextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p1, v3

    goto :goto_0

    :catch_0
    :cond_0
    move p1, v4

    :goto_0
    if-nez p1, :cond_1

    :try_start_2
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result p1

    if-eqz p1, :cond_1

    move-object p2, p0

    check-cast p2, Landroid/widget/CheckedTextView;

    move-object v3, p0

    check-cast v3, Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b3;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p2

    if-eqz p2, :cond_3

    check-cast p0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result p1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/b3;->n()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/appcompat/widget/b3;->n()V

    throw p0

    :goto_1
    move-object v5, p0

    check-cast v5, Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Lb/a;->m:[I

    invoke-static {v0, p1, v7, p2}, Landroidx/appcompat/widget/b3;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/b3;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v9, v0, Landroidx/appcompat/widget/b3;->b:Landroid/content/res/TypedArray;

    const/4 v11, 0x0

    sget-object v8, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    move-object v8, p1

    move v10, p2

    invoke-static/range {v5 .. v11}, Landroidx/core/view/u0;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_3
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_4

    :try_start_4
    move-object p2, p0

    check-cast p2, Landroid/widget/CompoundButton;

    move-object v5, p0

    check-cast v5, Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    :cond_4
    move v3, v4

    :goto_2
    if-nez v3, :cond_5

    :try_start_5
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v4, v4}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result p1

    if-eqz p1, :cond_5

    move-object p2, p0

    check-cast p2, Landroid/widget/CompoundButton;

    move-object v3, p0

    check-cast v3, Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object p2, p0

    check-cast p2, Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b3;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p2, p1}, Le0/b;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_6
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result p2

    if-eqz p2, :cond_7

    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result p1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p0, p1}, Le0/b;->d(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    invoke-virtual {v0}, Landroidx/appcompat/widget/b3;->n()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroidx/appcompat/widget/b3;->n()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Landroidx/appcompat/widget/y;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/y;

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    check-cast v0, Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->e()Landroidx/appcompat/widget/y;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, v0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    iget-boolean v1, p0, Landroidx/appcompat/widget/y;->e:Z

    iget-boolean v3, v0, Landroidx/appcompat/widget/y;->e:Z

    if-ne v1, v3, :cond_4

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public final f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/y;

    iget-object v2, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    move-object v4, v1

    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-boolean v5, p0, Landroidx/appcompat/widget/y;->d:Z

    iget-boolean v6, p0, Landroidx/appcompat/widget/y;->e:Z

    iget-boolean v7, p0, Landroidx/appcompat/widget/y;->f:Z

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/y;-><init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    return-object v0
.end method

.method public final g()Landroidx/appcompat/widget/y;
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->f:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Landroidx/appcompat/widget/y;

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->g()Landroidx/appcompat/widget/y;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/y;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->g()Landroidx/appcompat/widget/y;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/y;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final h()Landroidx/appcompat/widget/y;
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/y;

    iget-object v2, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/y;->c:Ljava/io/Serializable;

    move-object v4, v1

    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-boolean v5, p0, Landroidx/appcompat/widget/y;->d:Z

    iget-boolean v6, p0, Landroidx/appcompat/widget/y;->e:Z

    iget-boolean v7, p0, Landroidx/appcompat/widget/y;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/y;-><init>(Ljava/lang/Object;Landroidx/appcompat/widget/y;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    return-object v0
.end method

.method public final i()Landroidx/appcompat/widget/y;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/y;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->i()Landroidx/appcompat/widget/y;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Landroidx/appcompat/widget/y;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/y;->f(Landroidx/appcompat/widget/y;)Landroidx/appcompat/widget/y;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/y;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroidx/appcompat/widget/y;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroidx/appcompat/widget/y;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroidx/appcompat/widget/y;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s[visible=%b,ignore=%b,explicitName=%b]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/y;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-static {v0, v1}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
