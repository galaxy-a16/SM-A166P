.class public final Ld/j0;
.super Ld/u;
.source "SourceFile"

# interfaces
.implements Lh/l;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final A0:Ll/j;

.field public static final B0:[I

.field public static final C0:Z

.field public static final D0:Z


# instance fields
.field public A:Z

.field public B:Landroid/view/ViewGroup;

.field public C:Landroid/widget/TextView;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public K:Z

.field public L:Z

.field public N:Z

.field public O:Z

.field public P:[Ld/i0;

.field public Q:Ld/i0;

.field public R:Z

.field public T:Z

.field public V:Z

.field public X:Z

.field public Y:Landroid/content/res/Configuration;

.field public final Z:I

.field public final h:Ljava/lang/Object;

.field public final i:Landroid/content/Context;

.field public j:Landroid/view/Window;

.field public k:Ld/d0;

.field public final l:Ld/r;

.field public l0:I

.field public m:Ld/b;

.field public m0:I

.field public n:Lg/k;

.field public n0:Z

.field public o0:Ld/e0;

.field public p:Ljava/lang/CharSequence;

.field public p0:Ld/e0;

.field public q:Landroidx/appcompat/widget/l1;

.field public q0:Z

.field public r0:I

.field public final s0:Ld/v;

.field public t:Ld/w;

.field public t0:Z

.field public u:Ld/x;

.field public u0:Landroid/graphics/Rect;

.field public v:Lg/c;

.field public v0:Landroid/graphics/Rect;

.field public w:Landroidx/appcompat/widget/ActionBarContextView;

.field public w0:Ld/m0;

.field public x:Landroid/widget/PopupWindow;

.field public x0:Landroid/window/OnBackInvokedDispatcher;

.field public y:Ld/v;

.field public y0:Landroid/window/OnBackInvokedCallback;

.field public z:Landroidx/core/view/i1;

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ll/j;

    invoke-direct {v0}, Ll/j;-><init>()V

    sput-object v0, Ld/j0;->A0:Ll/j;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Ld/j0;->B0:[I

    const-string v1, "robolectric"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Ld/j0;->C0:Z

    sput-boolean v0, Ld/j0;->D0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ld/r;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ld/u;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/j0;->z:Landroidx/core/view/i1;

    const/16 v1, -0x64

    iput v1, p0, Ld/j0;->Z:I

    new-instance v2, Ld/v;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ld/v;-><init>(Ld/j0;I)V

    iput-object v2, p0, Ld/j0;->s0:Ld/v;

    iput-boolean v3, p0, Ld/j0;->z0:Z

    iput-object p1, p0, Ld/j0;->i:Landroid/content/Context;

    iput-object p3, p0, Ld/j0;->l:Ld/r;

    iput-object p4, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Ld/q;

    if-eqz p3, :cond_0

    check-cast p1, Ld/q;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ld/q;->getDelegate()Ld/u;

    move-result-object p1

    check-cast p1, Ld/j0;

    iget p1, p1, Ld/j0;->Z:I

    iput p1, p0, Ld/j0;->Z:I

    :cond_2
    iget p1, p0, Ld/j0;->Z:I

    if-ne p1, v1, :cond_3

    sget-object p1, Ld/j0;->A0:Ll/j;

    iget-object p3, p0, Ld/j0;->h:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Ld/j0;->Z:I

    iget-object p3, p0, Ld/j0;->h:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Ld/j0;->r(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/z;->d()V

    return-void
.end method

.method public static v(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p3, 0x0

    iput p3, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x31

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    return-object p1
.end method


# virtual methods
.method public final A(Landroid/content/Context;)Ld/g0;
    .locals 3

    iget-object v0, p0, Ld/j0;->o0:Ld/e0;

    if-nez v0, :cond_1

    new-instance v0, Ld/e0;

    sget-object v1, Lva/f;->d:Lva/f;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lva/f;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lva/f;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lva/f;->d:Lva/f;

    :cond_0
    sget-object p1, Lva/f;->d:Lva/f;

    invoke-direct {v0, p0, p1}, Ld/e0;-><init>(Ld/j0;Lva/f;)V

    iput-object v0, p0, Ld/j0;->o0:Ld/e0;

    :cond_1
    iget-object p0, p0, Ld/j0;->o0:Ld/e0;

    return-object p0
.end method

.method public final B(I)Ld/i0;
    .locals 4

    iget-object v0, p0, Ld/j0;->P:[Ld/i0;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ld/i0;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Ld/j0;->P:[Ld/i0;

    move-object v0, v1

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Ld/i0;

    invoke-direct {p0, p1}, Ld/i0;-><init>(I)V

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final C()Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    return-object p0
.end method

.method public final D()V
    .locals 3

    invoke-virtual {p0}, Ld/j0;->y()V

    iget-boolean v0, p0, Ld/j0;->H:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/j0;->m:Ld/b;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Ld/z0;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Ld/j0;->I:Z

    invoke-direct {v1, v0, v2}, Ld/z0;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v1, p0, Ld/j0;->m:Ld/b;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Ld/z0;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Ld/z0;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Ld/j0;->m:Ld/b;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Ld/j0;->t0:Z

    invoke-virtual {v0, p0}, Ld/b;->l(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final E(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Ld/j0;->p0:Ld/e0;

    if-nez p2, :cond_0

    new-instance p2, Ld/e0;

    invoke-direct {p2, p0, p1}, Ld/e0;-><init>(Ld/j0;Landroid/content/Context;)V

    iput-object p2, p0, Ld/j0;->p0:Ld/e0;

    :cond_0
    iget-object p0, p0, Ld/j0;->p0:Ld/e0;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Ld/j0;->A(Landroid/content/Context;)Ld/g0;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ld/g0;->d()I

    move-result p0

    return p0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final F()Z
    .locals 5

    iget-boolean v0, p0, Ld/j0;->R:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ld/j0;->R:Z

    invoke-virtual {p0, v1}, Ld/j0;->B(I)Ld/i0;

    move-result-object v2

    iget-boolean v3, v2, Ld/i0;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Ld/j0;->u(Ld/i0;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Ld/j0;->v:Lg/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/c;->a()V

    return v4

    :cond_2
    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object p0, p0, Ld/j0;->m:Ld/b;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ld/b;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public final G(Ld/i0;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Ld/i0;->m:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v0, Ld/j0;->X:Z

    if-eqz v2, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v2, v0, Ld/j0;->i:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, v1, Ld/i0;->a:I

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-eqz v6, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v1, Ld/i0;->h:Lh/n;

    invoke-interface {v6, v5, v7}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, v1, v4}, Ld/j0;->u(Ld/i0;Z)V

    return-void

    :cond_3
    const-string v6, "window"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    if-nez v6, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p2}, Ld/j0;->I(Ld/i0;Landroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_5

    return-void

    :cond_5
    iget-object v7, v1, Ld/i0;->e:Ld/h0;

    const/4 v8, -0x2

    if-eqz v7, :cond_7

    iget-boolean v9, v1, Ld/i0;->n:Z

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, v1, Ld/i0;->g:Landroid/view/View;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1c

    move v10, v7

    goto/16 :goto_c

    :cond_7
    :goto_1
    if-nez v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Ld/j0;->D()V

    iget-object v7, v0, Ld/j0;->m:Ld/b;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ld/b;->e()Landroid/content/Context;

    move-result-object v7

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, v7

    :goto_3
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v10, 0x7f030002

    invoke-virtual {v9, v10, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_a

    invoke-virtual {v9, v10, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v10, 0x7f030379

    invoke-virtual {v9, v10, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_b
    const v7, 0x7f1302c9

    :goto_4
    invoke-virtual {v9, v7, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v7, Lg/f;

    invoke-direct {v7, v2, v3}, Lg/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v7, v1, Ld/i0;->j:Lg/f;

    sget-object v2, Lb/a;->j:[I

    invoke-virtual {v7, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v7, 0x66

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v1, Ld/i0;->b:I

    const/16 v7, 0x8

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v1, Ld/i0;->d:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Ld/h0;

    iget-object v7, v1, Ld/i0;->j:Lg/f;

    invoke-direct {v2, v0, v7}, Ld/h0;-><init>(Ld/j0;Lg/f;)V

    iput-object v2, v1, Ld/i0;->e:Ld/h0;

    const/16 v2, 0x51

    iput v2, v1, Ld/i0;->c:I

    goto :goto_5

    :cond_c
    iget-boolean v2, v1, Ld/i0;->n:Z

    if-eqz v2, :cond_d

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, v1, Ld/i0;->e:Ld/h0;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_d
    :goto_5
    iget-object v2, v1, Ld/i0;->g:Landroid/view/View;

    if-eqz v2, :cond_e

    iput-object v2, v1, Ld/i0;->f:Landroid/view/View;

    goto :goto_6

    :cond_e
    iget-object v2, v1, Ld/i0;->h:Lh/n;

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v0, Ld/j0;->u:Ld/x;

    if-nez v2, :cond_10

    new-instance v2, Ld/x;

    invoke-direct {v2, v0}, Ld/x;-><init>(Ld/j0;)V

    iput-object v2, v0, Ld/j0;->u:Ld/x;

    :cond_10
    iget-object v2, v0, Ld/j0;->u:Ld/x;

    iget-object v7, v1, Ld/i0;->i:Lh/j;

    if-nez v7, :cond_11

    new-instance v7, Lh/j;

    iget-object v9, v1, Ld/i0;->j:Lg/f;

    invoke-direct {v7, v9}, Lh/j;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Ld/i0;->i:Lh/j;

    iput-object v2, v7, Lh/j;->e:Lh/a0;

    iget-object v2, v1, Ld/i0;->h:Lh/n;

    iget-object v9, v2, Lh/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v7, v9}, Lh/n;->b(Lh/b0;Landroid/content/Context;)V

    :cond_11
    iget-object v2, v1, Ld/i0;->i:Lh/j;

    iget-object v7, v1, Ld/i0;->e:Ld/h0;

    iget-object v9, v2, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_13

    iget-object v9, v2, Lh/j;->b:Landroid/view/LayoutInflater;

    const v10, 0x7f0c0005

    invoke-virtual {v9, v10, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v7, v2, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v7, v2, Lh/j;->f:Lh/i;

    if-nez v7, :cond_12

    new-instance v7, Lh/i;

    invoke-direct {v7, v2}, Lh/i;-><init>(Lh/j;)V

    iput-object v7, v2, Lh/j;->f:Lh/i;

    :cond_12
    iget-object v7, v2, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v2, Lh/j;->f:Lh/i;

    invoke-virtual {v7, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, v2, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v7, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object v2, v2, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v2, v1, Ld/i0;->f:Landroid/view/View;

    if-eqz v2, :cond_14

    :goto_6
    move v2, v4

    goto :goto_8

    :cond_14
    :goto_7
    move v2, v3

    :goto_8
    if-eqz v2, :cond_1e

    iget-object v2, v1, Ld/i0;->f:Landroid/view/View;

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    iget-object v2, v1, Ld/i0;->g:Landroid/view/View;

    if-eqz v2, :cond_16

    goto :goto_9

    :cond_16
    iget-object v2, v1, Ld/i0;->i:Lh/j;

    iget-object v7, v2, Lh/j;->f:Lh/i;

    if-nez v7, :cond_17

    new-instance v7, Lh/i;

    invoke-direct {v7, v2}, Lh/i;-><init>(Lh/j;)V

    iput-object v7, v2, Lh/j;->f:Lh/i;

    :cond_17
    iget-object v2, v2, Lh/j;->f:Lh/i;

    invoke-virtual {v2}, Lh/i;->getCount()I

    move-result v2

    if-lez v2, :cond_18

    :goto_9
    move v2, v4

    goto :goto_b

    :cond_18
    :goto_a
    move v2, v3

    :goto_b
    if-nez v2, :cond_19

    goto :goto_d

    :cond_19
    iget-object v2, v1, Ld/i0;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1a

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1a
    iget v7, v1, Ld/i0;->b:I

    iget-object v9, v1, Ld/i0;->e:Ld/h0;

    invoke-virtual {v9, v7}, Ld/h0;->setBackgroundResource(I)V

    iget-object v7, v1, Ld/i0;->f:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1b

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v9, v1, Ld/i0;->f:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    iget-object v7, v1, Ld/i0;->e:Ld/h0;

    iget-object v9, v1, Ld/i0;->f:Landroid/view/View;

    invoke-virtual {v7, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Ld/i0;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v1, Ld/i0;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    move v10, v8

    :goto_c
    iput-boolean v3, v1, Ld/i0;->l:Z

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v3, v1, Ld/i0;->c:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v1, Ld/i0;->d:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, v1, Ld/i0;->e:Ld/h0;

    invoke-interface {v6, v3, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, v1, Ld/i0;->m:Z

    if-nez v5, :cond_1d

    invoke-virtual/range {p0 .. p0}, Ld/j0;->K()V

    :cond_1d
    return-void

    :cond_1e
    :goto_d
    iput-boolean v4, v1, Ld/i0;->n:Z

    :cond_1f
    :goto_e
    return-void
.end method

.method public final H(Ld/i0;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/i0;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Ld/j0;->I(Ld/i0;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Ld/i0;->h:Lh/n;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lh/n;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final I(Ld/i0;Landroid/view/KeyEvent;)Z
    .locals 12

    iget-boolean v0, p0, Ld/j0;->X:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Ld/i0;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ld/j0;->Q:Ld/i0;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ld/j0;->u(Ld/i0;Z)V

    :cond_2
    invoke-virtual {p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Ld/i0;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Ld/i0;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast v6, Landroidx/appcompat/widget/s4;

    iput-boolean v2, v6, Landroidx/appcompat/widget/s4;->l:Z

    :cond_6
    iget-object v6, p1, Ld/i0;->g:Landroid/view/View;

    if-nez v6, :cond_1e

    if-eqz v5, :cond_7

    iget-object v6, p0, Ld/j0;->m:Ld/b;

    instance-of v6, v6, Ld/u0;

    if-nez v6, :cond_1e

    :cond_7
    iget-object v6, p1, Ld/i0;->h:Lh/n;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    iget-boolean v8, p1, Ld/i0;->o:Z

    if-eqz v8, :cond_18

    :cond_8
    if-nez v6, :cond_11

    iget-object v6, p0, Ld/j0;->i:Landroid/content/Context;

    if-eqz v3, :cond_9

    if-ne v3, v4, :cond_d

    :cond_9
    iget-object v4, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f030009

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f03000a

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_c

    if-nez v9, :cond_b

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v9, :cond_d

    new-instance v4, Lg/f;

    invoke-direct {v4, v6, v1}, Lg/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_d
    new-instance v4, Lh/n;

    invoke-direct {v4, v6}, Lh/n;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lh/n;->e:Lh/l;

    iget-object v6, p1, Ld/i0;->h:Lh/n;

    if-ne v4, v6, :cond_e

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_f

    iget-object v8, p1, Ld/i0;->i:Lh/j;

    invoke-virtual {v6, v8}, Lh/n;->r(Lh/b0;)V

    :cond_f
    iput-object v4, p1, Ld/i0;->h:Lh/n;

    iget-object v6, p1, Ld/i0;->i:Lh/j;

    if-eqz v6, :cond_10

    iget-object v8, v4, Lh/n;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Lh/n;->b(Lh/b0;Landroid/content/Context;)V

    :cond_10
    :goto_3
    iget-object v4, p1, Ld/i0;->h:Lh/n;

    if-nez v4, :cond_11

    return v1

    :cond_11
    if-eqz v5, :cond_13

    iget-object v4, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz v4, :cond_13

    iget-object v6, p0, Ld/j0;->t:Ld/w;

    if-nez v6, :cond_12

    new-instance v6, Ld/w;

    invoke-direct {v6, p0}, Ld/w;-><init>(Ld/j0;)V

    iput-object v6, p0, Ld/j0;->t:Ld/w;

    :cond_12
    iget-object v6, p1, Ld/i0;->h:Lh/n;

    iget-object v8, p0, Ld/j0;->t:Ld/w;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lh/n;Ld/w;)V

    :cond_13
    iget-object v4, p1, Ld/i0;->h:Lh/n;

    invoke-virtual {v4}, Lh/n;->w()V

    iget-object v4, p1, Ld/i0;->h:Lh/n;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object p2, p1, Ld/i0;->h:Lh/n;

    if-nez p2, :cond_14

    goto :goto_4

    :cond_14
    if-eqz p2, :cond_15

    iget-object v0, p1, Ld/i0;->i:Lh/j;

    invoke-virtual {p2, v0}, Lh/n;->r(Lh/b0;)V

    :cond_15
    iput-object v7, p1, Ld/i0;->h:Lh/n;

    :goto_4
    if-eqz v5, :cond_16

    iget-object p1, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz p1, :cond_16

    iget-object p0, p0, Ld/j0;->t:Ld/w;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lh/n;Ld/w;)V

    :cond_16
    return v1

    :cond_17
    iput-boolean v1, p1, Ld/i0;->o:Z

    :cond_18
    iget-object v3, p1, Ld/i0;->h:Lh/n;

    invoke-virtual {v3}, Lh/n;->w()V

    iget-object v3, p1, Ld/i0;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_19

    iget-object v4, p1, Ld/i0;->h:Lh/n;

    invoke-virtual {v4, v3}, Lh/n;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Ld/i0;->p:Landroid/os/Bundle;

    :cond_19
    iget-object v3, p1, Ld/i0;->g:Landroid/view/View;

    iget-object v4, p1, Ld/i0;->h:Lh/n;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz v5, :cond_1a

    iget-object p2, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz p2, :cond_1a

    iget-object p0, p0, Ld/j0;->t:Ld/w;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lh/n;Ld/w;)V

    :cond_1a
    iget-object p0, p1, Ld/i0;->h:Lh/n;

    invoke-virtual {p0}, Lh/n;->v()V

    return v1

    :cond_1b
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1c
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1d

    move p2, v2

    goto :goto_6

    :cond_1d
    move p2, v1

    :goto_6
    iget-object v0, p1, Ld/i0;->h:Lh/n;

    invoke-virtual {v0, p2}, Lh/n;->setQwertyMode(Z)V

    iget-object p2, p1, Ld/i0;->h:Lh/n;

    invoke-virtual {p2}, Lh/n;->v()V

    :cond_1e
    iput-boolean v2, p1, Ld/i0;->k:Z

    iput-boolean v1, p1, Ld/i0;->l:Z

    iput-object p1, p0, Ld/j0;->Q:Ld/i0;

    return v2
.end method

.method public final J()V
    .locals 1

    iget-boolean p0, p0, Ld/j0;->A:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Ld/j0;->x0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ld/j0;->B(I)Ld/i0;

    move-result-object v0

    iget-boolean v0, v0, Ld/i0;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/j0;->v:Lg/c;

    if-eqz v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Ld/j0;->y0:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Ld/j0;->x0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Ld/c0;->b(Ljava/lang/Object;Ld/j0;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Ld/j0;->y0:Landroid/window/OnBackInvokedCallback;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Ld/j0;->y0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object p0, p0, Ld/j0;->x0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {p0, v0}, Ld/c0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final L(Landroidx/core/view/c2;Landroid/graphics/Rect;)I
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/c2;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_16

    iget-object v2, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    iget-object v4, p0, Ld/j0;->u0:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Ld/j0;->u0:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Ld/j0;->v0:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Ld/j0;->u0:Landroid/graphics/Rect;

    iget-object v6, p0, Ld/j0;->v0:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/core/view/c2;->c()I

    move-result p2

    invoke-virtual {p1}, Landroidx/core/view/c2;->e()I

    move-result v7

    invoke-virtual {p1}, Landroidx/core/view/c2;->d()I

    move-result v8

    invoke-virtual {p1}, Landroidx/core/view/c2;->b()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    sget-object p2, Landroidx/appcompat/widget/x4;->a:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_4

    const/4 v7, 0x2

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v0

    aput-object v6, v7, v5

    invoke-virtual {p2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "ViewUtils"

    const-string v6, "Could not invoke computeFitSystemWindows"

    invoke-static {p2, v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    sget-object v7, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, Landroidx/core/view/p0;->a(Landroid/view/View;)Landroidx/core/view/c2;

    move-result-object v6

    if-nez v6, :cond_5

    move v7, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroidx/core/view/c2;->c()I

    move-result v7

    :goto_3
    if-nez v6, :cond_6

    move v6, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroidx/core/view/c2;->d()I

    move-result v6

    :goto_4
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_7

    goto :goto_5

    :cond_7
    move p2, v0

    goto :goto_6

    :cond_8
    :goto_5
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p2, v5

    :goto_6
    iget-object v4, p0, Ld/j0;->i:Landroid/content/Context;

    if-lez p1, :cond_9

    iget-object p1, p0, Ld/j0;->E:Landroid/view/View;

    if-nez p1, :cond_9

    new-instance p1, Landroid/view/View;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ld/j0;->E:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v9, -0x1

    const/16 v10, 0x33

    invoke-direct {p1, v9, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v6, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    iget-object v7, p0, Ld/j0;->E:Landroid/view/View;

    invoke-virtual {v6, v7, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_9
    iget-object p1, p0, Ld/j0;->E:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, v9, :cond_a

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, v7, :cond_a

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v6, :cond_b

    :cond_a
    iput v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Ld/j0;->E:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_7
    iget-object p1, p0, Ld/j0;->E:Landroid/view/View;

    if-eqz p1, :cond_c

    move v6, v5

    goto :goto_8

    :cond_c
    move v6, v0

    :goto_8
    if-eqz v6, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Ld/j0;->E:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/i0;->g(Landroid/view/View;)I

    move-result v7

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_d

    goto :goto_9

    :cond_d
    move v5, v0

    :goto_9
    if-eqz v5, :cond_e

    sget-object v5, Lt/h;->a:Ljava/lang/Object;

    const v5, 0x7f050001

    goto :goto_a

    :cond_e
    sget-object v5, Lt/h;->a:Ljava/lang/Object;

    const/high16 v5, 0x7f050000

    :goto_a
    invoke-static {v4, v5}, Lu/d;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_f
    iget-boolean p1, p0, Ld/j0;->K:Z

    if-nez p1, :cond_10

    if-eqz v6, :cond_10

    iget-boolean p1, p0, Ld/j0;->z0:Z

    if-nez p1, :cond_10

    move v1, v0

    :cond_10
    invoke-virtual {p0}, Ld/j0;->y()V

    iget-object p1, p0, Ld/j0;->j:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {p1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v4, p1, Landroidx/appcompat/widget/ContentFrameLayout;

    if-eqz v4, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-eqz v4, :cond_11

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    if-eqz v4, :cond_12

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    if-eqz p1, :cond_13

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_13
    move v5, p2

    goto :goto_b

    :cond_14
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_15

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    goto :goto_b

    :cond_15
    move v5, v0

    move v6, v5

    :goto_b
    if-eqz v5, :cond_17

    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/j0;->E:Landroid/view/View;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, v1, :cond_17

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Ld/j0;->E:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_16
    move v6, v0

    :cond_17
    :goto_c
    iget-object p0, p0, Ld/j0;->E:Landroid/view/View;

    if-eqz p0, :cond_19

    if-eqz v6, :cond_18

    goto :goto_d

    :cond_18
    move v0, v3

    :goto_d
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return v1
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/j0;->y()V

    iget-object v0, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/j0;->k:Ld/d0;

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld/d0;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ld/j0;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Ld/j0;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Ld/j0;->m:Ld/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object v0, p0, Ld/j0;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Ld/j0;->r0:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Ld/j0;->r0:I

    iget-boolean v0, p0, Ld/j0;->q0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    iget-object v2, p0, Ld/j0;->s0:Ld/v;

    invoke-static {v0, v2}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Ld/j0;->q0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lh/n;Landroid/view/MenuItem;)Z
    .locals 6

    invoke-virtual {p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Ld/j0;->X:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lh/n;->k()Lh/n;

    move-result-object p1

    iget-object p0, p0, Ld/j0;->P:[Ld/i0;

    if-eqz p0, :cond_0

    array-length v2, p0

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Ld/i0;->h:Lh/n;

    if-ne v5, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    iget p0, v4, Ld/i0;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j0;->T:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ld/j0;->q(ZZ)Z

    invoke-virtual {p0}, Ld/j0;->z()V

    iget-object v1, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->h(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Ld/j0;->m:Ld/b;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Ld/j0;->t0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Ld/b;->l(Z)V

    :cond_1
    :goto_1
    sget-object v1, Ld/u;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Ld/u;->j(Ld/u;)V

    sget-object v2, Ld/u;->e:Ll/c;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ll/c;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Ld/j0;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Ld/j0;->Y:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Ld/j0;->V:Z

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Ld/u;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ld/u;->j(Ld/u;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Ld/j0;->q0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld/j0;->s0:Ld/v;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j0;->X:Z

    iget v0, p0, Ld/j0;->Z:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ld/j0;->A0:Ll/j;

    iget-object v1, p0, Ld/j0;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ld/j0;->Z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Ld/j0;->A0:Ll/j;

    iget-object v1, p0, Ld/j0;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Ld/j0;->m:Ld/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld/b;->h()V

    :cond_3
    iget-object v0, p0, Ld/j0;->o0:Ld/e0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld/g0;->b()V

    :cond_4
    iget-object p0, p0, Ld/j0;->p0:Ld/e0;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ld/g0;->b()V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 5

    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object v0, p0, Ld/j0;->m:Ld/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ld/b;->n(Z)V

    :cond_0
    iget-object v0, p0, Ld/j0;->P:[Ld/i0;

    if-eqz v0, :cond_1

    array-length v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ld/j0;->u(Ld/i0;Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final i(Lh/n;)V
    .locals 5

    iget-object p1, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast p1, Landroidx/appcompat/widget/s4;

    iget-object p1, p1, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->v:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_8

    iget-object p1, p0, Ld/j0;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast p1, Landroidx/appcompat/widget/s4;

    invoke-virtual {p1}, Landroidx/appcompat/widget/s4;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_1
    invoke-virtual {p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast v2, Landroidx/appcompat/widget/s4;

    iget-object v2, v2, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/p;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    const/16 v3, 0x6c

    if-eqz v2, :cond_6

    iget-object v2, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast v2, Landroidx/appcompat/widget/s4;

    iget-object v2, v2, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/appcompat/widget/p;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :cond_5
    :goto_3
    iget-boolean v0, p0, Ld/j0;->X:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, v1}, Ld/j0;->B(I)Ld/i0;

    move-result-object p0

    iget-object p0, p0, Ld/i0;->h:Lh/n;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_9

    iget-boolean v2, p0, Ld/j0;->X:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Ld/j0;->q0:Z

    if-eqz v2, :cond_7

    iget v2, p0, Ld/j0;->r0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Ld/j0;->s0:Ld/v;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Ld/v;->run()V

    :cond_7
    invoke-virtual {p0, v1}, Ld/j0;->B(I)Ld/i0;

    move-result-object v0

    iget-object v2, v0, Ld/i0;->h:Lh/n;

    if-eqz v2, :cond_9

    iget-boolean v4, v0, Ld/i0;->o:Z

    if-nez v4, :cond_9

    iget-object v4, v0, Ld/i0;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Ld/i0;->h:Lh/n;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast p0, Landroidx/appcompat/widget/s4;

    iget-object p0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_9

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->p()Z

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Ld/j0;->B(I)Ld/i0;

    move-result-object p1

    iput-boolean v0, p1, Ld/i0;->n:Z

    invoke-virtual {p0, p1, v1}, Ld/j0;->u(Ld/i0;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld/j0;->G(Ld/i0;Landroid/view/KeyEvent;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final k(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Ld/j0;->N:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Ld/j0;->H:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Ld/j0;->H:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Ld/j0;->J()V

    iput-boolean v4, p0, Ld/j0;->I:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Ld/j0;->J()V

    iput-boolean v4, p0, Ld/j0;->H:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Ld/j0;->J()V

    iput-boolean v4, p0, Ld/j0;->K:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Ld/j0;->J()V

    iput-boolean v4, p0, Ld/j0;->G:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Ld/j0;->J()V

    iput-boolean v4, p0, Ld/j0;->F:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Ld/j0;->J()V

    iput-boolean v4, p0, Ld/j0;->N:Z

    return v4
.end method

.method public final l(I)V
    .locals 2

    invoke-virtual {p0}, Ld/j0;->y()V

    iget-object v0, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Ld/j0;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Ld/j0;->k:Ld/d0;

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld/d0;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ld/j0;->y()V

    iget-object v0, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Ld/j0;->k:Ld/d0;

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld/d0;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final n(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ld/j0;->y()V

    iget-object v0, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld/j0;->k:Ld/d0;

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld/d0;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Ld/j0;->p:Ljava/lang/CharSequence;

    iget-object v0, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/l1;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/j0;->m:Ld/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ld/b;->p(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ld/j0;->C:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p1, p0, Ld/j0;->w0:Ld/m0;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lb/a;->j:[I

    iget-object v1, p0, Ld/j0;->i:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v2, 0x90

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ld/m0;

    invoke-direct {p1}, Ld/m0;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m0;

    iput-object v1, p0, Ld/j0;->w0:Ld/m0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ld/m0;

    invoke-direct {p1}, Ld/m0;-><init>()V

    :goto_0
    iput-object p1, p0, Ld/j0;->w0:Ld/m0;

    :cond_1
    :goto_1
    iget-object p0, p0, Ld/j0;->w0:Ld/m0;

    sget p1, Landroidx/appcompat/widget/v4;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object p1, Lb/a;->C:[I

    invoke-virtual {p3, p4, p1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "AppCompatViewInflater"

    const-string v4, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_4

    instance-of p1, p3, Lg/f;

    if-eqz p1, :cond_3

    move-object p1, p3

    check-cast p1, Lg/f;

    .line 3
    iget p1, p1, Lg/f;->a:I

    if-eq p1, v2, :cond_4

    .line 4
    :cond_3
    new-instance p1, Lg/f;

    invoke-direct {p1, p3, v2}, Lg/f;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    move-object p1, p3

    .line 5
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v1, 0xc

    goto/16 :goto_4

    :sswitch_1
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v1, 0xb

    goto/16 :goto_4

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v1, 0xa

    goto/16 :goto_4

    :sswitch_3
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v1, 0x9

    goto/16 :goto_4

    :sswitch_4
    const-string v2, "ImageView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "ToggleButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x7

    goto :goto_4

    :sswitch_6
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x6

    goto :goto_4

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x5

    goto :goto_4

    :sswitch_8
    const-string v1, "ImageButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_9
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    move v1, v4

    goto :goto_4

    :sswitch_a
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_b
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    move v1, v3

    goto :goto_4

    :sswitch_c
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_3

    :cond_10
    move v1, v0

    goto :goto_4

    :goto_3
    move v1, v5

    :cond_11
    :goto_4
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, p1, p4}, Ld/m0;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/v;

    move-result-object v1

    goto :goto_5

    .line 6
    :pswitch_1
    new-instance v1, Landroidx/appcompat/widget/b0;

    .line 7
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 8
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Ld/m0;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/w;

    move-result-object v1

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0, p1, p4}, Ld/m0;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/t;

    move-result-object v1

    goto :goto_5

    .line 9
    :pswitch_4
    new-instance v1, Landroidx/appcompat/widget/f0;

    .line 10
    invoke-direct {v1, p1, p4, v0}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_6

    .line 11
    :pswitch_5
    new-instance v1, Landroidx/appcompat/widget/j1;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/j1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 12
    :pswitch_6
    invoke-virtual {p0, p1, p4}, Ld/m0;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/j0;

    move-result-object v1

    goto :goto_5

    .line 13
    :pswitch_7
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 14
    :pswitch_8
    new-instance v1, Landroidx/appcompat/widget/d0;

    const v6, 0x7f030248

    .line 15
    invoke-direct {v1, p1, p4, v6}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_6

    .line 16
    :pswitch_9
    invoke-virtual {p0, p1, p4}, Ld/m0;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/e1;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_12

    goto :goto_6

    .line 17
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " asked to inflate view for <"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">, but returned null"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :pswitch_a
    new-instance v1, Landroidx/appcompat/widget/g0;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 19
    :pswitch_b
    new-instance v1, Landroidx/appcompat/widget/x;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 20
    :pswitch_c
    new-instance v1, Landroidx/appcompat/widget/k0;

    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/k0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_6
    if-nez v1, :cond_17

    if-eq p3, p1, :cond_17

    .line 21
    iget-object p3, p0, Ld/m0;->a:[Ljava/lang/Object;

    const-string v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p2, "class"

    invoke-interface {p4, v2, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_13
    :try_start_1
    aput-object p1, p3, v0

    aput-object p4, p3, v3

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v5, v1, :cond_16

    move v1, v0

    :goto_7
    sget-object v5, Ld/m0;->d:[Ljava/lang/String;

    if-ge v1, v4, :cond_15

    aget-object v5, v5, v1

    invoke-virtual {p0, p1, p2, v5}, Ld/m0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_14

    aput-object v2, p3, v0

    aput-object v2, p3, v3

    move-object v2, v5

    goto :goto_8

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    aput-object v2, p3, v0

    aput-object v2, p3, v3

    goto :goto_8

    :cond_16
    :try_start_2
    invoke-virtual {p0, p1, p2, v2}, Ld/m0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object v2, p3, v0

    aput-object v2, p3, v3

    move-object v2, p0

    goto :goto_8

    :catchall_1
    move-exception p0

    aput-object v2, p3, v0

    aput-object v2, p3, v3

    throw p0

    :catch_0
    aput-object v2, p3, v0

    aput-object v2, p3, v3

    :goto_8
    move-object v1, v2

    :cond_17
    if-eqz v1, :cond_1a

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_1a

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    .line 23
    invoke-static {v1}, Landroidx/core/view/h0;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_9

    .line 24
    :cond_18
    sget-object p1, Ld/m0;->c:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    new-instance p2, Ld/l0;

    invoke-direct {p2, v1, p1}, Ld/l0;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_9
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_c
        -0x56c015e7 -> :sswitch_b
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_9
        -0x37e04bb3 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ld/j0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lg/b;)Lg/c;
    .locals 10

    if-eqz p1, :cond_16

    iget-object v0, p0, Ld/j0;->v:Lg/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/c;->a()V

    :cond_0
    new-instance v0, Ld/z;

    invoke-direct {v0, p0, p1}, Ld/z;-><init>(Ld/j0;Lg/b;)V

    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object p1, p0, Ld/j0;->m:Ld/b;

    iget-object v1, p0, Ld/j0;->l:Ld/r;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ld/b;->q(Ld/z;)Lg/c;

    move-result-object p1

    iput-object p1, p0, Ld/j0;->v:Lg/c;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ld/r;->onSupportActionModeStarted(Lg/c;)V

    :cond_1
    iget-object p1, p0, Ld/j0;->v:Lg/c;

    if-nez p1, :cond_15

    iget-object p1, p0, Ld/j0;->z:Landroidx/core/view/i1;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/core/view/i1;->b()V

    :cond_2
    iget-object p1, p0, Ld/j0;->v:Lg/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lg/c;->a()V

    :cond_3
    const/4 p1, 0x0

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Ld/j0;->X:Z

    if-nez v2, :cond_4

    :try_start_0
    invoke-interface {v1, v0}, Ld/r;->onWindowStartingSupportActionMode(Lg/b;)Lg/c;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_5

    iput-object v2, p0, Ld/j0;->v:Lg/c;

    goto/16 :goto_7

    :cond_5
    iget-object v2, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_d

    iget-boolean v2, p0, Ld/j0;->L:Z

    iget-object v5, p0, Ld/j0;->i:Landroid/content/Context;

    if-eqz v2, :cond_7

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030009

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Lg/f;

    invoke-direct {v6, v5, v4}, Lg/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lg/f;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v6

    :cond_6
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v6, v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f030018

    invoke-direct {v6, v5, p1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Ld/j0;->x:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Le0/o;->d(Landroid/widget/PopupWindow;I)V

    iget-object v6, p0, Ld/j0;->x:Landroid/widget/PopupWindow;

    iget-object v7, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, p0, Ld/j0;->x:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030003

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget-object v5, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v2, p0, Ld/j0;->x:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v2, Ld/v;

    invoke-direct {v2, p0, v3}, Ld/v;-><init>(Ld/j0;I)V

    iput-object v2, p0, Ld/j0;->y:Ld/v;

    goto :goto_4

    :cond_7
    iget-object v2, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "collapsing_toolbar"

    const-string v9, "id"

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sesl_toolbar_container"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v9, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :cond_8
    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean v2, p0, Ld/j0;->K:Z

    if-eqz v2, :cond_a

    :goto_1
    iget-object v6, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    :cond_a
    const v2, 0x7f090044

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Ld/j0;->D()V

    iget-object v6, p0, Ld/j0;->m:Ld/b;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ld/b;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_b
    move-object v6, p1

    :goto_2
    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    move-object v5, v6

    :goto_3
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_d
    :goto_4
    iget-object v2, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v2, :cond_13

    iget-object v2, p0, Ld/j0;->z:Landroidx/core/view/i1;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroidx/core/view/i1;->b()V

    :cond_e
    iget-object v2, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance v2, Lg/g;

    iget-object v5, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v2, v5, v6, v0}, Lg/g;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lg/b;)V

    iget-object v5, v2, Lg/g;->h:Lh/n;

    invoke-virtual {v0, v2, v5}, Ld/z;->d(Lg/c;Lh/n;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v2}, Lg/g;->h()V

    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lg/c;)V

    iput-object v2, p0, Ld/j0;->v:Lg/c;

    iget-boolean p1, p0, Ld/j0;->A:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    if-eqz p1, :cond_f

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/l0;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v3

    goto :goto_5

    :cond_f
    move p1, v4

    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_10

    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/view/x0;->a(Landroid/view/View;)Landroidx/core/view/i1;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/i1;->a(F)V

    iput-object p1, p0, Ld/j0;->z:Landroidx/core/view/i1;

    new-instance v0, Ld/y;

    invoke-direct {v0, p0, v3}, Ld/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/core/view/i1;->d(Landroidx/core/view/j1;)V

    goto :goto_6

    :cond_10
    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_11

    iget-object p1, p0, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/m0;->c(Landroid/view/View;)V

    :cond_11
    :goto_6
    iget-object p1, p0, Ld/j0;->x:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_13

    iget-object p1, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/j0;->y:Ld/v;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_12
    iput-object p1, p0, Ld/j0;->v:Lg/c;

    :cond_13
    :goto_7
    iget-object p1, p0, Ld/j0;->v:Lg/c;

    if-eqz p1, :cond_14

    if-eqz v1, :cond_14

    invoke-interface {v1, p1}, Ld/r;->onSupportActionModeStarted(Lg/c;)V

    :cond_14
    invoke-virtual {p0}, Ld/j0;->K()V

    iget-object p1, p0, Ld/j0;->v:Lg/c;

    iput-object p1, p0, Ld/j0;->v:Lg/c;

    :cond_15
    invoke-virtual {p0}, Ld/j0;->K()V

    iget-object p0, p0, Ld/j0;->v:Lg/c;

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActionMode callback can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(ZZ)Z
    .locals 18

    move-object/from16 v1, p0

    iget-boolean v0, v1, Ld/j0;->X:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/16 v0, -0x64

    iget v3, v1, Ld/j0;->Z:I

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    sget v3, Ld/u;->b:I

    :goto_0
    iget-object v4, v1, Ld/j0;->i:Landroid/content/Context;

    invoke-virtual {v1, v4, v3}, Ld/j0;->E(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v2}, Ld/j0;->v(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v7

    iget-boolean v0, v1, Ld/j0;->n0:Z

    const-string v8, "AppCompatDelegate"

    iget-object v9, v1, Ld/j0;->h:Ljava/lang/Object;

    const/4 v10, 0x1

    if-nez v0, :cond_3

    instance-of v0, v9, Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v11, Landroid/content/ComponentName;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v11, v4, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v12, 0x100c0000

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v1, Ld/j0;->m0:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v11, "Exception while getting ActivityInfo"

    invoke-static {v8, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v2, v1, Ld/j0;->m0:I

    :cond_3
    :goto_1
    iput-boolean v10, v1, Ld/j0;->n0:Z

    iget v0, v1, Ld/j0;->m0:I

    :goto_2
    iget-object v11, v1, Ld/j0;->Y:Landroid/content/res/Configuration;

    if-nez v11, :cond_4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    :cond_4
    iget v12, v11, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v12, v12, 0x30

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    invoke-static {v11}, Ld/a0;->b(Landroid/content/res/Configuration;)Landroidx/core/os/j;

    move-result-object v11

    if-eq v12, v7, :cond_5

    const/16 v13, 0x200

    goto :goto_3

    :cond_5
    move v13, v2

    :goto_3
    not-int v14, v0

    and-int/2addr v14, v13

    const/16 v16, 0x4

    if-eqz v14, :cond_a

    if-eqz p1, :cond_a

    iget-boolean v14, v1, Ld/j0;->T:Z

    if-eqz v14, :cond_a

    sget-boolean v14, Ld/j0;->C0:Z

    if-nez v14, :cond_6

    iget-boolean v6, v1, Ld/j0;->V:Z

    if-eqz v6, :cond_a

    :cond_6
    instance-of v6, v9, Landroid/app/Activity;

    if-eqz v6, :cond_a

    move-object v6, v9

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isChild()Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v15, 0xc

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v10

    const/4 v12, 0x2

    aput-object v11, v15, v12

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-object v12, v15, v11

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_7

    move v11, v10

    goto :goto_4

    :cond_7
    move v11, v2

    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v15, v16

    and-int/lit8 v11, v0, 0x4

    if-eqz v11, :cond_8

    move v11, v10

    goto :goto_5

    :cond_8
    move v11, v2

    :goto_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v15, v12

    and-int/lit16 v11, v0, 0x2000

    if-eqz v11, :cond_9

    move v11, v10

    goto :goto_6

    :cond_9
    move v11, v2

    :goto_6
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v15, v12

    iget-boolean v11, v1, Ld/j0;->T:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v15, v12

    iget-boolean v11, v1, Ld/j0;->V:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v12, 0x8

    aput-object v11, v15, v12

    const/16 v11, 0x9

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v15, v11

    const/16 v11, 0xa

    aput-object v9, v15, v11

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v15, v12

    const-string v11, "updateAppConfiguration attempting to recreate Activity [currentNightMode:%s, newNightMode:%s, currentLocales:%s, newLocales:%s, activityHandlingNightModeChanges:%s, activityHandlingLocalesChanges:%s, activityHandlingLayoutDirectionChanges:%s, baseContextAttached:%s, created:%s, canReturnDifferentContext:%s, host:%s], application configuration [%s]"

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lt/h;->a:Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    move v6, v10

    goto :goto_7

    :cond_a
    move v6, v2

    :goto_7
    if-nez v6, :cond_e

    if-eqz v13, :cond_e

    and-int/2addr v0, v13

    if-ne v0, v13, :cond_b

    move v2, v10

    :cond_b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->uiMode:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v0, v1, Ld/j0;->l0:I

    if-eqz v0, :cond_c

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v7, v1, Ld/j0;->l0:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v2, :cond_f

    instance-of v0, v9, Landroid/app/Activity;

    if-eqz v0, :cond_f

    move-object v0, v9

    check-cast v0, Landroid/app/Activity;

    instance-of v2, v0, Landroidx/lifecycle/z;

    if-eqz v2, :cond_d

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/z;

    invoke-interface {v2}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/b0;

    iget-object v2, v2, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v7}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_d
    iget-boolean v2, v1, Ld/j0;->V:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Ld/j0;->X:Z

    if-nez v2, :cond_f

    :goto_8
    invoke-virtual {v0, v6}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_9

    :cond_e
    move v10, v6

    :cond_f
    :goto_9
    if-eqz v10, :cond_11

    instance-of v0, v9, Ld/q;

    if-eqz v0, :cond_11

    and-int/lit16 v0, v13, 0x200

    if-eqz v0, :cond_10

    move-object v0, v9

    check-cast v0, Ld/q;

    invoke-virtual {v0, v5}, Ld/q;->onNightModeChanged(I)V

    :cond_10
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_11

    check-cast v9, Ld/q;

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ld/q;->onLocalesChanged(Landroidx/core/os/j;)V

    :cond_11
    if-nez v3, :cond_12

    invoke-virtual {v1, v4}, Ld/j0;->A(Landroid/content/Context;)Ld/g0;

    move-result-object v0

    invoke-virtual {v0}, Ld/g0;->f()V

    goto :goto_a

    :cond_12
    iget-object v0, v1, Ld/j0;->o0:Ld/e0;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ld/g0;->b()V

    :cond_13
    :goto_a
    const/4 v0, 0x3

    if-ne v3, v0, :cond_15

    iget-object v0, v1, Ld/j0;->p0:Ld/e0;

    if-nez v0, :cond_14

    new-instance v0, Ld/e0;

    invoke-direct {v0, v1, v4}, Ld/e0;-><init>(Ld/j0;Landroid/content/Context;)V

    iput-object v0, v1, Ld/j0;->p0:Ld/e0;

    :cond_14
    iget-object v0, v1, Ld/j0;->p0:Ld/e0;

    invoke-virtual {v0}, Ld/g0;->f()V

    goto :goto_b

    :cond_15
    iget-object v0, v1, Ld/j0;->p0:Ld/e0;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ld/g0;->b()V

    :cond_16
    :goto_b
    return v10
.end method

.method public final r(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Ld/j0;->j:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Ld/d0;

    if-nez v2, :cond_5

    new-instance v1, Ld/d0;

    invoke-direct {v1, p0, v0}, Ld/d0;-><init>(Ld/j0;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ld/j0;->k:Ld/d0;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Ld/j0;->B0:[I

    iget-object v1, p0, Ld/j0;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/z;->a()Landroidx/appcompat/widget/z;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/l2;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v3, v6}, Landroidx/appcompat/widget/l2;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Ld/j0;->j:Landroid/view/Window;

    iget-object p1, p0, Ld/j0;->x0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Ld/j0;->y0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Ld/c0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Ld/j0;->y0:Landroid/window/OnBackInvokedCallback;

    :cond_2
    iget-object p1, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ld/c0;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Ld/j0;->x0:Landroid/window/OnBackInvokedDispatcher;

    invoke-virtual {p0}, Ld/j0;->K()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s(ILd/i0;Lh/n;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Ld/j0;->P:[Ld/i0;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Ld/i0;->h:Lh/n;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Ld/i0;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Ld/j0;->X:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Ld/j0;->k:Ld/d0;

    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p2, Ld/d0;->e:Z

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, Ld/d0;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    iput-boolean v1, p2, Ld/d0;->e:Z

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final t(Lh/n;)V
    .locals 2

    iget-boolean v0, p0, Ld/j0;->O:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j0;->O:Z

    iget-object v0, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast v0, Landroidx/appcompat/widget/s4;

    iget-object v0, v0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/p;->m()Z

    iget-object v0, v0, Landroidx/appcompat/widget/p;->x:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lh/z;->j:Lh/g0;

    invoke-virtual {v0}, Lh/g0;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ld/j0;->X:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/j0;->O:Z

    return-void
.end method

.method public final u(Ld/i0;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget v2, p1, Ld/i0;->a:I

    if-nez v2, :cond_2

    iget-object v2, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz v2, :cond_2

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast v2, Landroidx/appcompat/widget/s4;

    iget-object v2, v2, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/widget/p;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object p1, p1, Ld/i0;->h:Lh/n;

    invoke-virtual {p0, p1}, Ld/j0;->t(Lh/n;)V

    return-void

    :cond_2
    iget-object v2, p0, Ld/j0;->i:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-boolean v4, p1, Ld/i0;->m:Z

    if-eqz v4, :cond_4

    iget-object v4, p1, Ld/i0;->e:Ld/h0;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Ld/i0;->e:Ld/h0;

    invoke-interface {v2, v4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_3
    if-eqz p2, :cond_4

    iget p2, p1, Ld/i0;->a:I

    invoke-virtual {p0, p2, p1, v3}, Ld/j0;->s(ILd/i0;Lh/n;)V

    :cond_4
    iput-boolean v1, p1, Ld/i0;->k:Z

    iput-boolean v1, p1, Ld/i0;->l:Z

    iput-boolean v1, p1, Ld/i0;->m:Z

    iput-object v3, p1, Ld/i0;->f:Landroid/view/View;

    iput-boolean v0, p1, Ld/i0;->n:Z

    iget-object p2, p0, Ld/j0;->Q:Ld/i0;

    if-ne p2, p1, :cond_5

    iput-object v3, p0, Ld/j0;->Q:Ld/i0;

    :cond_5
    iget p1, p1, Ld/i0;->a:I

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ld/j0;->K()V

    :cond_6
    return-void
.end method

.method public final w(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/core/view/f;

    if-nez v1, :cond_0

    instance-of v0, v0, Ld/n;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ld/j0;->k:Ld/d0;

    iget-object v4, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v1, v0, Ld/d0;->d:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v0, Ld/d0;->d:Z

    if-eqz v4, :cond_2

    return v1

    :catchall_0
    move-exception p0

    iput-boolean v2, v0, Ld/d0;->d:Z

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    const/4 v5, 0x4

    if-eqz v4, :cond_7

    if-eq v0, v5, :cond_5

    if-eq v0, v3, :cond_4

    goto/16 :goto_c

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0, v2}, Ld/j0;->B(I)Ld/i0;

    move-result-object v0

    iget-boolean v2, v0, Ld/i0;->m:Z

    if-nez v2, :cond_18

    invoke-virtual {p0, v0, p1}, Ld/j0;->I(Ld/i0;Landroid/view/KeyEvent;)Z

    goto/16 :goto_d

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Ld/j0;->R:Z

    goto/16 :goto_c

    :cond_7
    if-eq v0, v5, :cond_16

    if-eq v0, v3, :cond_8

    goto/16 :goto_c

    :cond_8
    iget-object v0, p0, Ld/j0;->v:Lg/c;

    if-eqz v0, :cond_9

    goto/16 :goto_d

    :cond_9
    invoke-virtual {p0, v2}, Ld/j0;->B(I)Ld/i0;

    move-result-object v0

    iget-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    iget-object v4, p0, Ld/j0;->i:Landroid/content/Context;

    if-eqz v3, :cond_10

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast v3, Landroidx/appcompat/widget/s4;

    iget-object v3, v3, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_a

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->v:Z

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_10

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast v3, Landroidx/appcompat/widget/s4;

    iget-object v3, v3, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_c

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroidx/appcompat/widget/p;->n()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_3

    :cond_b
    move v3, v2

    :goto_3
    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_4

    :cond_c
    move v3, v2

    :goto_4
    if-nez v3, :cond_e

    iget-boolean v3, p0, Ld/j0;->X:Z

    if-nez v3, :cond_13

    invoke-virtual {p0, v0, p1}, Ld/j0;->I(Ld/i0;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p0, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast p0, Landroidx/appcompat/widget/s4;

    iget-object p0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_13

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->p()Z

    move-result p0

    if-eqz p0, :cond_d

    move p0, v1

    goto :goto_5

    :cond_d
    move p0, v2

    :goto_5
    if-eqz p0, :cond_13

    :goto_6
    goto :goto_9

    :cond_e
    iget-object p0, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/m1;

    check-cast p0, Landroidx/appcompat/widget/s4;

    iget-object p0, p0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_13

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/widget/p;->m()Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v1

    goto :goto_7

    :cond_f
    move p0, v2

    :goto_7
    if-eqz p0, :cond_13

    goto :goto_6

    :cond_10
    iget-boolean v3, v0, Ld/i0;->m:Z

    if-nez v3, :cond_14

    iget-boolean v5, v0, Ld/i0;->l:Z

    if-eqz v5, :cond_11

    goto :goto_a

    :cond_11
    iget-boolean v3, v0, Ld/i0;->k:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v0, Ld/i0;->o:Z

    if-eqz v3, :cond_12

    iput-boolean v2, v0, Ld/i0;->k:Z

    invoke-virtual {p0, v0, p1}, Ld/j0;->I(Ld/i0;Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_8

    :cond_12
    move v3, v1

    :goto_8
    if-eqz v3, :cond_13

    invoke-virtual {p0, v0, p1}, Ld/j0;->G(Ld/i0;Landroid/view/KeyEvent;)V

    :goto_9
    move p0, v1

    goto :goto_b

    :cond_13
    move p0, v2

    goto :goto_b

    :cond_14
    :goto_a
    invoke-virtual {p0, v0, v1}, Ld/j0;->u(Ld/i0;Z)V

    move p0, v3

    :goto_b
    if-eqz p0, :cond_18

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_15

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_d

    :cond_15
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_16
    invoke-virtual {p0}, Ld/j0;->F()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_d

    :cond_17
    :goto_c
    move v1, v2

    :cond_18
    :goto_d
    return v1
.end method

.method public final x(I)V
    .locals 3

    invoke-virtual {p0, p1}, Ld/j0;->B(I)Ld/i0;

    move-result-object v0

    iget-object v1, v0, Ld/i0;->h:Lh/n;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Ld/i0;->h:Lh/n;

    invoke-virtual {v2, v1}, Lh/n;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Ld/i0;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Ld/i0;->h:Lh/n;

    invoke-virtual {v1}, Lh/n;->w()V

    iget-object v1, v0, Ld/i0;->h:Lh/n;

    invoke-virtual {v1}, Lh/n;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/i0;->o:Z

    iput-boolean v1, v0, Ld/i0;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld/j0;->B(I)Ld/i0;

    move-result-object v0

    iput-boolean p1, v0, Ld/i0;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ld/j0;->I(Ld/i0;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final y()V
    .locals 10

    iget-boolean v0, p0, Ld/j0;->A:Z

    if-nez v0, :cond_1c

    sget-object v0, Lb/a;->j:[I

    iget-object v1, p0, Ld/j0;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v6}, Ld/j0;->k(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Ld/j0;->k(I)Z

    :cond_1
    :goto_0
    const/16 v3, 0x92

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v4, 0x6d

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Ld/j0;->k(I)Z

    :cond_2
    const/16 v3, 0x93

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ld/j0;->k(I)Z

    :cond_3
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Ld/j0;->L:Z

    const/16 v3, 0x56

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Ld/j0;->z0:Z

    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Ld/j0;->z()V

    iget-object v2, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v3, p0, Ld/j0;->N:Z

    const/4 v7, 0x0

    if-nez v3, :cond_a

    iget-boolean v3, p0, Ld/j0;->L:Z

    if-eqz v3, :cond_5

    const v3, 0x7f0c0084

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-boolean v5, p0, Ld/j0;->I:Z

    iput-boolean v5, p0, Ld/j0;->H:Z

    goto/16 :goto_3

    :cond_5
    iget-boolean v2, p0, Ld/j0;->H:Z

    if-eqz v2, :cond_9

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v8, 0x7f030009

    invoke-virtual {v3, v8, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_6

    new-instance v3, Lg/f;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v1, v2}, Lg/f;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    move-object v3, v1

    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00a5

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0900a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/l1;

    iput-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    invoke-virtual {p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v3, v8}, Landroidx/appcompat/widget/l1;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v3, p0, Ld/j0;->I:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_7
    iget-boolean v3, p0, Ld/j0;->F:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    const/4 v4, 0x2

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_8
    iget-boolean v3, p0, Ld/j0;->G:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    const/4 v4, 0x5

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    goto :goto_3

    :cond_9
    move-object v2, v7

    goto :goto_3

    :cond_a
    iget-boolean v3, p0, Ld/j0;->K:Z

    if-eqz v3, :cond_b

    const v3, 0x7f0c00a4

    goto :goto_2

    :cond_b
    const v3, 0x7f0c00a3

    :goto_2
    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_c
    :goto_3
    if-eqz v2, :cond_1a

    new-instance v3, Ld/w;

    invoke-direct {v3, p0}, Ld/w;-><init>(Ld/j0;)V

    sget-object v4, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, v3}, Landroidx/core/view/o0;->u(Landroid/view/View;Landroidx/core/view/t;)V

    iget-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-nez v3, :cond_d

    const v3, 0x7f090258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ld/j0;->C:Landroid/widget/TextView;

    :cond_d
    sget-object v3, Landroidx/appcompat/widget/x4;->a:Ljava/lang/reflect/Method;

    const-string v3, "ViewUtils"

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v8, "makeOptionalFitsSystemWindows"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_e
    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    const-string v8, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v3, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    const-string v4, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v4, p0, Ld/j0;->j:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_10

    :goto_5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_f
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setId(I)V

    instance-of v9, v4, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_10

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v4, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v4, Ld/x;

    invoke-direct {v4, p0}, Ld/x;-><init>(Ld/j0;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/k1;)V

    iput-object v2, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    iget-object v2, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_11

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_6

    :cond_11
    iget-object v2, p0, Ld/j0;->p:Ljava/lang/CharSequence;

    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Ld/j0;->q:Landroidx/appcompat/widget/l1;

    if-eqz v3, :cond_12

    invoke-interface {v3, v2}, Landroidx/appcompat/widget/l1;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_12
    iget-object v3, p0, Ld/j0;->m:Ld/b;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v2}, Ld/b;->p(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_13
    iget-object v3, p0, Ld/j0;->C:Landroid/widget/TextView;

    if-eqz v3, :cond_14

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_7
    iget-object v2, p0, Ld/j0;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v9, v2, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v9, v4, v7, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Landroidx/core/view/l0;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_15
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x98

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x99

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iput-boolean v6, p0, Ld/j0;->A:Z

    invoke-virtual {p0, v5}, Ld/j0;->B(I)Ld/i0;

    move-result-object v0

    iget-boolean v1, p0, Ld/j0;->X:Z

    if-nez v1, :cond_1c

    iget-object v0, v0, Ld/i0;->h:Lh/n;

    if-nez v0, :cond_1c

    iget v0, p0, Ld/j0;->r0:I

    const/16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Ld/j0;->r0:I

    iget-boolean v0, p0, Ld/j0;->q0:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld/j0;->s0:Ld/v;

    invoke-static {v0, v1}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Ld/j0;->q0:Z

    goto :goto_8

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Ld/j0;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/j0;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/j0;->L:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/j0;->K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ld/j0;->N:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "createSubDecor: mContext = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppCompatDelegate"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_8
    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Ld/j0;->j:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/j0;->h:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/j0;->r(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Ld/j0;->j:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
