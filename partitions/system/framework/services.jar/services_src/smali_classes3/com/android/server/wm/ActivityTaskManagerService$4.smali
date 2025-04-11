.class public Lcom/android/server/wm/ActivityTaskManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTaskManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "check_cooldown_level"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    :cond_1
    const-string p2, "batt_temp_level"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v1, "overheat_id"

    const v2, 0x10403c0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmOverheatTextId(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    if-ne v1, v0, :cond_3

    iget p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-eq p2, v0, :cond_4

    :cond_3
    const-string p2, "check_cooldown_list"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmCheckSIOPLevelList(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmCheckSIOPLevelList(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/HashMap;)V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VZWLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", OverheatLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "checkingSIOP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
