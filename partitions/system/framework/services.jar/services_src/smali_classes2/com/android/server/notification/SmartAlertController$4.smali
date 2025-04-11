.class public Lcom/android/server/notification/SmartAlertController$4;
.super Landroid/content/BroadcastReceiver;
.source "SmartAlertController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SmartAlertController"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/SmartAlertController;Z)V

    const-string/jumbo p1, "why"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SCREEN_ON, reason = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ACTION_SCREEN_OFF"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p1, v2}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/SmartAlertController;Z)V

    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p1}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmMissedEventExist(Lcom/android/server/notification/SmartAlertController;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {p0}, Lcom/android/server/notification/SmartAlertController;->registerListener()V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmInCall(Lcom/android/server/notification/SmartAlertController;Z)V

    :cond_3
    :goto_0
    return-void
.end method
