.class Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver$1;
.super Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(IILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->b()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Samsung Account Callback: "

    const-string v1, " ("

    const-string v2, ")"

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;->a(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountEventReceiver;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->handleComplete(I)V

    return-void
.end method
