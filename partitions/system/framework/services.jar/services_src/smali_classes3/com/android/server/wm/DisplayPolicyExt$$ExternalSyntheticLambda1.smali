.class public final synthetic Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowState;

    check-cast p1, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->$r8$lambda$oR7nx8DYU6Ui3P2cOsIsdBVbcn8(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/CustomLetterboxEnhancedController;)V

    return-void
.end method
