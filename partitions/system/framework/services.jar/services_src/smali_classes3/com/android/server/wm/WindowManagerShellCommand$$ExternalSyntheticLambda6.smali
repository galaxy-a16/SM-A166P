.class public final synthetic Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LetterboxConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LetterboxConfiguration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/LetterboxConfiguration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/LetterboxConfiguration;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxConfiguration;->setIsDisplayAspectRatioEnabledForFixedOrientationLetterbox(Z)V

    return-void
.end method
