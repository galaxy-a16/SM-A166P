.class public Lcom/android/server/power/stats/BatteryStatsImpl$7;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic val$newState:I

.field public final synthetic val$oldState:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$oldState:I

    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryPermil()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$oldState:I

    invoke-static {v1, v2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mupdateOldDischargeSubScreenLevelPermilLocked(Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$newState:I

    invoke-static {v1, p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mupdateNewDischargeSubScreenLevelPermilLocked(Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    return-void
.end method
