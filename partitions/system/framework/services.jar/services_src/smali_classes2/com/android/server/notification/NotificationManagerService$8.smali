.class public Lcom/android/server/notification/NotificationManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$RZEok9CkmrxPqY-GFlls-JGGk5Q(Lcom/android/server/notification/NotificationManagerService$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$8;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 2861
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 2874
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mregisterConversationAppPolicyScpm(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2864
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.scpm.policy.UPDATE.NSF_CONVERSATION_APPS"

    .line 2865
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "NotificationService"

    if-eqz p2, :cond_0

    const-string p1, "Receiving SCPM update intent - conversation"

    .line 2866
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetConversationAppPolicyScpmData(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.scpm.policy.UPDATE.nsf-ongoing-dismiss-exception-keys"

    .line 2868
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "Receiving SCPM update intent - ongoing dismiss exception"

    .line 2869
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetOngoingDismissExceptionPolicyScpmData(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 2871
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Receiving SCPM clear data intent"

    .line 2872
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object p1

    new-instance p2, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$8;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
