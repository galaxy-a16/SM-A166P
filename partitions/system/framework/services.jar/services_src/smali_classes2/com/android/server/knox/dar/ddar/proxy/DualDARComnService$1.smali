.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;
.super Landroid/content/BroadcastReceiver;
.source "DualDARComnService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p0, p2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mconnectAgentsByUser(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V

    :cond_0
    return-void
.end method
