.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->$r8$lambda$ke1p3sT13NDLJqc9Gg3yofmk8m8(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V

    return-void
.end method
