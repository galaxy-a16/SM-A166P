.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerSettings;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0, p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->$r8$lambda$Le8RkourM3Pe8yeG7ipsSYCO534(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method
