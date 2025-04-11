.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;
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

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-static {p1}, Lcom/android/server/wm/Transition;->$r8$lambda$vjMFmiX5EX1BmoXGf9G3HYYuRvo(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method
