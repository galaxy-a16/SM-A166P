.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "ThermalStatusRestriction.java"


# instance fields
.field public mForceRestricted:Z

.field public mIncrease:Z

.field public mSIOPTracker:Landroid/content/BroadcastReceiver;

.field public volatile mThermalStatus:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIncrease(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIncrease:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIncrease(Lcom/android/server/job/restrictions/ThermalStatusRestriction;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIncrease:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 3

    const/16 v0, 0xc

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 57
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;III)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 163
    new-instance p1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mSIOPTracker:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mSIOPTracker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const-string v0, "Thermal status: "

    .line 159
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    return-void
.end method

.method public getThermalStatus()I
    .locals 0

    .line 154
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    .line 106
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "android"

    .line 107
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    const/16 v3, 0x320

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    const/16 v3, 0x321

    if-ne v0, v3, :cond_1

    :cond_0
    return v1

    .line 114
    :cond_1
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_d

    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 118
    iget v3, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v3, v2, :cond_a

    .line 127
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 130
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    return v1

    :cond_6
    const/16 v2, 0x190

    if-ne v0, v2, :cond_9

    .line 136
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v1, v4

    :cond_8
    return v1

    :cond_9
    return v4

    .line 141
    :cond_a
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v2, v4, :cond_c

    const/16 v2, 0x64

    if-eq v0, v2, :cond_b

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_c

    .line 144
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 146
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    move v1, v4

    :cond_c
    return v1

    :cond_d
    :goto_0
    return v4
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 69
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method
