.class public final Lb4/c;
.super Landroidx/appcompat/widget/w;
.source "SourceFile"


# static fields
.field public static final B:[I

.field public static final C:[I

.field public static final E:[[I

.field public static final F:I


# instance fields
.field public final A:Lb4/a;

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Ljava/util/LinkedHashSet;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public p:Landroid/content/res/ColorStateList;

.field public q:Landroid/content/res/ColorStateList;

.field public t:Landroid/graphics/PorterDuff$Mode;

.field public u:I

.field public v:[I

.field public w:Z

.field public x:Ljava/lang/CharSequence;

.field public y:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public final z:Le1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f030447

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lb4/c;->B:[I

    new-array v1, v0, [I

    const v2, 0x7f030444

    aput v2, v1, v3

    sput-object v1, Lb4/c;->C:[I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    aput-object v4, v1, v3

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lb4/c;->E:[[I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "android"

    const-string v3, "btn_check_material_anim"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lb4/c;->F:I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x7f030444
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_4
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v0, 0x7f0300b2

    const v1, 0x7f13050f

    invoke-static {p1, p2, v0, v1}, Lv9/a;->g0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lb4/c;->e:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lb4/c;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Le1/c;

    invoke-direct {v0, p1}, Le1/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lv/p;->a:Ljava/lang/ThreadLocal;

    const v2, 0x7f0700a7

    invoke-static {v1, v2, p1}, Lv/i;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Le1/d;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Le1/c;->f:Le/a;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance p1, Landroidx/appcompat/widget/i3;

    iget-object v1, v0, Le1/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/widget/i3;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v0, p0, Lb4/c;->z:Le1/c;

    new-instance p1, Lb4/a;

    invoke-direct {p1, p0}, Lb4/a;-><init>(Lb4/c;)V

    iput-object p1, p0, Lb4/c;->A:Lb4/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Le0/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lb4/c;->getSuperButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Le0/u;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    sget-object v2, Ls3/a;->v:[I

    const v4, 0x7f13050f

    const/4 v7, 0x0

    new-array v5, v7, [I

    const v3, 0x7f0300b2

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lh9/a;->A(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/b3;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/b3;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const v0, 0x7f030258

    invoke-static {p1, v0, v7}, Lp9/d;->i0(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v7, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v0

    invoke-virtual {p2, v1, v7}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    sget v3, Lb4/c;->F:I

    if-ne v0, v3, :cond_0

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, v6}, Landroidx/appcompat/widget/w;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0700a6

    invoke-static {p1, v0}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lb4/c;->n:Z

    iget-object v0, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const v0, 0x7f0700a8

    invoke-static {p1, v0}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lv4/b;->G(Landroid/content/Context;Landroidx/appcompat/widget/b3;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lb4/c;->q:Landroid/content/res/ColorStateList;

    const/4 p1, 0x4

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Lb4/c;->t:Landroid/graphics/PorterDuff$Mode;

    const/16 p1, 0xa

    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lb4/c;->h:Z

    const/4 p1, 0x6

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lb4/c;->i:Z

    const/16 p1, 0x9

    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lb4/c;->j:Z

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/b3;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb4/c;->k:Ljava/lang/CharSequence;

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lb4/c;->setCheckedState(I)V

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/widget/b3;->n()V

    invoke-virtual {p0}, Lb4/c;->a()V

    return-void
.end method

.method private getButtonStateDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lb4/c;->u:I

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-ne v0, v1, :cond_0

    const v0, 0x7f12009c

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x7f12009e

    goto :goto_0

    :cond_1
    const v0, 0x7f12009d

    goto :goto_0
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 7

    iget-object v0, p0, Lb4/c;->g:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    const v1, 0x7f0300f3

    invoke-static {p0, v1}, Lva/n;->q(Landroid/view/View;I)I

    move-result v1

    const v2, 0x7f0300f6

    invoke-static {p0, v2}, Lva/n;->q(Landroid/view/View;I)I

    move-result v2

    const v3, 0x7f03011d

    invoke-static {p0, v3}, Lva/n;->q(Landroid/view/View;I)I

    move-result v3

    const v4, 0x7f030106

    invoke-static {p0, v4}, Lva/n;->q(Landroid/view/View;I)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6, v2}, Lva/n;->D(IFI)I

    move-result v2

    aput v2, v0, v5

    const/4 v2, 0x1

    invoke-static {v3, v6, v1}, Lva/n;->D(IFI)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x3f0a3d71    # 0.54f

    invoke-static {v3, v1, v4}, Lva/n;->D(IFI)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    const v2, 0x3ec28f5c    # 0.38f

    invoke-static {v3, v2, v4}, Lva/n;->D(IFI)I

    move-result v5

    aput v5, v0, v1

    const/4 v1, 0x4

    invoke-static {v3, v2, v4}, Lva/n;->D(IFI)I

    move-result v2

    aput v2, v0, v1

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lb4/c;->E:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lb4/c;->g:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object p0, p0, Lb4/c;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private getSuperButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Le0/u;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    invoke-static {p0}, Le0/b;->b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-static {v0, v2}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb4/c;->q:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lb4/c;->t:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-static {v0, v2}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    iput-object v0, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lb4/c;->n:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lb4/c;->z:Le1/c;

    if-eqz v0, :cond_f

    iget-object v4, v0, Le1/d;->a:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lb4/c;->A:Lb4/a;

    if-eqz v4, :cond_6

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v6, v5, Lb4/a;->a:Le1/a;

    if-nez v6, :cond_5

    new-instance v6, Le1/a;

    invoke-direct {v6, v5}, Le1/a;-><init>(Lb4/a;)V

    iput-object v6, v5, Lb4/a;->a:Le1/a;

    :cond_5
    iget-object v6, v5, Lb4/a;->a:Le1/a;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_6
    iget-object v4, v0, Le1/c;->e:Ljava/util/ArrayList;

    iget-object v6, v0, Le1/c;->b:Le1/b;

    if-eqz v4, :cond_8

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v0, Le1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Le1/c;->d:Landroidx/appcompat/widget/e;

    if-eqz v4, :cond_8

    iget-object v7, v6, Le1/b;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v3, v0, Le1/c;->d:Landroidx/appcompat/widget/e;

    :cond_8
    :goto_2
    iget-object v3, v0, Le1/d;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v4, v5, Lb4/a;->a:Le1/a;

    if-nez v4, :cond_9

    new-instance v4, Le1/a;

    invoke-direct {v4, v5}, Le1/a;-><init>(Lb4/a;)V

    iput-object v4, v5, Lb4/a;->a:Le1/a;

    :cond_9
    iget-object v4, v5, Lb4/a;->a:Le1/a;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_3

    :cond_a
    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    iget-object v3, v0, Le1/c;->e:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Le1/c;->e:Ljava/util/ArrayList;

    :cond_c
    iget-object v3, v0, Le1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_d
    iget-object v3, v0, Le1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Le1/c;->d:Landroidx/appcompat/widget/e;

    if-nez v3, :cond_e

    new-instance v3, Landroidx/appcompat/widget/e;

    invoke-direct {v3, v0, v1}, Landroidx/appcompat/widget/e;-><init>(Ljava/lang/Object;I)V

    iput-object v3, v0, Le1/c;->d:Landroidx/appcompat/widget/e;

    :cond_e
    iget-object v3, v6, Le1/b;->b:Landroid/animation/AnimatorSet;

    iget-object v4, v0, Le1/c;->d:Landroidx/appcompat/widget/e;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_f
    :goto_3
    iget-object v3, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    check-cast v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const v4, 0x7f09007e

    const v5, 0x7f09026c

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    iget-object v3, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const v4, 0x7f090103

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    :cond_10
    :goto_4
    iget-object v0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget-object v3, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_11

    invoke-static {v0, v3}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_11
    iget-object v0, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v3, p0, Lb4/c;->q:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_12

    invoke-static {v0, v3}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_12
    iget-object v0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    move-object v0, v3

    goto :goto_8

    :cond_13
    if-nez v3, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-eq v6, v5, :cond_16

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-gt v4, v5, :cond_17

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gt v6, v5, :cond_17

    goto :goto_7

    :cond_17
    int-to-float v4, v4

    int-to-float v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v6, v5

    div-float/2addr v6, v4

    float-to-int v6, v6

    move v4, v5

    goto :goto_7

    :cond_18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_7
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v3, v1, v0

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v0, v4, v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 v1, 0x11

    invoke-virtual {v5, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    move-object v0, v5

    :goto_8
    invoke-super {p0, v0}, Landroidx/appcompat/widget/w;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getButtonIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getButtonIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lb4/c;->q:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lb4/c;->t:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCheckedState()I
    .locals 0

    iget p0, p0, Lb4/c;->u:I

    return p0
.end method

.method public getErrorAccessibilityLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lb4/c;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final isChecked()Z
    .locals 1

    iget p0, p0, Lb4/c;->u:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lb4/c;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb4/c;->q:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb4/c;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 3

    const/4 v0, 0x2

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lb4/c;->getCheckedState()I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-object v0, Lb4/c;->B:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean v0, p0, Lb4/c;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lb4/c;->C:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    const v2, 0x10100a0

    if-ge v0, v1, :cond_4

    aget v1, p1, v0

    if-ne v1, v2, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput v2, v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    array-length v0, p1

    aput v2, v1, v0

    :goto_1
    iput-object v1, p0, Lb4/c;->v:[I

    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lb4/c;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Le0/c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lkotlin/jvm/internal/m;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, v3, p1}, Lx/b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lb4/c;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb4/c;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lb4/b;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lb4/b;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lb4/b;->a:I

    invoke-virtual {p0, p1}, Lb4/c;->setCheckedState(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lb4/b;

    invoke-direct {v1, v0}, Lb4/b;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lb4/c;->getCheckedState()I

    move-result p0

    iput p0, v1, Lb4/b;->a:I

    return-object v1
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb4/c;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lb4/c;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb4/c;->n:Z

    invoke-virtual {p0}, Lb4/c;->a()V

    return-void
.end method

.method public setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lb4/c;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb4/c;->a()V

    return-void
.end method

.method public setButtonIconDrawableResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb4/c;->setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb4/c;->q:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lb4/c;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lb4/c;->a()V

    return-void
.end method

.method public setButtonIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb4/c;->t:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lb4/c;->t:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lb4/c;->a()V

    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lb4/c;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lb4/c;->a()V

    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-interface {p0, p1}, Le0/u;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lb4/c;->a()V

    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lb4/c;->i:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lb4/c;->setCheckedState(I)V

    return-void
.end method

.method public setCheckedState(I)V
    .locals 2

    iget v0, p0, Lb4/c;->u:I

    if-eq v0, p1, :cond_7

    iput p1, p0, Lb4/c;->u:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-object p1, p0, Lb4/c;->x:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lb4/c;->getButtonStateDescription()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean p1, p0, Lb4/c;->w:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lb4/c;->w:Z

    iget-object p1, p0, Lb4/c;->f:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    iget p1, p0, Lb4/c;->u:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lb4/c;->y:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lb4/c;->isChecked()Z

    move-result v1

    invoke-interface {p1, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_6
    iput-boolean v0, p0, Lb4/c;->w:Z

    :cond_7
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lb4/c;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public setErrorAccessibilityLabelResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lb4/c;->setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorShown(Z)V
    .locals 1

    iget-boolean v0, p0, Lb4/c;->j:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lb4/c;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-object p0, p0, Lb4/c;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lb4/c;->y:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lb4/c;->x:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lb4/c;->getButtonStateDescription()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    iput-boolean p1, p0, Lb4/c;->h:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lb4/c;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Le0/b;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final toggle()V
    .locals 1

    invoke-virtual {p0}, Lb4/c;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lb4/c;->setChecked(Z)V

    return-void
.end method
