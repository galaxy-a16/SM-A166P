.class public final synthetic Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda3;->f$0:J

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda3;->f$0:J

    check-cast p1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    invoke-static {v0, v1, p1}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->$r8$lambda$Aq4-YjTRTqls3FgluWqL4EDwkU8(JLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V

    return-void
.end method
