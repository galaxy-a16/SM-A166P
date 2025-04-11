.class public final Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$Companion;

.field private static final TAG:Ljava/lang/String; = "AppUpdateManager"


# instance fields
.field private final _updateAvailableLive$delegate:Lkotlin/f;

.field private final context:Landroid/content/Context;

.field private final resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->Companion:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultReceiver"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->resultReceiver:Landroid/os/ResultReceiver;

    sget-object p1, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$_updateAvailableLive$2;

    invoke-static {p1}, Lkotlin/h;->d(Lvb/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->_updateAvailableLive$delegate:Lkotlin/f;

    return-void
.end method

.method public static final synthetic access$getUpdateAvailableLive(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;)Landroidx/lifecycle/h0;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->getUpdateAvailableLive()Landroidx/lifecycle/h0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$observeOnce(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->observeOnce(Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V

    return-void
.end method

.method private final getUpdateAvailableLive()Landroidx/lifecycle/h0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/h0;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->get_updateAvailableLive()Landroidx/lifecycle/l0;

    move-result-object p0

    return-object p0
.end method

.method private final get_updateAvailableLive()Landroidx/lifecycle/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/l0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->_updateAvailableLive$delegate:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l0;

    return-object p0
.end method

.method private final observeOnce(Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/h0;",
            "Landroidx/lifecycle/m0;",
            ")V"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$observeOnce$1;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$observeOnce$1;-><init>(Landroidx/lifecycle/m0;Landroidx/lifecycle/h0;)V

    invoke-virtual {p1, p0}, Landroidx/lifecycle/h0;->observeForever(Landroidx/lifecycle/m0;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getResultReceiver()Landroid/os/ResultReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->resultReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method public final getUpdateAvailable()V
    .locals 2

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->Companion:Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;->getInstance()Lcom/samsung/android/kmxservice/common/update/UpdateChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->getUpdatablePackage(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->get_updateAvailableLive()Landroidx/lifecycle/l0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/l0;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final startUpdateCheck()V
    .locals 5

    const-string v0, "AppUpdateManager"

    const-string v1, "startUpdateCheck ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/h1;

    new-instance v1, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;-><init>(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Lkotlin/coroutines/d;)V

    const/4 p0, 0x2

    const/4 v3, 0x1

    and-int/2addr p0, v3

    if-eqz p0, :cond_0

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    const/4 p0, 0x2

    and-int/2addr p0, p0

    if-eqz p0, :cond_1

    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p0, v0, v3}, Lkotlinx/coroutines/a0;->m(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    if-eq p0, v0, :cond_2

    sget-object v4, Le9/a;->c:Le9/a;

    invoke-interface {p0, v4}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lkotlinx/coroutines/g1;

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/g1;-><init>(Lkotlin/coroutines/i;Lvb/c;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lkotlinx/coroutines/n1;

    invoke-direct {v0, p0, v3}, Lkotlinx/coroutines/n1;-><init>(Lkotlin/coroutines/i;Z)V

    :goto_0
    invoke-virtual {v2, v1, v0, v0}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-void
.end method
