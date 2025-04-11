.class Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/trustchain/client/network/MqttCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThresholdReceiver"
.end annotation


# instance fields
.field mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    return-void
.end method


# virtual methods
.method public acceptMessage([B)V
    .locals 1

    const-string p1, "TrustChain::MessageManager"

    const-string v0, "threshold message accepted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->stopThresholdTimer()V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager$ThresholdReceiver;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->doChainAction(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-void
.end method
