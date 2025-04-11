.class public final synthetic Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda2;
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

    check-cast p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    invoke-static {p1}, Lcom/android/server/chimera/QuickSwap;->$r8$lambda$1WKEqdsZl9b5P8BXN4F_k4Pv-qk(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
