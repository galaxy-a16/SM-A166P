.class public final synthetic Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/FocusEventDebugView;

.field public final synthetic f$1:Landroid/view/InputEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/FocusEventDebugView;Landroid/view/InputEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/FocusEventDebugView;

    iput-object p2, p0, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Landroid/view/InputEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/FocusEventDebugView;

    iget-object p0, p0, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Landroid/view/InputEvent;

    invoke-static {v0, p0}, Lcom/android/server/input/FocusEventDebugView;->$r8$lambda$yjUbrB97zpLcPzo1PwzXA02u0y4(Lcom/android/server/input/FocusEventDebugView;Landroid/view/InputEvent;)V

    return-void
.end method
