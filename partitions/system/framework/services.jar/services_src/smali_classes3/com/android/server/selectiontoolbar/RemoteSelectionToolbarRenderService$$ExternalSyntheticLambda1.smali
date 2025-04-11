.class public final synthetic Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda1;->f$0:I

    iput-wide p2, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget v0, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda1;->f$0:I

    iget-wide v1, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda1;->f$1:J

    check-cast p1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->$r8$lambda$qoZRUE77Hi54zQKwkl08bzOTUCA(IJLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V

    return-void
.end method
