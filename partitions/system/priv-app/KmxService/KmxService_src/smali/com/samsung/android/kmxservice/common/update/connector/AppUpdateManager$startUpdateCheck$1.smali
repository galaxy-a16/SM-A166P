.class final Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->startUpdateCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lvb/c;"
    }
.end annotation

.annotation runtime Lrb/c;
    c = "com.samsung.android.kmxservice.common.update.connector.AppUpdateManager$startUpdateCheck$1"
    f = "AppUpdateManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->this$0:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->invokeSuspend$lambda$0(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUpdateAvailable is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUpdateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object p0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->this$0:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;-><init>(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/y;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->invoke(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;

    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->this$0:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->access$getUpdateAvailableLive(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;)Landroidx/lifecycle/h0;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager$startUpdateCheck$1;->this$0:Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    new-instance v1, Lcom/samsung/android/kmxservice/common/update/connector/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/kmxservice/common/update/connector/c;-><init>(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;)V

    invoke-static {p1, v0, v1}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->access$observeOnce(Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
