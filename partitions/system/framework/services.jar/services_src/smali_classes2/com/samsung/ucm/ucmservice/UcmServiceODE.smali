.class public abstract Lcom/samsung/ucm/ucmservice/UcmServiceODE;
.super Ljava/lang/Object;
.source "UcmServiceODE.java"


# static fields
.field public static sOdeStatus:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static getOdeStatus()I
    .locals 2

    .line 28
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->updateOdeStatus()V

    .line 31
    :cond_0
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    return v0
.end method

.method public static isUCMODEEnabledWithPropFile()Z
    .locals 3

    .line 39
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "UcmServiceODE"

    if-ne v0, v1, :cond_0

    .line 40
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-eqz v0, :cond_0

    const-string v0, "UCM ODE is enabled."

    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "UCM ODE is not enabled"

    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isUcmOdeEnabled()Z
    .locals 2

    .line 35
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static updateOdeStatus()V
    .locals 2

    const-string v0, "/efs/sec_efs/ucm_ode_mode"

    .line 22
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOdeStatus ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmServiceODE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.security.ucm_fbe_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
