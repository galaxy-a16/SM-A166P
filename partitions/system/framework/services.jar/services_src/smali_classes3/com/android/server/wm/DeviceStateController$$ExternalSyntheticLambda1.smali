.class public final synthetic Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Ljava/util/function/Consumer;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DeviceStateController;->$r8$lambda$qHNpGvuoyfKubHxrw0PYjFpaqhU(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method
