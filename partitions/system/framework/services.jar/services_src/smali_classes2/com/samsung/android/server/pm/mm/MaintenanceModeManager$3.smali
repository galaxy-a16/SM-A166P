.class public Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

.field public final synthetic val$actionResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    iput-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;->val$actionResponse:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 552
    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;->val$actionResponse:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 553
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 556
    iget-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    invoke-static {p2}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->-$$Nest$fgetmRemainingPkgs(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->-$$Nest$fgetmRemainingPkgs(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->-$$Nest$fgetmLatch(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 559
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$3;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->-$$Nest$fgetmLatch(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
