.class public Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;
.super Ljava/lang/Object;
.source "SleepChargingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final synthetic val$bedTime:Ljava/lang/String;

.field public final synthetic val$confidence:Ljava/lang/String;

.field public final synthetic val$wakeupTime:Ljava/lang/String;

.field public final synthetic val$weekType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iput-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$weekType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$confidence:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$bedTime:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$wakeupTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->-$$Nest$fgetmSleepChargingTimeController(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$weekType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$confidence:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$bedTime:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$4;->val$wakeupTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->modifySleepPatternsForTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
