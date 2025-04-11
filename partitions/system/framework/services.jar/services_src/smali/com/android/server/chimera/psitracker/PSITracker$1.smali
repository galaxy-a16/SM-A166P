.class public Lcom/android/server/chimera/psitracker/PSITracker$1;
.super Ljava/lang/Object;
.source "PSITracker.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/psitracker/PSITracker;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/psitracker/PSITracker;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    const-string v1, "240 Alarm fired"

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    invoke-static {v0}, Lcom/android/server/chimera/psitracker/PSITracker;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/psitracker/PSITracker;)Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 71
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    invoke-static {p0}, Lcom/android/server/chimera/psitracker/PSITracker;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/psitracker/PSITracker;)Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
