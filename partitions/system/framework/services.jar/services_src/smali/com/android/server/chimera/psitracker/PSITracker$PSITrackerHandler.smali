.class public Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;
.super Landroid/os/Handler;
.source "PSITracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/psitracker/PSITracker;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/psitracker/PSITracker;Landroid/os/Looper;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 238
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 245
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    invoke-static {p1}, Lcom/android/server/chimera/psitracker/PSITracker;->-$$Nest$fgetmCollector(Lcom/android/server/chimera/psitracker/PSITracker;)Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 251
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    invoke-static {p0}, Lcom/android/server/chimera/psitracker/PSITracker;->-$$Nest$fgetmCollector(Lcom/android/server/chimera/psitracker/PSITracker;)Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->saveAvailableMemRecords()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    invoke-static {p0}, Lcom/android/server/chimera/psitracker/PSITracker;->-$$Nest$mrecord240MinutesAvailMem(Lcom/android/server/chimera/psitracker/PSITracker;)V

    :cond_2
    :goto_0
    return-void
.end method
