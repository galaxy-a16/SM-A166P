.class Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;
.super Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->lambda$onComplete$0()V

    return-void
.end method

.method private synthetic lambda$onComplete$0()V
    .locals 2

    const-string v0, "KMX|SecurityStatusActivity"

    const-string v1, "get my dashboard info completed!! notifyDatasetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->l(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onComplete(IILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "Chain Service Callback: "

    const-string v1, " ("

    const-string v2, ")"

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|SecurityStatusActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->i(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->handleComplete(I)V

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->n(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_FABRIC_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-static {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->isSucceed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "fabric_dashboard_info"

    const-class p2, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "fabric info : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->l(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;->getMemberList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->setMemberInfo(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;->getMemberList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {p2, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->m(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$1;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    new-instance p2, Lcom/samsung/android/kmxservice/dashboard/view/e;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/kmxservice/dashboard/view/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
