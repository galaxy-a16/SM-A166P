.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method public synthetic constructor <init>([Landroid/window/ITaskFragmentOrganizer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppTransitionController;->$r8$lambda$UqjggPqib_pQcNLIqKT5YceIpqs([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method
