.class public Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;
.super Lcom/android/server/display/mode/RefreshRateToken;
.source "RefreshRateController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateController;


# direct methods
.method public static synthetic $r8$lambda$qYggRhKy2S8pr20P0TTJINevHVc(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;->lambda$accept$0(Lcom/android/server/display/mode/RefreshRateToken;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    invoke-direct {p0}, Lcom/android/server/display/mode/RefreshRateToken;-><init>()V

    return-void
.end method

.method public static synthetic lambda$accept$0(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    return p0
.end method


# virtual methods
.method public accept()V
    .locals 3

    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->-$$Nest$sfgetmRefreshRateTokenController()Lcom/android/server/display/mode/RefreshRateTokenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->getRefreshRateTokens()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->-$$Nest$sfgetmVotesStorage()Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
