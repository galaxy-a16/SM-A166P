.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/om/ISamsungOverlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iput p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iget v1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    check-cast p1, Landroid/content/om/OverlayInfoExt;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/om/OverlayManagerServiceExt;->$r8$lambda$80vjZaApQDTi7Xbzy27-qdlAfo0(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;Landroid/content/om/OverlayInfoExt;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
