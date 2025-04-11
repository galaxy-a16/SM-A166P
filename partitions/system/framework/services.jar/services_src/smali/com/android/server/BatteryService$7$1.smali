.class public Lcom/android/server/BatteryService$7$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$7;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$7;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v0, v0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->setHiccupDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success to disable hiccup"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 951
    :cond_0
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to disable hiccup"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_0
    iget-object p0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object p0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$fputmIsHiccupPopupShowing(Lcom/android/server/BatteryService;Z)V

    return-void
.end method
