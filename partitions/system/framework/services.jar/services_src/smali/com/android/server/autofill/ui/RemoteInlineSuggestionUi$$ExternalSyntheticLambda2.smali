.class public final synthetic Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

.field public final synthetic f$1:Lcom/android/internal/view/inline/IInlineContentCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/view/inline/IInlineContentCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/view/inline/IInlineContentCallback;

    invoke-static {v0, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->$r8$lambda$G4LRRPerXFMWQpTWmE2ifuCu75w(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/internal/view/inline/IInlineContentCallback;)V

    return-void
.end method
