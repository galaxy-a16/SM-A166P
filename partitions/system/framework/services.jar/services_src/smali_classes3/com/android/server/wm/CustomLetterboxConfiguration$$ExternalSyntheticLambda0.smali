.class public final synthetic Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CustomLetterboxConfiguration;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxConfiguration;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/CustomLetterboxConfiguration;

    iput-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/CustomLetterboxConfiguration;

    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->$r8$lambda$SOQrwYjlftWKLPHPqw0kzwYIKiY(Lcom/android/server/wm/CustomLetterboxConfiguration;ZLcom/android/server/wm/DisplayContent;)V

    return-void
.end method
