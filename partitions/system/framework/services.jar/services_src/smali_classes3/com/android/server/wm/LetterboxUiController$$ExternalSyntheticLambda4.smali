.class public final synthetic Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/WindowContainer$ConfigurationMerger;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LetterboxUiController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LetterboxUiController;Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/LetterboxUiController;

    iput-object p2, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final merge(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/LetterboxUiController;

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/WindowContainer;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/LetterboxUiController;->$r8$lambda$VNb6DPt7dS-FopeSvL71AHjkFqo(Lcom/android/server/wm/LetterboxUiController;Lcom/android/server/wm/WindowContainer;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method
