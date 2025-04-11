.class public Lcom/android/server/ibs/IntelligentBatterySaverGather$1;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverGather.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    monitor-enter p1

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->-$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateDisplayLocked()V

    .line 38
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method
