.class public Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "QuotaController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 2891
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    const-string v3, "*job.quota_check*"

    const-string v4, "In quota"

    const/4 v5, 0x0

    const-wide/32 v6, 0xea60

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 2892
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public isForUser(Landroid/content/pm/UserPackage;I)Z
    .locals 0

    .line 2898
    iget p0, p1, Landroid/content/pm/UserPackage;->userId:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .locals 0

    .line 2890
    check-cast p1, Landroid/content/pm/UserPackage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->isForUser(Landroid/content/pm/UserPackage;I)Z

    move-result p0

    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 2903
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2904
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserPackage;

    .line 2905
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserPackage;->userId:I

    iget-object v2, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2906
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
