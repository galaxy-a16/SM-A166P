.class public final Landroidx/lifecycle/c1;
.super Landroidx/lifecycle/j1;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h1;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/g1;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/t;

.field public final e:Landroidx/savedstate/d;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/f;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/j1;-><init>()V

    invoke-interface {p2}, Landroidx/savedstate/f;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/c1;->e:Landroidx/savedstate/d;

    invoke-interface {p2}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/c1;->d:Landroidx/lifecycle/t;

    iput-object p3, p0, Landroidx/lifecycle/c1;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/c1;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/g1;->d:Landroidx/lifecycle/g1;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/g1;

    invoke-direct {p2, p1}, Landroidx/lifecycle/g1;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/g1;->d:Landroidx/lifecycle/g1;

    :cond_0
    sget-object p1, Landroidx/lifecycle/g1;->d:Landroidx/lifecycle/g1;

    invoke-static {p1}, Li4/f;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/g1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/g1;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/c1;->b:Landroidx/lifecycle/g1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/f1;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/c1;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/f1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/f1;
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/c1;->d:Landroidx/lifecycle/t;

    if-eqz v0, :cond_a

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/c1;->a:Landroid/app/Application;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/lifecycle/d1;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/d1;->b:Ljava/util/List;

    :goto_0
    invoke-static {p1, v2}, Landroidx/lifecycle/d1;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object p2, p0, Landroidx/lifecycle/c1;->a:Landroid/app/Application;

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/c1;->b:Landroidx/lifecycle/g1;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/g1;->a(Ljava/lang/Class;)Landroidx/lifecycle/f1;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/lifecycle/i1;->a:Landroidx/lifecycle/i1;

    if-nez p0, :cond_2

    new-instance p0, Landroidx/lifecycle/i1;

    invoke-direct {p0}, Landroidx/lifecycle/i1;-><init>()V

    sput-object p0, Landroidx/lifecycle/i1;->a:Landroidx/lifecycle/i1;

    :cond_2
    sget-object p0, Landroidx/lifecycle/i1;->a:Landroidx/lifecycle/i1;

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i1;->a(Ljava/lang/Class;)Landroidx/lifecycle/f1;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    iget-object v3, p0, Landroidx/lifecycle/c1;->e:Landroidx/savedstate/d;

    invoke-static {v3}, Li4/f;->g(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/lifecycle/c1;->c:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroidx/savedstate/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/z0;->f:[Ljava/lang/Class;

    invoke-static {v5, v4}, Ll4/e;->g(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/z0;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/z0;)V

    invoke-virtual {v5, v0, v3}, Landroidx/lifecycle/SavedStateHandleController;->c(Landroidx/lifecycle/t;Landroidx/savedstate/d;)V

    move-object p2, v0

    check-cast p2, Landroidx/lifecycle/b0;

    iget-object p2, p2, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p2, v4, :cond_5

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p2, v0, v3}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/t;Landroidx/savedstate/d;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/y;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v3}, Landroidx/savedstate/d;->d()V

    :goto_3
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz v1, :cond_6

    iget-object p0, p0, Landroidx/lifecycle/c1;->a:Landroid/app/Application;

    if-eqz p0, :cond_6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, p2

    iget-object p0, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Landroidx/lifecycle/z0;

    aput-object p0, v1, v0

    invoke-static {p1, v2, v1}, Landroidx/lifecycle/d1;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/f1;

    move-result-object p0

    goto :goto_4

    :cond_6
    new-array p0, v0, [Ljava/lang/Object;

    iget-object v0, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Landroidx/lifecycle/z0;

    aput-object v0, p0, p2

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/d1;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/f1;

    move-result-object p0

    :goto_4
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    iget-object p2, p0, Landroidx/lifecycle/f1;->a:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/f1;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v1, p0, Landroidx/lifecycle/f1;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v0

    :goto_5
    iget-boolean p1, p0, Landroidx/lifecycle/f1;->c:Z

    if-eqz p1, :cond_9

    invoke-static {v5}, Landroidx/lifecycle/f1;->a(Ljava/lang/Object;)V

    :cond_9
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/Class;Ln0/e;)Landroidx/lifecycle/f1;
    .locals 4

    sget-object v0, Ll4/e;->b:Ll4/e;

    iget-object v1, p2, Ln0/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/lifecycle/p0;->a:Le9/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/lifecycle/p0;->b:Le9/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Lh5/d;->c:Lh5/d;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/d1;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/d1;->b:Ljava/util/List;

    :goto_0
    invoke-static {p1, v2}, Landroidx/lifecycle/d1;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/c1;->b:Landroidx/lifecycle/g1;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/g1;->d(Ljava/lang/Class;Ln0/e;)Landroidx/lifecycle/f1;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p0

    invoke-static {p2}, Landroidx/lifecycle/p0;->b(Ln0/e;)Landroidx/lifecycle/z0;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p1, v2, v1}, Landroidx/lifecycle/d1;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/f1;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Landroidx/lifecycle/p0;->b(Ln0/e;)Landroidx/lifecycle/z0;

    move-result-object p2

    aput-object p2, v0, p0

    invoke-static {p1, v2, v0}, Landroidx/lifecycle/d1;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/f1;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/c1;->d:Landroidx/lifecycle/t;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/c1;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/f1;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
