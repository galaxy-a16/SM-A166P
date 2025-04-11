.class public Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;
.super Ljava/lang/Object;
.source "RefreshRatePolicyLogger.java"


# instance fields
.field public mHistory:Lcom/samsung/android/core/SystemHistory;

.field public mLastRequester:Lcom/android/server/wm/WindowState;

.field public mModeId:I

.field public mRefreshRate:F

.field public mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/RefreshRatePolicyLogger;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHistory(Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)Lcom/samsung/android/core/SystemHistory;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/RefreshRatePolicyLogger;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->this$0:Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mTag:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/core/SystemHistory;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    invoke-virtual {p1, p0}, Lcom/samsung/android/core/SystemHistory;->enableLog(Z)V

    return-void
.end method


# virtual methods
.method public getLog()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "modeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/android/server/wm/WindowState;IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    iput p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {p0}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->getLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
