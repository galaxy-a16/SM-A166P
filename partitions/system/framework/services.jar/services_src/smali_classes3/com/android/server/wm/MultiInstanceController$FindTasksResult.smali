.class public Lcom/android/server/wm/MultiInstanceController$FindTasksResult;
.super Ljava/lang/Object;
.source "MultiInstanceController.java"


# instance fields
.field public cls:Landroid/content/ComponentName;

.field public documentData:Landroid/net/Uri;

.field public intent:Landroid/content/Intent;

.field public isDocument:Z

.field public mTarget:Lcom/android/server/wm/ActivityRecord;

.field public userId:I


# direct methods
.method public static synthetic $r8$lambda$vNftFf5FUyPd43VxuRbmUFcyc5I(Lcom/android/server/wm/MultiInstanceController$FindTasksResult;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->lambda$process$0(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$process$0(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 5

    .line 517
    check-cast p2, Lcom/android/server/wm/Task;

    .line 518
    iget-object v0, p2, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget v0, p2, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 528
    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 530
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_8

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v3, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    if-eq v2, v3, :cond_2

    goto/16 :goto_1

    .line 533
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    .line 534
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    .line 533
    invoke-static {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 538
    :cond_3
    iget-object v1, p2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 539
    iget-object v2, p2, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 542
    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 544
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 545
    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 547
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    move v3, v0

    move-object v0, v1

    .line 553
    :goto_0
    iget-object v1, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 554
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 555
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 556
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 557
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 558
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 560
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->isDocument:Z

    if-nez v0, :cond_8

    if-nez v3, :cond_8

    iget-object v0, p2, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 561
    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 562
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V
    .locals 2

    .line 509
    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    .line 510
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->intent:Landroid/content/Intent;

    .line 511
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    .line 512
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    const/4 p1, 0x1

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->isDocument:Z

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 516
    new-instance v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiInstanceController$FindTasksResult;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method
