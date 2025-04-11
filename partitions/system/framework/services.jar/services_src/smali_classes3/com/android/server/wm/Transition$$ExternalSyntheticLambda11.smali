.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/Transition;->$r8$lambda$MtZUrM8oryd_aPSSS5x5ZtcQcjI(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
