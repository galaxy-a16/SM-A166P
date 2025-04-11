.class interface abstract Lcom/android/server/input/BatteryController$UEventManager;
.super Ljava/lang/Object;
.source "BatteryController.java"


# virtual methods
.method public addListener(Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;Ljava/lang/String;)V
    .locals 0

    .line 929
    invoke-static {p1}, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;->-$$Nest$fgetmObserver(Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;)Landroid/os/UEventObserver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;)V
    .locals 0

    .line 933
    invoke-static {p1}, Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;->-$$Nest$fgetmObserver(Lcom/android/server/input/BatteryController$UEventManager$UEventBatteryListener;)Landroid/os/UEventObserver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V

    return-void
.end method
