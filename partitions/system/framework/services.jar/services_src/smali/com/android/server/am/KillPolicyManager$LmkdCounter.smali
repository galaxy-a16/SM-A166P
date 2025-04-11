.class public Lcom/android/server/am/KillPolicyManager$LmkdCounter;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public bServiceKillCount:J

.field public bServiceKillOccurredCount:I

.field public cachedMinKillCount:J

.field public cycleBServiceKillCount:J

.field public cycleCachedMinKillCount:J

.field public cycleHomeToPercKillCount:J

.field public cyclePickedKillCount:J

.field public cyclePreviousKillCount:J

.field public cycleSeedbedKillCount:J

.field public cycleTotalKillCount:J

.field public cycleVisToFgKillCount:J

.field public kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public pickedKillCount:J

.field public prevBServiceCountOfLmkd:J

.field public prevCachedMinCountOfLmkd:J

.field public prevCycleBServiceCountOfLmkd:J

.field public prevCycleCachedMinCountOfLmkd:J

.field public prevCycleHomeToPercCountOfLmkd:J

.field public prevCyclePickedCountOfLmkd:J

.field public prevCyclePreviousCountOfLmkd:J

.field public prevCycleSeedbedCountOfLmkd:J

.field public prevCycleTotalCountOfLmkd:J

.field public prevCycleVisToFgCountOfLmkd:J

.field public prevPickedCountOfLmkd:J

.field public prevPreviousCountOfLmkd:J

.field public prevSeedbedCountOfLmkd:J

.field public prevTinyCycleBServiceCountOfLmkd:J

.field public prevTinyCycleCachedMinCountOfLmkd:J

.field public prevTinyCyclePickedCountOfLmkd:J

.field public prevTinyCyclePreviousCountOfLmkd:J

.field public prevTinyCycleSeedbedCountOfLmkd:J

.field public prevTotalCountOfLmkd:J

.field public previousKillCount:J

.field public previousKillOccurredCount:I

.field public seedbedKillCount:J

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public tinyCycleBServiceKillCount:J

.field public tinyCycleCachedMinKillCount:J

.field public tinyCyclePickedKillCount:J

.field public tinyCyclePreviousKillCount:J

.field public tinyCycleSeedbedKillCount:J

.field public totalKillCount:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 2808
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    .line 2809
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 2810
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 2811
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    .line 2812
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 2813
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 2814
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 2815
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 2816
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 2818
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 2819
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 2820
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->seedbedKillCount:J

    .line 2821
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 2822
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 2823
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    .line 2825
    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v5, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    .line 2826
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v7, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    .line 2827
    iget-wide v9, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v9, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleSeedbedCountOfLmkd:J

    .line 2828
    iget-wide v11, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    .line 2829
    iget-wide v13, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v13, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    .line 2830
    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    move-wide v15, v3

    .line 2831
    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    .line 2832
    iget-wide v1, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    .line 2834
    iput-wide v5, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 2835
    iput-wide v7, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 2836
    iput-wide v9, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    .line 2837
    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 2838
    iput-wide v13, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    move-wide v1, v15

    .line 2839
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    const/4 v3, 0x0

    .line 2841
    iput v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 2842
    iput v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    const-wide/16 v3, 0x0

    .line 2844
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 2845
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    .line 2846
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 2847
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 2848
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 2850
    iput-wide v7, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    .line 2851
    iput-wide v9, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleSeedbedCountOfLmkd:J

    .line 2852
    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    .line 2853
    iput-wide v13, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    .line 2854
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    move-object/from16 v1, p2

    .line 2856
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    return-void
.end method


# virtual methods
.method public fillTinyCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 4

    .line 2957
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 2958
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleSeedbedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    .line 2959
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 2960
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 2961
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 2963
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2964
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TinyCycle currentKillCountLmkd : (cPr : "

    .line 2965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSv : "

    .line 2966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPi : "

    .line 2967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSb : "

    .line 2968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cCm : "

    .line 2969
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ActivityManager_kpm"

    .line 2970
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    .line 2974
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleSeedbedCountOfLmkd:J

    .line 2975
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    .line 2976
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    .line 2977
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    return-void
.end method

.method public getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 4

    .line 2860
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 2861
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 2862
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleSeedbedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    .line 2863
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 2864
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 2865
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 2866
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 2867
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 2869
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Cycle currentKillCountLmkd : (cE : "

    .line 2871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPr : "

    .line 2873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSv : "

    .line 2875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPi : "

    .line 2877
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSb : "

    .line 2879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cCm : "

    .line 2881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 2883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ActivityManager_kpm"

    .line 2884
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    .line 2888
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    .line 2889
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleSeedbedCountOfLmkd:J

    .line 2890
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    .line 2891
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    .line 2892
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    .line 2893
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    .line 2894
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    return-void
.end method

.method public getLmkdPreviousAndBServiceKillCount(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 6

    .line 2898
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 2899
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 2900
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->seedbedKillCount:J

    .line 2901
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 2902
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 2903
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2906
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 2907
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v0, :cond_0

    .line 2908
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2bc

    invoke-static {v0, v1, v4}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 2910
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2911
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 2912
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v0, :cond_1

    .line 2913
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x320

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 2916
    :cond_1
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "prevKillCount : (pE : "

    .line 2918
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pPr : "

    .line 2920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pSv : "

    .line 2922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pPi : "

    .line 2924
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pSb : "

    .line 2926
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pCm : "

    .line 2928
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 2930
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager_kpm"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2932
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "currentKillCount : (cE : "

    .line 2933
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cPr : "

    .line 2935
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cSv : "

    .line 2937
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cPi : "

    .line 2939
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cSb : "

    .line 2941
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->seedbedKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cCm : "

    .line 2943
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_2
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 2949
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 2950
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    .line 2951
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 2952
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 2953
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    return-void
.end method
