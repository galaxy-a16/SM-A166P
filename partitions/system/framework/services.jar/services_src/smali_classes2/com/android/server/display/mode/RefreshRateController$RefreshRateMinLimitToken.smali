.class public Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;
.super Lcom/android/server/display/mode/RefreshRateToken;
.source "RefreshRateController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateController;


# direct methods
.method public static synthetic $r8$lambda$6s9bmR3YmUCSyADFPYyuxk3VF4A(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;->lambda$accept$0(Lcom/android/server/display/mode/RefreshRateToken;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZldwwcfEF5rvfHTCaVvRIfUiAWU(Ljava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;->lambda$accept$2(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mgpB-y6JT5OX7xafbzN8Yg7MN10(Lcom/android/server/display/mode/RefreshRateToken;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;->lambda$accept$1(Lcom/android/server/display/mode/RefreshRateToken;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateController;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    invoke-direct {p0}, Lcom/android/server/display/mode/RefreshRateToken;-><init>()V

    return-void
.end method

.method public static synthetic lambda$accept$0(Lcom/android/server/display/mode/RefreshRateToken;)Z
    .locals 0

    .line 555
    instance-of p0, p0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    return p0
.end method

.method public static synthetic lambda$accept$1(Lcom/android/server/display/mode/RefreshRateToken;)Ljava/lang/Integer;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$accept$2(Ljava/lang/Integer;)Z
    .locals 1

    .line 556
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x3c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public accept()V
    .locals 3

    .line 550
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->-$$Nest$sfgetmDm()Lcom/android/server/display/mode/DisplayModeDirector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->-$$Nest$sfgetmRefreshRateTokenController()Lcom/android/server/display/mode/RefreshRateTokenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateTokenController;->getRefreshRateTokens()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken$$ExternalSyntheticLambda0;-><init>()V

    .line 555
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken$$ExternalSyntheticLambda1;-><init>()V

    .line 556
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda2;-><init>()V

    .line 557
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v0, :cond_1

    int-to-float p0, p0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 560
    invoke-static {p0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 561
    :goto_0
    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->-$$Nest$sfgetmVotesStorage()Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_2
    :goto_1
    return-void
.end method
