.class public final synthetic Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/RefreshRateTokenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/RefreshRateTokenController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateTokenController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateTokenController;

    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateTokenController;->removeRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;)V

    return-void
.end method
