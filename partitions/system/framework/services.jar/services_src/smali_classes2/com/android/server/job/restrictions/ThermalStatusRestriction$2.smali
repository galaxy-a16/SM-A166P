.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;
.super Landroid/content/BroadcastReceiver;
.source "ThermalStatusRestriction.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "job_restriction"

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 167
    iget-object p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {p2}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fgetmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z

    move-result p2

    if-eq p2, p1, :cond_2

    .line 168
    iget-object p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {p2, p1}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fputmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;Z)V

    .line 169
    iget-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    iget-object p2, p1, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fgetmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fgetmIncrease(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/android/server/job/JobSchedulerService;->onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V

    :cond_2
    return-void
.end method
