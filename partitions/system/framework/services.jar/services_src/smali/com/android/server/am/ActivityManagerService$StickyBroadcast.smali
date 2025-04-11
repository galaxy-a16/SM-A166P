.class final Lcom/android/server/am/ActivityManagerService$StickyBroadcast;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public deferUntilActive:Z

.field public intent:Landroid/content/Intent;

.field public originalCallingAppProcessState:I

.field public originalCallingUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Intent;ZII)Lcom/android/server/am/ActivityManagerService$StickyBroadcast;
    .locals 1

    .line 1469
    new-instance v0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;-><init>()V

    .line 1470
    iput-object p0, v0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->intent:Landroid/content/Intent;

    .line 1471
    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->deferUntilActive:Z

    .line 1472
    iput p2, v0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->originalCallingUid:I

    .line 1473
    iput p3, v0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->originalCallingAppProcessState:I

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->deferUntilActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", originalCallingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->originalCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originalCallingAppProcessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$StickyBroadcast;->originalCallingAppProcessState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
