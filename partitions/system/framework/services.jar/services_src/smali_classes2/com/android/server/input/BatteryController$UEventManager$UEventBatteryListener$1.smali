.class public Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener$1;
.super Landroid/os/UEventObserver;
.source "BatteryController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener$1;->this$0:Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 911
    invoke-static {}, Lcom/android/server/input/BatteryController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    invoke-static {}, Lcom/android/server/input/BatteryController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UEventListener: Received UEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " eventTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "ACTION"

    .line 916
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SUBSYSTEM"

    .line 917
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "POWER_SUPPLY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 921
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener$1;->this$0:Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;->onBatteryUEvent(J)V

    :cond_2
    :goto_0
    return-void
.end method
