.class public Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;
.super Landroid/content/IIntentReceiver$Stub;
.source "EmergencyModePackageHandler.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    const-string p2, "EMPkgHandler"

    const/4 p3, -0x1

    if-nez p1, :cond_0

    const-string p1, "intent is null!"

    .line 114
    invoke-static {p2, p1}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p4, "EM_PKG_HADNLER_ID"

    .line 116
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    iget p1, p1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    const-string p4, "]"

    if-ne p1, p3, :cond_1

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "performReceive sending EM_SEND_PENDING_BROADCAST id["

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "performReceive canceled emID["

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]  thisID["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
