.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZLandroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerService;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$4:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$3:Z

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$4:Landroid/util/ArraySet;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/om/OverlayManagerService;->$r8$lambda$9bt7Gs-EXFyD9jvaFIGlYJ7o5p4(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZLandroid/util/ArraySet;)V

    return-void
.end method
