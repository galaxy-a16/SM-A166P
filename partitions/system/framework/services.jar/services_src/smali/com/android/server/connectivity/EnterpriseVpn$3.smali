.class public Lcom/android/server/connectivity/EnterpriseVpn$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseVpn.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 918
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 920
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "knoxEnterpriseVpn"

    const-string p2, "Locale changed. Updating Knox vpn notification and the number of user present is "

    .line 922
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 924
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mupdateNotification(Lcom/android/server/connectivity/EnterpriseVpn;)V

    :cond_2
    :goto_0
    return-void
.end method
