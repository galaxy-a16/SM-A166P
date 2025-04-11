.class public Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string p2, "com.samsung.android.intent.action.HIDE_MAINTENANCE_MODE_MARK"

    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.samsung.android.intent.action.SHOW_MAINTENANCE_MODE_MARK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->-$$Nest$msetOverlayVisibility(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Z)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->-$$Nest$msetOverlayVisibility(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Z)V

    :cond_2
    :goto_0
    return-void
.end method
