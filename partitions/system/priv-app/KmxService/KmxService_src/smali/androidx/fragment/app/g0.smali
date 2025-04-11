.class public abstract Landroidx/fragment/app/g0;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Lt/f;
.implements Lt/g;


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

.field final mFragments:Landroidx/fragment/app/j0;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/f0;

    move-object v1, p0

    check-cast v1, Ld/q;

    invoke-direct {v0, v1}, Landroidx/fragment/app/f0;-><init>(Ld/q;)V

    new-instance v2, Landroidx/fragment/app/j0;

    invoke-direct {v2, v0}, Landroidx/fragment/app/j0;-><init>(Landroidx/fragment/app/f0;)V

    iput-object v2, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->mStopped:Z

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object v2

    new-instance v3, Landroidx/fragment/app/c0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/fragment/app/c0;-><init>(Ljava/lang/Object;I)V

    const-string v5, "android:support:lifecycle"

    invoke-virtual {v2, v5, v3}, Landroidx/savedstate/d;->c(Ljava/lang/String;Landroidx/savedstate/c;)V

    new-instance v2, Landroidx/fragment/app/d0;

    invoke-direct {v2, p0, v4}, Landroidx/fragment/app/d0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {p0, v2}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Landroidx/core/util/a;)V

    new-instance v2, Landroidx/fragment/app/d0;

    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/d0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {p0, v2}, Landroidx/activity/ComponentActivity;->addOnNewIntentListener(Landroidx/core/util/a;)V

    new-instance v0, Landroidx/fragment/app/e0;

    invoke-direct {v0, v1}, Landroidx/fragment/app/e0;-><init>(Ld/q;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/d;)V

    return-void
.end method

.method public static c(Landroidx/fragment/app/y0;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/y0;->c:Landroidx/fragment/app/h1;

    invoke-virtual {p0}, Landroidx/fragment/app/h1;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/y0;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/fragment/app/g0;->c(Landroidx/fragment/app/y0;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/s1;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/s1;->b()V

    iget-object v2, v2, Landroidx/fragment/app/s1;->e:Landroidx/lifecycle/b0;

    iget-object v2, v2, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/s1;

    iget-object v0, v0, Landroidx/fragment/app/s1;->e:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->g(Landroidx/lifecycle/Lifecycle$State;)V

    move v0, v3

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/b0;

    iget-object v2, v2, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->g(Landroidx/lifecycle/Lifecycle$State;)V

    move v0, v3

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    iget-object p0, p0, Landroidx/fragment/app/y0;->f:Landroidx/fragment/app/m0;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/m0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lt/m;->shouldDumpInternalState([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/g0;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/g0;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/g0;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lo0/a;->a(Landroidx/lifecycle/z;)Lo0/c;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lo0/c;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/y0;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/y0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    return-object p0
.end method

.method public getSupportLoaderManager()Lo0/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lo0/a;->a(Landroidx/lifecycle/z;)Lo0/c;

    move-result-object p0

    return-object p0
.end method

.method public markFragmentsCreated()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/g0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroidx/fragment/app/g0;->c(Landroidx/fragment/app/y0;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    invoke-virtual {v0}, Landroidx/fragment/app/j0;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/y0;->F:Z

    iput-boolean p1, p0, Landroidx/fragment/app/y0;->G:Z

    iget-object v0, p0, Landroidx/fragment/app/y0;->M:Landroidx/fragment/app/b1;

    iput-boolean p1, v0, Landroidx/fragment/app/b1;->i:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->u(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/g0;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/g0;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object v0, v0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    invoke-virtual {v0}, Landroidx/fragment/app/y0;->l()V

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/y0;->j(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object v0, v0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/y0;->u(I)V

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/g0;->onResumeFragments()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    invoke-virtual {v0}, Landroidx/fragment/app/j0;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->mResumed:Z

    iget-object v1, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    invoke-virtual {v1}, Landroidx/fragment/app/j0;->a()V

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->y(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/y0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/y0;->G:Z

    iget-object v1, p0, Landroidx/fragment/app/y0;->M:Landroidx/fragment/app/b1;

    iput-boolean v0, v1, Landroidx/fragment/app/b1;->i:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->u(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->mStopped:Z

    iget-boolean v1, p0, Landroidx/fragment/app/g0;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroidx/fragment/app/g0;->mCreated:Z

    iget-object v1, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object v1, v1, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object v1, v1, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    iput-boolean v0, v1, Landroidx/fragment/app/y0;->F:Z

    iput-boolean v0, v1, Landroidx/fragment/app/y0;->G:Z

    iget-object v3, v1, Landroidx/fragment/app/y0;->M:Landroidx/fragment/app/b1;

    iput-boolean v0, v3, Landroidx/fragment/app/b1;->i:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/fragment/app/y0;->u(I)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    invoke-virtual {v1}, Landroidx/fragment/app/j0;->a()V

    iget-object v1, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object v1, v1, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object v1, v1, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->y(Z)Z

    iget-object v1, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p0, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    iput-boolean v0, p0, Landroidx/fragment/app/y0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/y0;->G:Z

    iget-object v1, p0, Landroidx/fragment/app/y0;->M:Landroidx/fragment/app/b1;

    iput-boolean v0, v1, Landroidx/fragment/app/b1;->i:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->u(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    invoke-virtual {p0}, Landroidx/fragment/app/j0;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/g0;->markFragmentsCreated()V

    iget-object v1, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object v1, v1, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object v1, v1, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    iput-boolean v0, v1, Landroidx/fragment/app/y0;->G:Z

    iget-object v2, v1, Landroidx/fragment/app/y0;->M:Landroidx/fragment/app/b1;

    iput-boolean v0, v2, Landroidx/fragment/app/b1;->i:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/y0;->u(I)V

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/b0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Lt/p0;)V
    .locals 0

    sget-object p1, Lt/h;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lt/c;->c(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Lt/p0;)V
    .locals 0

    sget-object p1, Lt/h;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lt/c;->d(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/g0;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    sget-object p1, Lt/h;->a:Ljava/lang/Object;

    .line 2
    invoke-static {p0, p2, v0, p4}, Lt/b;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    sget-object v0, Lt/h;->a:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lt/b;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    sget-object v0, Lt/h;->a:Ljava/lang/Object;

    invoke-static {p0}, Lt/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    sget-object v0, Lt/h;->a:Ljava/lang/Object;

    invoke-static {p0}, Lt/c;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    sget-object v0, Lt/h;->a:Ljava/lang/Object;

    invoke-static {p0}, Lt/c;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
