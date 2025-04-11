.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;
.super Landroid/content/BroadcastReceiver;
.source "DualDARComnService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 114
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mreConnectAgentsByPkgName(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)V

    .line 116
    :cond_2
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mhasKnoxKPUInternalPermission(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p1, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$misDualDAREnabled(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 118
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p0, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$maddKPUAppToWhitelist(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "DualDARComnService"

    const-string/jumbo v0, "package added or changed uri runtime exception occurred"

    .line 122
    invoke-static {p2, v0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
