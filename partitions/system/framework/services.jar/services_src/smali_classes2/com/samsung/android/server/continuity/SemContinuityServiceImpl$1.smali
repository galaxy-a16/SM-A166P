.class public Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemContinuityServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "reason"

    const/4 v0, -0x1

    .line 74
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EMERGENCY_STATE_CHANGED : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[MCF_DS_SYS]_SemContinuityServiceImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->-$$Nest$fgetmCurrentUserHandle(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    return-void
.end method
