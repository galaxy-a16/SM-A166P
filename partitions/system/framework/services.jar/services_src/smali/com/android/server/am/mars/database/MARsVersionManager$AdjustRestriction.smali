.class public Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# instance fields
.field public action:Ljava/lang/String;

.field public actionMatchType:Ljava/lang/String;

.field public callee:Ljava/lang/String;

.field public caller:Ljava/lang/String;

.field public isAllowed:Ljava/lang/String;

.field public restrictionType:I

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsVersionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->this$0:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    .line 204
    iput-object p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    .line 207
    iput-object p6, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    .line 208
    iput-object p7, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdjustRestriction: restrictionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionMatchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
