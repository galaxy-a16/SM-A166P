.class public final Lcom/android/server/tare/ChargingModifier$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "ChargingModifier.java"


# instance fields
.field public volatile mCharging:Z

.field public mIsSetup:Z

.field public final synthetic this$0:Lcom/android/server/tare/ChargingModifier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/server/tare/ChargingModifier$ChargingTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/tare/ChargingModifier;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tare/ChargingModifier;Lcom/android/server/tare/ChargingModifier$ChargingTracker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;-><init>(Lcom/android/server/tare/ChargingModifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.CHARGING"

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 117
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received charging intent, fired @ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    .line 123
    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-static {p0}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    goto :goto_0

    :cond_1
    const-string p2, "android.os.action.DISCHARGING"

    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Disconnected from power."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    .line 131
    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-static {p0}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public startTracking(Landroid/content/Context;)V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.CHARGING"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const-class v0, Landroid/os/BatteryManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    .line 99
    invoke-virtual {p1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    return-void
.end method

.method public stopTracking(Landroid/content/Context;)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    return-void
.end method
