.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final synthetic f$1:Landroid/content/om/OverlayInfoExt;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/om/ISamsungOverlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$1:Landroid/content/om/OverlayInfoExt;

    iput p3, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$2:I

    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$3:Landroid/content/om/ISamsungOverlayCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$1:Landroid/content/om/OverlayInfoExt;

    iget v2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$2:I

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;->f$3:Landroid/content/om/ISamsungOverlayCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/om/OverlayManagerServiceExt;->$r8$lambda$4oO032ufcs9lDMx82LGNhYq06_k(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V

    return-void
.end method
