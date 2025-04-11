.class public abstract Landroidx/lifecycle/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le9/a;

.field public static final b:Le9/a;

.field public static final c:Le9/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Landroidx/lifecycle/p0;->a:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Landroidx/lifecycle/p0;->b:Le9/a;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Landroidx/lifecycle/p0;->c:Le9/a;

    return-void
.end method

.method public static final a(Landroidx/lifecycle/f1;Landroidx/savedstate/d;Landroidx/lifecycle/t;)V
    .locals 2

    const-string v0, "registry"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    iget-object v1, p0, Landroidx/lifecycle/f1;->a:Ljava/util/HashMap;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroidx/lifecycle/f1;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p1}, Landroidx/lifecycle/SavedStateHandleController;->c(Landroidx/lifecycle/t;Landroidx/savedstate/d;)V

    move-object p0, p2

    check-cast p0, Landroidx/lifecycle/b0;

    iget-object p0, p0, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p0, v0, :cond_2

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p0, p2, p1}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/t;Landroidx/savedstate/d;)V

    invoke-virtual {p2, p0}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/y;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/savedstate/d;->d()V

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final b(Ln0/e;)Landroidx/lifecycle/z0;
    .locals 7

    sget-object v0, Landroidx/lifecycle/p0;->a:Le9/a;

    iget-object p0, p0, Ln0/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/f;

    if-eqz v0, :cond_a

    sget-object v1, Landroidx/lifecycle/p0;->b:Le9/a;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/l1;

    if-eqz v1, :cond_9

    sget-object v2, Landroidx/lifecycle/p0;->c:Le9/a;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Ll4/e;->b:Ll4/e;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-interface {v0}, Landroidx/savedstate/f;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/savedstate/d;->b()Landroidx/savedstate/c;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/a1;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/a1;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_7

    invoke-static {v1}, Landroidx/lifecycle/p0;->d(Landroidx/lifecycle/l1;)Landroidx/lifecycle/b1;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/b1;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/z0;

    if-nez v3, :cond_6

    sget-object v3, Landroidx/lifecycle/z0;->f:[Ljava/lang/Class;

    iget-boolean v3, v0, Landroidx/lifecycle/a1;->b:Z

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/lifecycle/a1;->a:Landroidx/savedstate/d;

    const-string v6, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v3, v6}, Landroidx/savedstate/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v0, Landroidx/lifecycle/a1;->c:Landroid/os/Bundle;

    iput-boolean v5, v0, Landroidx/lifecycle/a1;->b:Z

    iget-object v3, v0, Landroidx/lifecycle/a1;->d:Lkotlin/f;

    invoke-interface {v3}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/b1;

    :cond_1
    iget-object v3, v0, Landroidx/lifecycle/a1;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    iget-object v6, v0, Landroidx/lifecycle/a1;->c:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    invoke-virtual {v6, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    iget-object v6, v0, Landroidx/lifecycle/a1;->c:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    iput-object v4, v0, Landroidx/lifecycle/a1;->c:Landroid/os/Bundle;

    :cond_5
    invoke-static {v3, v2}, Ll4/e;->g(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/z0;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Landroidx/savedstate/f;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    iget-object v0, v0, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {p0}, Landroidx/savedstate/f;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/savedstate/d;->b()Landroidx/savedstate/c;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/a1;

    invoke-interface {p0}, Landroidx/savedstate/f;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/l1;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/a1;-><init>(Landroidx/savedstate/d;Landroidx/lifecycle/l1;)V

    invoke-interface {p0}, Landroidx/savedstate/f;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Landroidx/savedstate/d;->c(Ljava/lang/String;Landroidx/savedstate/c;)V

    invoke-interface {p0}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/y;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Landroidx/lifecycle/l1;)Landroidx/lifecycle/b1;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;->INSTANCE:Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;

    const-class v2, Landroidx/lifecycle/b1;

    invoke-static {v2}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v3

    const-string v4, "initializer"

    invoke-static {v1, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ln0/f;

    invoke-static {v3}, Lv9/a;->s(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Ln0/f;-><init>(Ljava/lang/Class;Lvb/b;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ln0/c;

    const/4 v3, 0x0

    new-array v3, v3, [Ln0/f;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/f;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/f;

    invoke-direct {v1, v0}, Ln0/c;-><init>([Ln0/f;)V

    new-instance v0, Lva/f;

    invoke-interface {p0}, Landroidx/lifecycle/l1;->getViewModelStore()Landroidx/lifecycle/k1;

    move-result-object v3

    instance-of v4, p0, Landroidx/lifecycle/o;

    if-eqz v4, :cond_0

    check-cast p0, Landroidx/lifecycle/o;

    invoke-interface {p0}, Landroidx/lifecycle/o;->getDefaultViewModelCreationExtras()Ln0/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ln0/a;->b:Ln0/a;

    :goto_0
    invoke-direct {v0, v3, v1, p0}, Lva/f;-><init>(Landroidx/lifecycle/k1;Landroidx/lifecycle/h1;Ln0/b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v0, v2, p0}, Lva/f;->h(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/f1;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b1;

    return-object p0
.end method

.method public static final e(Landroidx/lifecycle/t;Landroidx/lifecycle/Lifecycle$State;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/h1;

    check-cast v0, Lkotlinx/coroutines/android/d;

    iget-object v0, v0, Lkotlinx/coroutines/android/d;->f:Lkotlinx/coroutines/android/d;

    new-instance v1, Landroidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/Lifecycle$State;Lvb/c;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p3}, Li4/f;->S(Lkotlinx/coroutines/t;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
