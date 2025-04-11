.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1, p2}, Lcom/android/server/wm/Transition;->$r8$lambda$z43_YmKC0iE8sHsrWADK9GDNNDg(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method
