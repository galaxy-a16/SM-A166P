.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;
.super Landroid/app/IProcessObserver$Stub;
.source "SemGoodCatchService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 6

    if-eqz p3, :cond_0

    .line 790
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fputmForegroundUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)V

    .line 791
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fgetmForegroundUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$mgetPackageName(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object v2, p1, p2

    .line 793
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$misActiveState(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fgetmPreviousUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fgetmForegroundUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 794
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mForegroundUid = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p3}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fgetmForegroundUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fgetmSemGoodCatchManager(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v0

    const-string v1, "detectads"

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    .line 0
    return-void
.end method
