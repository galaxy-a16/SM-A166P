.class public final Lcom/android/server/asks/ASKSManagerService$ASKSState;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# instance fields
.field public deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field public emMode:I

.field public restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7513
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    const/4 v1, 0x0

    .line 7514
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 7515
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 7516
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V
    .locals 2

    .line 7520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7513
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    const/4 v1, 0x0

    .line 7514
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 7515
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 7516
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 7522
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 7523
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getEMMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 7524
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method


# virtual methods
.method public getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;
    .locals 0

    .line 7533
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-object p0
.end method

.method public getEMMode()I
    .locals 0

    .line 7532
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    return p0
.end method

.method public getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;
    .locals 0

    .line 7531
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-object p0
.end method

.method public hasValue()Z
    .locals 3

    .line 7537
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 7539
    :cond_0
    iget v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v1

    .line 7541
    :cond_1
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    .locals 0

    .line 7529
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public setEMMode(I)V
    .locals 0

    .line 7528
    iput p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    return-void
.end method

.method public setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    .locals 0

    .line 7527
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 7555
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ASKSState info {"

    .line 7556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7558
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "restrict = "

    .line 7559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7560
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7563
    :cond_0
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, " emmode = "

    .line 7564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7565
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7568
    :cond_1
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v1, :cond_2

    const-string v1, " deletable = "

    .line 7569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7570
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string/jumbo p0, "}"

    .line 7572
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7574
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
