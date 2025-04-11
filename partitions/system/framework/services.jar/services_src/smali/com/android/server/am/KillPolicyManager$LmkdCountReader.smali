.class public Lcom/android/server/am/KillPolicyManager$LmkdCountReader;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public bServiceCountOfLmkd:J

.field public cachedMinCountOfLmkd:J

.field public homeToPercCountOfLmkd:J

.field public pickedCountOfLmkd:J

.field public previousCountOfLmkd:J

.field public seedbedCountOfLmkd:J

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public totalCountOfLmkd:J

.field public visToFgCountOfLmkd:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 2

    .line 2700
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2703
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 2704
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 2705
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    .line 2706
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 2707
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 2708
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 2709
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 2710
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    return-void
.end method


# virtual methods
.method public final getKillCountForAdjRange(IIJ)J
    .locals 0

    .line 2713
    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ActivityManager"

    const-string p1, "getKillCountForAdjRange() - getLmkdKillCount returns null"

    .line 2715
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3

    .line 2718
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public readLmkdKillCount()V
    .locals 5

    const/16 v0, 0x3e7

    .line 2722
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    const/16 v0, 0x384

    .line 2724
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    const/16 v0, 0x35c

    .line 2726
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    const/16 v4, 0x353

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    const/16 v0, 0x352

    .line 2728
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    const/16 v4, 0x321

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    const/16 v0, 0x320

    .line 2730
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    const/16 v4, 0x2bd

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    const/16 v0, 0x2bc

    .line 2732
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    const/16 v4, 0x259

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    const/16 v0, 0x258

    .line 2734
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    const/16 v4, 0xc8

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    const/16 v0, 0xc7

    .line 2736
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 2738
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2739
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "readLmkdKillCount() : (E : "

    .line 2740
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Pr : "

    .line 2742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Sv : "

    .line 2744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Pi : "

    .line 2746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2747
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Sb : "

    .line 2748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Cm : "

    .line 2750
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 2752
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ActivityManager_kpm"

    .line 2753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
