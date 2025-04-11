.class public Lcom/android/server/BatteryService$12$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$12;

.field public final synthetic val$fastWirelessAutoModeEnable:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$12;Z)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/android/server/BatteryService$12$1;->this$1:Lcom/android/server/BatteryService$12;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$12$1;->val$fastWirelessAutoModeEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1171
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastWirelessAutoModeEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService$12$1;->val$fastWirelessAutoModeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/android/server/BatteryService$12$1;->this$1:Lcom/android/server/BatteryService$12;

    iget-object v0, v0, Lcom/android/server/BatteryService$12;->this$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService$12$1;->val$fastWirelessAutoModeEnable:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/BatteryService;->-$$Nest$msetWirelessFastCharging(Lcom/android/server/BatteryService;Z)V

    return-void
.end method
