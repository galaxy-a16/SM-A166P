.class public final synthetic Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->$r8$lambda$kX3pZjqIrjdvwnVom_mpjmFoHrM(Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
