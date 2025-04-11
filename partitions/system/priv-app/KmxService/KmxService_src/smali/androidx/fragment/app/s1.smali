.class public final Landroidx/fragment/app/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;
.implements Landroidx/savedstate/f;
.implements Landroidx/lifecycle/l1;


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Landroidx/lifecycle/k1;

.field public final c:Ljava/lang/Runnable;

.field public d:Landroidx/lifecycle/h1;

.field public e:Landroidx/lifecycle/b0;

.field public f:Landroidx/savedstate/e;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/k1;Lt/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/s1;->e:Landroidx/lifecycle/b0;

    iput-object v0, p0, Landroidx/fragment/app/s1;->f:Landroidx/savedstate/e;

    iput-object p1, p0, Landroidx/fragment/app/s1;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/s1;->b:Landroidx/lifecycle/k1;

    iput-object p3, p0, Landroidx/fragment/app/s1;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/s1;->e:Landroidx/lifecycle/b0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/s1;->e:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Landroidx/fragment/app/s1;->e:Landroidx/lifecycle/b0;

    invoke-static {p0}, Lh5/d;->f(Landroidx/savedstate/f;)Landroidx/savedstate/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s1;->f:Landroidx/savedstate/e;

    invoke-virtual {v0}, Landroidx/savedstate/e;->a()V

    iget-object p0, p0, Landroidx/fragment/app/s1;->c:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Ln0/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/s1;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ln0/e;

    invoke-direct {v2}, Ln0/e;-><init>()V

    iget-object v3, v2, Ln0/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Lh5/d;->c:Lh5/d;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/p0;->a:Le9/a;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/p0;->b:Le9/a;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/lifecycle/p0;->c:Le9/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/h1;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/s1;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/h1;

    move-result-object v1

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/h1;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroidx/fragment/app/s1;->d:Landroidx/lifecycle/h1;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/s1;->d:Landroidx/lifecycle/h1;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Landroidx/lifecycle/c1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Landroidx/lifecycle/c1;-><init>(Landroid/app/Application;Landroidx/savedstate/f;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/fragment/app/s1;->d:Landroidx/lifecycle/h1;

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/s1;->d:Landroidx/lifecycle/h1;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/t;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/s1;->b()V

    iget-object p0, p0, Landroidx/fragment/app/s1;->e:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/d;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/s1;->b()V

    iget-object p0, p0, Landroidx/fragment/app/s1;->f:Landroidx/savedstate/e;

    iget-object p0, p0, Landroidx/savedstate/e;->b:Landroidx/savedstate/d;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/k1;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/s1;->b()V

    iget-object p0, p0, Landroidx/fragment/app/s1;->b:Landroidx/lifecycle/k1;

    return-object p0
.end method
