.class public Lcom/android/server/BatteryService$30;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$finalBatteryDeterioration:I

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V
    .locals 0

    .line 3407
    iput-object p1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iput p2, p0, Lcom/android/server/BatteryService$30;->val$finalBatteryDeterioration:I

    iput-object p3, p0, Lcom/android/server/BatteryService$30;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3410
    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-$$Nest$fputmIsFirstIntentSended(Lcom/android/server/BatteryService;Z)V

    .line 3411
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ACTION_POPUP_BATTERY_DETERIORATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$30;->val$finalBatteryDeterioration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method
