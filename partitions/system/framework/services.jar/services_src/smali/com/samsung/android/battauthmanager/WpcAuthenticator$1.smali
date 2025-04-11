.class public Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;
.super Landroid/content/BroadcastReceiver;
.source "WpcAuthenticator.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string/jumbo p1, "misc_event"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "sec_plug_type"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x40

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", misc_event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", plug event: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x200

    and-int/2addr v1, v2

    const/4 v4, 0x3

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onReceive: attached auth pad"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p1, "/sys/class/power_supply/battery/wpc_auth_mode"

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$smreadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "onReceive: fail to read auth mode"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    if-eq v0, v4, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_7

    :cond_1
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: wpc_auth_mode : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fputmIsAttachedAuthPad(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmIsAttachedAuthPad(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fputmIsAttachedAuthPad(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onReceive: detached auth pad"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {v1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmIsAttachedAuthPad(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x400

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)I

    move-result p1

    if-eq p1, v5, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    if-eq p1, v4, :cond_4

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fputcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;I)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_2
    return-void
.end method
