.class public Lcom/android/server/sepunion/BRReceiverAgentService$1;
.super Landroid/content/BroadcastReceiver;
.source "BRReceiverAgentService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/BRReceiverAgentService;


# direct methods
.method public static synthetic $r8$lambda$sIePBsu_l-oub8PjdcyonwIqp1Y(Lcom/android/server/sepunion/BRReceiverAgentService$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/sepunion/BRReceiverAgentService;->-$$Nest$mcheckIsPossibleToSendIntent(Lcom/android/server/sepunion/BRReceiverAgentService;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
