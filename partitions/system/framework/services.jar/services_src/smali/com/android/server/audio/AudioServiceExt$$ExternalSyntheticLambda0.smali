.class public final synthetic Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioServiceExt;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt;

    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/audio/AudioServiceExt;->$r8$lambda$7ZcNO5wQGYTb-m8-GkndLX_GVHI(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V

    return-void
.end method
