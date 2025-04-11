.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;->$r8$lambda$mgpB-y6JT5OX7xafbzN8Yg7MN10(Lcom/android/server/display/mode/RefreshRateToken;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
