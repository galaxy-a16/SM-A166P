.class public final synthetic Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Lcom/android/server/wm/TaskPositioningController;->$r8$lambda$kSNmg5kGwafieyVNItlGwiqNCmQ(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method
