.class public Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
.super Landroid/os/Handler;
.source "EmergencyModePackageHandler.java"


# instance fields
.field public final TIMEOUT:J

.field public emComponents:[Ljava/util/ArrayList;

.field public emCurrentPosition:I

.field public emDontKillFlags:[Z

.field public emID:I

.field public emNewState:[I

.field public emPackages:[Ljava/lang/String;

.field public emPreviousID:I

.field public emProgression:I

.field public emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field public emSize:I

.field public emTotSize:I

.field public emUids:[I

.field public emUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/EmergencyModePackageHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const-wide/32 p1, 0xea60

    iput-wide p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->TIMEOUT:J

    new-instance p1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;)V

    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "EMPkgHandler"

    if-eq v2, v6, :cond_13

    const/4 v1, 0x3

    if-eq v2, v5, :cond_7

    if-eq v2, v1, :cond_6

    if-eq v2, v4, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    invoke-static {v7, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    const-string v1, "EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v7, v1}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_5
    const-string v1, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-static {v7, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->resetTask()V

    goto/16 :goto_6

    :cond_6
    const-string v1, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    invoke-static {v7, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_7
    const-string v2, "EM_SEND_PENDING_BROADCAST Start"

    invoke-static {v7, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    const-string v9, "]"

    if-lt v2, v8, :cond_a

    iput v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    iget v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v1, v2, :cond_9

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] emID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    move v4, v3

    :goto_0
    const/16 v8, 0xa

    if-ge v4, v8, :cond_12

    iget v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-ge v8, v10, :cond_12

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    aget-object v8, v10, v8

    invoke-interface {v2, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    if-eqz v8, :cond_b

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-interface {v8, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v8

    goto :goto_1

    :cond_b
    const/4 v8, -0x1

    :goto_1
    const/16 v10, 0x9

    if-eq v4, v10, :cond_d

    iget v11, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v12, v6

    if-ne v11, v12, :cond_c

    goto :goto_2

    :cond_c
    move v11, v3

    goto :goto_3

    :cond_d
    :goto_2
    move v11, v6

    :goto_3
    iget-object v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v13, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v12, v12, v13

    if-ne v8, v12, :cond_f

    int-to-float v8, v13

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    if-eqz v11, :cond_e

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v8, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v13, v8, v10

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    aget-boolean v14, v8, v10

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    aget-object v15, v8, v10

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    aget v16, v8, v10

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    move-object/from16 v17, v8

    move/from16 v18, v10

    invoke-static/range {v12 .. v18}, Lcom/android/server/pm/EmergencyModePackageHandler;->-$$Nest$msendPackageChangedBroadcastWithReceiver(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_4

    :cond_e
    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    aget-object v18, v10, v13

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    aget-boolean v19, v10, v13

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    aget-object v20, v10, v13

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    aget v21, v10, v13

    const/16 v22, 0x0

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    move-object/from16 v17, v8

    move/from16 v23, v10

    invoke-static/range {v17 .. v23}, Lcom/android/server/pm/EmergencyModePackageHandler;->-$$Nest$msendPackageChangedBroadcastWithReceiver(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    :goto_4
    iget v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    goto :goto_5

    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] / ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] name["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v13, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] curr["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]  now["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v8, v8, v12

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]  emUserId["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v4, v10, :cond_10

    iget v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v10, v6

    if-ne v8, v10, :cond_11

    :cond_10
    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v8, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_11
    iget v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_12
    const-string v0, "EM_SEND_PENDING_BROADCAST End"

    invoke-static {v7, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    const-string v2, "EM_MAKE_PENDING_BROADCAST Start"

    invoke-static {v7, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->initForPendingBroadcast(I)V

    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v14

    iput v14, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    if-gtz v14, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_14
    new-array v9, v14, [Ljava/lang/String;

    iput-object v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    new-array v10, v14, [Ljava/util/ArrayList;

    iput-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    new-array v11, v14, [I

    iput-object v11, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    new-array v12, v14, [Z

    iput-object v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    new-array v13, v14, [I

    iput-object v13, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/EmergencyModePackageHandler;->-$$Nest$mhandlePendingBroadcastsForBurst(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-lez v1, :cond_15

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_15
    const-string v0, "EM_MAKE_PENDING_BROADCAST End"

    invoke-static {v7, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public getProgressionOfPackageChanged()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw p0
.end method

.method public initForPendingBroadcast(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public makeNewID()V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "makeNewID ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EMPkgHandler"

    invoke-static {v0, p0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetTask()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    const-string p0, "EMPkgHandler"

    const-string v0, "EMPackageHandler memory references are released"

    invoke-static {p0, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
