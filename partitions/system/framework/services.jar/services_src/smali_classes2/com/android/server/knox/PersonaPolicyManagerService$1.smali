.class public Lcom/android/server/knox/PersonaPolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaPolicyManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/PersonaPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/PersonaPolicyManagerService;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    .line 98
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v1

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/android/server/knox/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-static {p0, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->-$$Nest$mremovePersonaData(Lcom/android/server/knox/PersonaPolicyManagerService;I)V

    :cond_0
    return-void
.end method
