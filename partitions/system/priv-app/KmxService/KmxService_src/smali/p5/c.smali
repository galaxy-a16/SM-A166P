.class public Lp5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/l;
.implements Lh/a0;
.implements Landroidx/appcompat/widget/c1;
.implements Landroidx/core/view/t;
.implements Landroidx/profileinstaller/d;
.implements Lc0/y;
.implements Lc3/d;
.implements Lc3/b;
.implements Lcom/google/android/gms/measurement/internal/t5;
.implements Lz3/a;
.implements Lcom/google/android/material/internal/g;


# static fields
.field public static volatile c:Lp5/c;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp5/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lp5/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0x1c

    iput v0, p0, Lp5/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lp5/c;->b:Ljava/lang/Object;

    const-string v1, "com.google.android.gms.appid-no-backup"

    .line 3
    sget-object v2, Lt/h;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lu/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    if-nez p1, :cond_1

    const-string p1, "FirebaseMessaging"

    const-string v1, "App restored, clearing state"

    .line 7
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "FirebaseMessaging"

    const/4 v0, 0x3

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FirebaseMessaging"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error creating file in no backup dir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lp5/c;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/c0;

    invoke-direct {v0, p1}, Landroidx/core/view/c0;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lp5/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lp5/c;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, Lp5/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lp5/c;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/c0;

    invoke-direct {v0, p1}, Landroidx/core/view/c0;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object v0, p0, Lp5/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lp5/c;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lj0/i;

    invoke-direct {v0, p1}, Lj0/i;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lp5/c;->b:Ljava/lang/Object;

    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "textView cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 2

    const/16 v0, 0x1a

    iput v0, p0, Lp5/c;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    const v0, 0x3dcccccd    # 0.1f

    .line 17
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 18
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    const v0, 0x3f19999a    # 0.6f

    .line 19
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 20
    iput p0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:F

    const/4 p0, 0x0

    .line 21
    iput p0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lp5/c;->a:I

    .line 22
    invoke-direct {p0, p1, v0}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    iput p2, p0, Lp5/c;->a:I

    iput-object p1, p0, Lp5/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Lb3/d;

    invoke-interface {p0, p1}, Lb3/d;->a(I)V

    return-void
.end method

.method public final b(Lh/n;Z)V
    .locals 2

    iget v0, p0, Lp5/c;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v0, p1, Lh/h0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lh/n;->k()Lh/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lh/n;->c(Z)V

    :cond_0
    check-cast p0, Landroidx/appcompat/widget/p;

    iget-object p0, p0, Lh/d;->e:Lh/a0;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lh/a0;->b(Lh/n;Z)V

    :cond_1
    return-void

    :goto_0
    instance-of v0, p1, Lh/h0;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lh/n;->k()Lh/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lh/n;->c(Z)V

    :cond_2
    check-cast p0, Lg4/i;

    iget-object p0, p0, Lh/d;->e:Lh/a0;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2}, Lh/a0;->b(Lh/n;Z)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Lb3/d;

    invoke-interface {p0}, Lb3/d;->c()V

    return-void
.end method

.method public final d(Landroid/view/View;)Z
    .locals 2

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Lh1/k;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, Lh1/k;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->b(I)V

    :cond_0
    return v0
.end method

.method public final e(Lh/n;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/q5;

    if-eqz v0, :cond_1

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/q5;->l:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p1, "AppId not known when logging event"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "_err"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    new-instance v1, Lh/h;

    invoke-direct {v1, p0, p1, p2}, Lh/h;-><init>(Lp5/c;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method

.method public final h(Landroid/view/View;Landroidx/core/view/c2;)Landroidx/core/view/c2;
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lp5/c;->a:I

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroidx/core/view/c2;

    invoke-static {v1, p2}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Landroidx/core/view/c2;

    invoke-virtual {p2}, Landroidx/core/view/c2;->e()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p2, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {v0}, Landroidx/core/view/a2;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2
    if-ge p1, v1, :cond_4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lr/f;

    iget-object v2, v2, Lr/f;->a:Lr/c;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/core/view/a2;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-object p2

    :goto_4
    sget v1, Lcom/google/android/material/appbar/AppBarLayout;->r0:I

    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Landroidx/core/view/c2;->a(I)Lw/c;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Landroidx/core/view/c2;->a(I)Lw/c;

    move-result-object v2

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->p0:Lw/c;

    invoke-virtual {v2, v3}, Lw/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->q0:Lw/c;

    invoke-virtual {v1, v3}, Lw/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[onApplyWindowInsets] sysInsets : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", tappableInsets : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppBarLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N()V

    invoke-virtual {v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->a0()V

    iget-object v4, v3, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v3}, Lu3/o;->t()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/material/appbar/AppBarLayout;->f(I)V

    :cond_7
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->q0:Lw/c;

    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->p0:Lw/c;

    :cond_8
    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, p2

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Landroidx/core/view/c2;

    invoke-static {v2, v1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Landroidx/core/view/c2;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    if-lez v1, :cond_a

    move p1, v0

    :cond_a
    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_b
    return-object p2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lh/n;)V
    .locals 4

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Ld/u0;

    iget-object v0, p0, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget-object v0, v0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/p;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/16 v0, 0x6c

    if-eqz v2, :cond_2

    iget-object p0, p0, Ld/u0;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Ld/u0;->b:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Ld/u0;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final j(Lh/n;)Z
    .locals 2

    iget v0, p0, Lp5/c;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/appcompat/widget/p;

    iget-object v0, p0, Lh/d;->c:Lh/n;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lh/h0;

    iget-object v0, v0, Lh/h0;->E:Lh/p;

    iget v0, v0, Lh/p;->a:I

    iput v0, p0, Landroidx/appcompat/widget/p;->B:I

    iget-object p0, p0, Lh/d;->e:Lh/a0;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lh/a0;->j(Lh/n;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    check-cast p0, Lg4/i;

    iget-object p0, p0, Lh/d;->e:Lh/a0;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lh/a0;->j(Lh/n;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 0

    sget-object p0, Landroidx/profileinstaller/i;->d:Ll4/e;

    invoke-virtual {p0}, Ll4/e;->k()V

    return-void
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/profileinstaller/i;->d:Ll4/e;

    invoke-virtual {v0, p1, p2}, Ll4/e;->l(ILjava/lang/Object;)V

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void
.end method

.method public final m(La3/b;)V
    .locals 1

    iget v0, p1, La3/b;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Lc3/e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc3/e;->n()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lc3/e;->e(Lc3/j;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object p0, p0, Lc3/e;->p:Lc3/c;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lc3/c;->d(La3/b;)V

    :cond_2
    return-void
.end method

.method public n(I)V
    .locals 0

    return-void
.end method

.method public final o(Ljava/io/BufferedWriter;Ln2/q;)V
    .locals 7

    new-instance v6, Le5/e;

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Le5/d;

    iget-object v2, p0, Le5/d;->a:Ljava/util/HashMap;

    iget-object v3, p0, Le5/d;->b:Ljava/util/HashMap;

    iget-object v4, p0, Le5/d;->c:Le5/a;

    iget-boolean v5, p0, Le5/d;->d:Z

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Le5/e;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;Le5/a;Z)V

    invoke-virtual {v6, p2}, Le5/e;->e(Ljava/lang/Object;)Le5/e;

    invoke-virtual {v6}, Le5/e;->g()V

    iget-object p0, v6, Le5/e;->b:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method public final p()Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/f3;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f3;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/f3;->b:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/measurement/f3;->i:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object p0, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    :try_start_1
    new-instance v1, Ll/b;

    invoke-direct {v1, v0}, Ll/b;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Ljava/util/HashMap;-><init>(IF)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object p0, v1

    :goto_1
    return-object p0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method
