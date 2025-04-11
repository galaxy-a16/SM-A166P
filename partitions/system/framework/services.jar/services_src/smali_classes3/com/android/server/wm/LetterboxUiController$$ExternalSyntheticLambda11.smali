.class public final synthetic Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LetterboxConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LetterboxConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/LetterboxConfiguration;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->isCompatFakeFocusEnabled()Z

    move-result p0

    return p0
.end method
