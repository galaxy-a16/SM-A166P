.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 0

    .line 3031
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/server/am/ActivityManagerService$MemDumpInfo;)I
    .locals 4

    .line 3034
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    iget-wide p0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v0, p0

    .line 3035
    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3031
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;->compare(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/server/am/ActivityManagerService$MemDumpInfo;)I

    move-result p0

    return p0
.end method
