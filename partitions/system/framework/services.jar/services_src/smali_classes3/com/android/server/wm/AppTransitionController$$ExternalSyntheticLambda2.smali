.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/AppTransitionController;->$r8$lambda$IV3lQsLRBN0Y0FXao8K5AcHPdyY(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
