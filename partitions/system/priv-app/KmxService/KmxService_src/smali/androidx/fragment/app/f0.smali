.class public final Landroidx/fragment/app/f0;
.super Landroidx/fragment/app/k0;
.source "SourceFile"

# interfaces
.implements Lu/k;
.implements Lu/l;
.implements Lt/m0;
.implements Lt/n0;
.implements Landroidx/lifecycle/l1;
.implements Landroidx/activity/z;
.implements Landroidx/activity/result/k;
.implements Landroidx/savedstate/f;
.implements Landroidx/fragment/app/c1;
.implements Landroidx/core/view/h;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/g0;


# direct methods
.method public constructor <init>(Ld/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-direct {p0, p1}, Landroidx/fragment/app/k0;-><init>(Ld/q;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g0;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final addMenuProvider(Landroidx/core/view/n;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/n;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Landroidx/core/util/a;)V

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnMultiWindowModeChangedListener(Landroidx/core/util/a;)V

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnPictureInPictureModeChangedListener(Landroidx/core/util/a;)V

    return-void
.end method

.method public final addOnTrimMemoryListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addOnTrimMemoryListener(Landroidx/core/util/a;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/j;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/j;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/t;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/y;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/y;

    move-result-object p0

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object p0

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/k1;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/k1;

    move-result-object p0

    return-object p0
.end method

.method public final removeMenuProvider(Landroidx/core/view/n;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeMenuProvider(Landroidx/core/view/n;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnConfigurationChangedListener(Landroidx/core/util/a;)V

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnMultiWindowModeChangedListener(Landroidx/core/util/a;)V

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnPictureInPictureModeChangedListener(Landroidx/core/util/a;)V

    return-void
.end method

.method public final removeOnTrimMemoryListener(Landroidx/core/util/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f0;->e:Landroidx/fragment/app/g0;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnTrimMemoryListener(Landroidx/core/util/a;)V

    return-void
.end method
